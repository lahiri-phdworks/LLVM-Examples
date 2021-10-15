
#include "llvm/Analysis/CFG.h"
#include "llvm/Analysis/DomTreeUpdater.h"
#include "llvm/Analysis/PostDominators.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/InstIterator.h"
#include "llvm/IR/Instructions.h"
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
    for (auto &BB : F) {
      errs() << "\t\tBasic Block : " << BB.getName().str() << "\n";
      for (auto &I : BB) {
        errs() << "\tOperation : " << I.getOpcodeName() << "\n";
        binop = dyn_cast<BinaryOperator>(&I);
        if (binop != NULL) {
          errs() << "\t\t Binary Operation : " << binop->getOpcodeName()
                 << "\n";
          found = 1;
          break;
          assert(0);
        }
      }
      if (found == 1)
        break;
    }

    // Use the operands of a binary operator to
    // get the operands of Compare Not Equal Instruction.
    if (binop != NULL) {
      IRBuilder<> IRModIfElse(binop);
      Value *v1 = binop->getOperand(0);
      Value *v2 = binop->getOperand(1);
      Value *Cmp = IRModIfElse.CreateICmpNE(v1, v2, "dummy_compare_op");
      Instruction *ThenTerm, *ElseTerm;
      errs() << Cmp->getValueID() << "\n";
      SplitBlockAndInsertIfThenElse(Cmp, binop, &ThenTerm, &ElseTerm);
      errs() << ThenTerm->getOpcodeName() << "\n";
      errs() << ElseTerm->getOpcodeName() << "\n";
    }

    for (auto &BB : F) {
      errs() << "\t\tBasic Block : " << BB.getName().str() << "\n";
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
