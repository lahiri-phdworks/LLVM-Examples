//------------------------------------------------------------------------------
// Tooling sample. Demonstrates:
//
// * How to write a simple source tool using libTooling.
// * How to use RecursiveASTVisitor to find interesting AST nodes.
// * How to use the Rewriter API to rewrite the source code.
//
// Eli Bendersky (eliben@gmail.com)
// This code is in the public domain
// Ported to LLVM 14 (lahiri-phdworks)
// Example modified to add new functionality
//    - Parsing other types.
//    - TranslationUnitDecl Vs HandleTopLevelDecl
//------------------------------------------------------------------------------
#include <clang/AST/ASTFwd.h>
#include <clang/AST/Stmt.h>
#include <sstream>
#include <string>

#include "clang/AST/AST.h"
#include "clang/AST/ASTConsumer.h"
#include "clang/AST/Expr.h"
#include "clang/AST/RecursiveASTVisitor.h"
#include "clang/Basic/SourceManager.h"
#include "clang/Frontend/ASTConsumers.h"
#include "clang/Frontend/CompilerInstance.h"
#include "clang/Frontend/FrontendActions.h"
#include "clang/Rewrite/Core/Rewriter.h"
#include "clang/Tooling/CommonOptionsParser.h"
#include "clang/Tooling/Tooling.h"
#include "llvm/Support/raw_ostream.h"

using namespace clang;
using namespace clang::driver;
using namespace clang::tooling;

static llvm::cl::extrahelp
    CommonHelp(clang::tooling::CommonOptionsParser::HelpMessage);
llvm::cl::OptionCategory ToolingSampleCategory("Tooling Sample options");

// By implementing RecursiveASTVisitor, we can specify which AST nodes
// we're interested in by overriding relevant methods.
class MyASTVisitor : public RecursiveASTVisitor<MyASTVisitor> {
private:
  Rewriter &TheRewriter;

public:
  MyASTVisitor(Rewriter &R) : TheRewriter(R) {}

  bool VisitCXXRecordDecl(CXXRecordDecl *Declaration) {
    llvm::outs() << "\tFound Record/Struct \n";
    Declaration->dump();
    return true;
  }

  bool VisitNamedDecl(clang::NamedDecl *NamedDecl) {
    llvm::outs() << "\tFound Declaration \n"
                 << NamedDecl->getQualifiedNameAsString() << "\n";
    return true;
  }

  bool VisitBinaryOperator(BinaryOperator *E) {
    llvm::outs() << "\tFound BinaryOperator \n";
    const Expr *lhs = E->getLHS();
    const Expr *rhs = E->getRHS();
    (*lhs).dumpColor();
    (*rhs).dumpColor();
    return true;
  }

  bool VisitForStmt(ForStmt *forstmt) {
    llvm::outs() << "\tFound For Loop \n";
    Stmt *cond = forstmt->getCond();
    const char *stmtName = cond->getStmtClassName();
    (*cond).dumpColor();
    return true;
  }

  bool VisitStmt(Stmt *s) {
    // Only care about If/Else statements.
    if (isa<IfStmt>(s)) {
      llvm::outs() << "\tFound If/Else \n";
      IfStmt *IfStatement = cast<IfStmt>(s);
      Stmt *Then = IfStatement->getThen();

      Stmt *cond = IfStatement->getCond();
      const char *stmtName = cond->getStmtClassName();
      (*cond).dumpColor();

      TheRewriter.InsertText(Then->getBeginLoc(), "// the 'if' part\n", true,
                             true);
      TheRewriter.InsertText(Then->getBeginLoc(), "// ", true, true);
      TheRewriter.InsertText(Then->getBeginLoc(), stmtName, true, true);
      TheRewriter.InsertText(Then->getBeginLoc(), " \n", true, true);

      Stmt *Else = IfStatement->getElse();
      if (Else)
        TheRewriter.InsertText(Else->getBeginLoc(), "// the 'else' part\n",
                               true, true);
    }

    // Only care about While statements.
    if (isa<WhileStmt>(s)) {
      llvm::outs() << "\tFound While \n";
      WhileStmt *loopWhile = cast<WhileStmt>(s);
      TheRewriter.InsertText(loopWhile->getBeginLoc(),
                             "// this is a while loop\n", true, true);

      Stmt *condVar = loopWhile->getConditionVariableDeclStmt();
      Stmt *cond = loopWhile->getCond();
      (*cond).dumpColor();
      // VisitStmt(cond);
    }

    return true;
  }

