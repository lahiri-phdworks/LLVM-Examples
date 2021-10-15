
#include "llvm/Analysis/CFG.h"
#include "llvm/Analysis/DomTreeUpdater.h"
#include "llvm/Analysis/PostDominators.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/InstIterator.h"
#include "llvm/IR/InstrTypes.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/PassManager.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Transforms/Utils/BasicBlockUtils.h"

// only needed for printing
#include <assert.h>
#include <iostream>
using namespace llvm;

namespace {

struct ModifyBuildCFG : public PassInfoMixin<ModifyBuildCFG> {

  PreservedAnalyses run(Function &F, FunctionAnalysisManager &FAM) {

    if (F.getName() != "main")
      return PreservedAnalyses::all();

    // What we intend do do in the pass starts here.
    LoopInfo &getLI = FAM.getResult<llvm::LoopAnalysis>(F);
    DominatorTree &DT = FAM.getResult<DominatorTreeAnalysis>(F);
    PostDominatorTree &PDT = FAM.getResult<PostDominatorTreeAnalysis>(F);
    LLVMContext &Ctx = F.getContext();

    /**
     * @brief Loop Info Analysis
     */
    if (getLI.empty())
      std::cout << "\nNo Loops !\n";
    else
      getLI.print(errs());

    /**
     * @brief Print Dominator Tree to llvm::errs()
     */
    DT.print(errs());

    auto DTU = DomTreeUpdater(DT, PDT, DomTreeUpdater::UpdateStrategy::Lazy);
    int found = 0;

    Instruction *binop = nullptr;
    ReversePostOrderTraversal<Function *> RPOT(&F);

    for (auto *BB : RPOT) {
      errs() << "\t\tBasic Block : " << BB->getName().str() << "\n";
      for (auto &I : *BB) {
        errs() << "\tOperation : " << I.getOpcodeName() << "\n";
        if (strcmp(I.getOpcodeName(), "add") == 0) {
          binop = &I;
          found = 1;
          break;
        }
      }
      if (found == 1)
        break;
    }

    // Use the operands of a binary operator to
    // get the operands of Compare Not Equal Instruction.
    if (binop != NULL) {
      IRBuilder<> Builder(binop);
      Value *lhs = binop->getOperand(0);
      Value *rhs = binop->getOperand(1);
      Value *xpv =
          Builder.CreateAlloca(llvm::Type::getInt32Ty(Ctx), nullptr, "alloca1");
      Value *xpv2 =
          Builder.CreateAlloca(llvm::Type::getInt32Ty(Ctx), nullptr, "alloca2");

      Value *add1 = Builder.CreateAdd(lhs, rhs);
      Value *mul = Builder.CreateMul(lhs, rhs);
      Value *icmp1 = Builder.CreateICmpEQ(add1, mul, "checkeqver");

      Instruction *ThenTerm, *ElseTerm;

      SplitBlockAndInsertIfThenElse(icmp1, binop, &ThenTerm, &ElseTerm,
                                    nullptr);
      Builder.SetInsertPoint(ThenTerm);
      Value *xp1 = Builder.CreateStore(add1, xpv);
      Builder.SetInsertPoint(ElseTerm);
      Value *xp2 = Builder.CreateStore(mul, xpv2);
    }

    ReversePostOrderTraversal<Function *> RPOT1(&F);

    for (auto *BB : RPOT1) {
      errs() << "\t\tBasic Block : " << BB->getName().str() << "\n";
    }

    // Preserve previous analysis in the pass. Like Dominator information.
    // THe pass we made does not modify that.
    return PreservedAnalyses::none();
  }
};
} // namespace

// Registering the pass.
extern "C" ::llvm::PassPluginLibraryInfo LLVM_ATTRIBUTE_WEAK
llvmGetPassPluginInfo() {
  return {LLVM_PLUGIN_API_VERSION, "ModifyBuildCFG", "v0.1",
          [](PassBuilder &PB) {
            PB.registerPipelineParsingCallback(
                [](StringRef Name, FunctionPassManager &FPM,
                   ArrayRef<PassBuilder::PipelineElement>) {
                  if (Name == "modifyncfg") {
                    FPM.addPass(ModifyBuildCFG());
                    return true;
                  }
                  return false;
                });
          }};
}
