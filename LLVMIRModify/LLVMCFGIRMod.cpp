#include "llvm/Analysis/CFG.h"
#include "llvm/Analysis/DomTreeUpdater.h"
#include "llvm/Analysis/PostDominators.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/InstIterator.h"
#include "llvm/IR/InstrTypes.h"
#include "llvm/IR/Instruction.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/NoFolder.h"
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

    // // What precursors/pre-passes are needed. Define.
    // LoopInfo &getLI = FAM.getResult<llvm::LoopAnalysis>(F);
    // DominatorTree &DT = FAM.getResult<DominatorTreeAnalysis>(F);
    // PostDominatorTree &PDT = FAM.getResult<PostDominatorTreeAnalysis>(F);

    // /**
    //  * @brief Loop Info Analysis
    //  */
    // if (getLI.empty())
    //   std::cout << "No Loops ! \n\n";
    // else
    //   getLI.print(errs());

    // /**
    //  * @brief Print Dominator Tree to llvm::errs()
    //  */
    // DT.print(errs());

    // What we intend do do in the pass starts here.
    int found = 0;
    LLVMContext &Ctx = F.getContext();
    Instruction *binop = nullptr;
    BasicBlock *referenceBB = nullptr;

    ReversePostOrderTraversal<Function *> RPOT(&F);

    for (auto *BB : RPOT) {
      errs() << "\t\tBasic Block : " << BB->getName().str() << "\n";
      for (auto &I : *BB) {
        errs() << "\tOperation : " << I.getOpcodeName() << "\n";
        // Find the first "Add" Instruction.
        if (strcmp(I.getOpcodeName(), "add") == 0) {
          binop = &I;
          referenceBB = BB;
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
      errs() << "We are modifying from BB: " << referenceBB->getName().str()
             << "\n";
      IRBuilder<NoFolder> Builder(binop);

      Value *lhs = binop->getOperand(0);
      Value *rhs = ConstantInt::get(Type::getInt32Ty(Ctx), 232);

      Value *xpv = Builder.CreateAlloca(llvm::Type::getInt32Ty(Ctx), nullptr,
                                        "new_alloca_1");
      Value *xpv2 = Builder.CreateAlloca(llvm::Type::getInt32Ty(Ctx), nullptr,
                                         "new_alloca_2");

      Value *add1 = Builder.CreateAdd(lhs, rhs, "new_add");
      Value *mul = Builder.CreateMul(lhs, rhs, "new_mul");

      // Modify CFG to add compare and source/target basic blocks.
      Value *icmp1 = Builder.CreateICmpEQ(add1, mul, "equals_compare");

      Instruction *ThenTerm, *ElseTerm;

      SplitBlockAndInsertIfThenElse(icmp1, binop->getNextNode(), &ThenTerm,
                                    &ElseTerm, nullptr);
      Builder.SetInsertPoint(ThenTerm);
      Value *xp1 = Builder.CreateStore(add1, xpv);
      Builder.SetInsertPoint(ElseTerm);
      Value *xp2 = Builder.CreateStore(mul, xpv2);
    }

    // Create a new instruction and replace a new one.
    if (binop != NULL) {
      errs() << "We are modifying this Instruction: " << binop->getName().str()
             << "\n";
      IRBuilder<NoFolder> Builder(binop);

      // Create Constants
      Value *op1 = ConstantInt::get(Type::getInt32Ty(Ctx), 456);
      Value *op2 = ConstantInt::get(Type::getInt32Ty(Ctx), 534);

      Value *newInst = Builder.CreateMul(op1, op2, "mul_1");
      Value *usageInst = Builder.CreateAdd(binop, op2, "new_add_use");

      binop->replaceAllUsesWith(newInst);
      binop->eraseFromParent();
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