  bool VisitFunctionDecl(FunctionDecl *f) {
    llvm::outs() << "\tFound Function Decl \n";
    // Only function definitions (with bodies), not declarations.
    if (f->hasBody()) {
      Stmt *FuncBody = f->getBody();

      // Type name as string
      QualType QT = f->getReturnType();
      std::string TypeStr = QT.getAsString();

      // Function name
      DeclarationName DeclName = f->getNameInfo().getName();
      std::string FuncName = DeclName.getAsString();

      if (FuncName != "main") {
        llvm::outs() << "Found other functions : " << FuncName << " \n";
      }

      // Add comment before
      std::stringstream SSBefore;
      SSBefore << "// Begin function " << FuncName << " returning " << TypeStr
               << "\n";
      SourceLocation ST = f->getSourceRange().getBegin();
      TheRewriter.InsertText(ST, SSBefore.str(), true, true);

      // And after
      std::stringstream SSAfter;
      SSAfter << "\n// End function " << FuncName;
      ST = FuncBody->getEndLoc().getLocWithOffset(1);
      TheRewriter.InsertText(ST, SSAfter.str(), true, true);
    }

    return true;
  }
};

class MyASTConsumer : public clang::ASTConsumer {
private:
  clang::SourceManager &SourceManager;
  MyASTVisitor Visitor;

public:
  MyASTConsumer(Rewriter &R, clang::SourceManager &SM)
      : SourceManager(SM), Visitor(R) {}

  // Override the method that gets called for each parsed top-level
  // declaration.
  bool HandleTopLevelDecl(DeclGroupRef DR) override {
    for (DeclGroupRef::iterator b = DR.begin(), e = DR.end(); b != e; ++b) {
      // Traverse the declaration using our AST visitor.
      // Only work on the code in main source file, not the headers.
      const auto &FileID = SourceManager.getFileID((*b)->getLocation());
      if (FileID != SourceManager.getMainFileID())
        continue;
      const Decl *D = *b;
      if (const NamedDecl *ND = dyn_cast<NamedDecl>(D))
        llvm::errs() << "top-level-decl: \"" << ND->getNameAsString() << "\"\n";
    }
    return true;
  }

  void HandleTranslationUnit(clang::ASTContext &Context) override {
    auto Decls = Context.getTranslationUnitDecl()->decls();
    for (auto &Decl : Decls) {
      // Only work on the code in main source file, not the headers.
      const auto &thisFileID = SourceManager.getFileID(Decl->getLocation());
      if (thisFileID != SourceManager.getMainFileID())
        continue;
      // Traverse the declaration using our AST visitor.
      Visitor.TraverseDecl(Decl);
      // Decl->dump();
    }
  }
};

// For each source file provided to the tool, a new FrontendAction is created.
class MyFrontendAction : public ASTFrontendAction {
public:
  MyFrontendAction() {}
  void EndSourceFileAction() override {
    SourceManager &SM = TheRewriter.getSourceMgr();
    llvm::errs() << "** EndSourceFileAction for: "
                 << SM.getFileEntryForID(SM.getMainFileID())->getName() << "\n";

    // Now emit the rewritten buffer.
    TheRewriter.getEditBuffer(SM.getMainFileID()).write(llvm::outs());
  }

  std::unique_ptr<ASTConsumer> CreateASTConsumer(CompilerInstance &CI,
                                                 StringRef file) override {
    llvm::errs() << "** Creating AST consumer for: " << file << "\n";
    TheRewriter.setSourceMgr(CI.getSourceManager(), CI.getLangOpts());
    SourceManager &SM = TheRewriter.getSourceMgr();

    // We need both the rewritter and the source manager.
    return std::make_unique<MyASTConsumer>(TheRewriter, SM);
  }

private:
  Rewriter TheRewriter;
};

int main(int argc, const char **argv) {
  // Rewritten to match clang tooling API.
  auto mytool = CommonOptionsParser::create(argc, argv, ToolingSampleCategory);

  if (!mytool) {
    // Fail gracefully for unsupported options.
    llvm::errs() << mytool.takeError();
    return 1;
  }

  CommonOptionsParser &OptionsParser = mytool.get();
  ClangTool Tool(OptionsParser.getCompilations(),
                 OptionsParser.getSourcePathList());

  // ClangTool::run accepts a FrontendActionFactory, which is then used to
  // create new objects implementing the FrontendAction interface. Here we use
  // the helper newFrontendActionFactory to create a default factory that will
  // return a new MyFrontendAction object every time.
  // To further customize this, we could create our own factory class.
  return Tool.run(newFrontendActionFactory<MyFrontendAction>().get());
}