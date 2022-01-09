// -------------------------------------------------------------------
// How to write RecursiveASTVisitor based ASTFrontendActions
// Example Source : https://clang.llvm.org/docs/RAVFrontendAction.html
// -------------------------------------------------------------------

#include "clang/AST/ASTConsumer.h"
#include "clang/AST/RecursiveASTVisitor.h"
#include "clang/Frontend/CompilerInstance.h"
#include "clang/Frontend/FrontendAction.h"
#include "clang/Tooling/Tooling.h"
#include <clang/AST/Stmt.h>

using namespace clang;

class FindNamedClassVisitor
    : public RecursiveASTVisitor<FindNamedClassVisitor> {
public:
  explicit FindNamedClassVisitor(ASTContext *Context) : Context(Context) {}

  // IfStmt Visitor
  bool VisitIfStmt(IfStmt *S) {
    llvm::outs() << "If Condition : \n";
    if (S)
      VisitDecl(S->getConditionVariable());
    for (Stmt::child_iterator C = S->child_begin(), CEnd = S->child_end();
         C != CEnd; ++C) {
      llvm::outs() << "\t" << C->getStmtClassName() << "\n";
      if (*C)
        VisitStmt(*C);
    }
    return true;
  }

  // While Stmt Visitor.
  bool VisitWhileStmt(WhileStmt *S) {
    llvm::outs() << "While Condition : \n";
    if (S)
      VisitDecl(S->getConditionVariable());
    for (Stmt::child_iterator C = S->child_begin(), CEnd = S->child_end();
         C != CEnd; ++C) {
      llvm::outs() << "\t" << C->getStmtClassName() << "\n";
      if (*C)
        VisitStmt(*C);
    }
    return true;
  }

  // Declaration Visitor
  bool VisitDecl(clang::Decl *Declaration) {
    Declaration->dump();
    return true;
  }

  // Function Visitor
  bool VisitFunctionDecl(FunctionDecl *F) {
    F->dumpColor();
    llvm::outs() << "Function Decl : \n";
    llvm::outs() << F->getNameAsString() << "\n";
    auto funcBody = F->getBody();
    for (Stmt::child_iterator C = funcBody->child_begin(),
                              CEnd = funcBody->child_end();
         C != CEnd; ++C) {
      llvm::outs() << "\t" << C->getStmtClassName() << "\n";
      if (*C)
        VisitStmt(*C);
    }
    return true;
  }

  // Statement Visitor
  bool VisitStmt(Stmt *S) {
    llvm::outs() << "\t\t" << S->getStmtClassName() << "\n";
    S->dumpColor();
    return true;
  }

private:
  ASTContext *Context;
};

class FindNamedClassConsumer : public clang::ASTConsumer {
public:
  explicit FindNamedClassConsumer(ASTContext *Context) : Visitor(Context) {}

  virtual void HandleTranslationUnit(clang::ASTContext &Context) {
    Visitor.TraverseDecl(Context.getTranslationUnitDecl());
  }

private:
  FindNamedClassVisitor Visitor;
};

class FindNamedClassAction : public clang::ASTFrontendAction {
public:
  virtual std::unique_ptr<clang::ASTConsumer>
  CreateASTConsumer(clang::CompilerInstance &Compiler, llvm::StringRef InFile) {
    return std::make_unique<FindNamedClassConsumer>(&Compiler.getASTContext());
  }
};

int main(int argc, char **argv) {
  if (argc > 1) {
    clang::tooling::runToolOnCode(std::make_unique<FindNamedClassAction>(),
                                  argv[1]);
  }
}