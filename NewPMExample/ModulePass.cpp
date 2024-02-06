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
#include <assert.h>
#include <iostream>
using namespace llvm;

void RunOverInstructions(Function &F) {
  std::cout << "Function: " << F.getName().str() << std::endl;
  for (Function::iterator BB = F.begin(); BB != F.end(); BB++) {
    std::cout << "\tBasic Block: " << BB->getName().str()
              << ", size: " << BB->size() << "\n";
    for (BasicBlock::iterator I = BB->begin(); I != BB->end(); I++) {
      std::cout << "\t\tInstTy: " << I->getOpcodeName() << ", [LHS]-> "
                << I->getName().str() << ", #ops : " << I->getNumOperands()
                << "\n";
      auto phi = dyn_cast<PHINode>(I);
      if (phi != NULL)
        errs() << "\t\tPhi Inst: " << phi << "\n";

      // LLVM Instructions
      for (auto &U : I->operands()) {
        if (dyn_cast<llvm::ConstantInt>(U) == NULL)
          std::cout << "\t\t\t operands: " << U.get()->getName().str() << "\n";
        else {
          ConstantInt *IntVal = dyn_cast<llvm::ConstantInt>(U);
          std::cout << "\t\t\t value: " << IntVal->getSExtValue() << "\n";
        }
      }
    }
  }
}

namespace {

struct FirstModulePass : public PassInfoMixin<FirstModulePass> {

  PreservedAnalyses run(Module &M, ModuleAnalysisManager &FAM) {
    // What we intend do do in the pass starts here.
    errs() << "Module : " << M.getModuleIdentifier() << "\n";
    for (auto &F : M) {
      // if (F.getName().str() != "main")
      // continue;
      RunOverInstructions(F);
    }

    // Preserve previous analysis in the pass. Like Dominator information.
    // THe pass we made does not modify that.
    return PreservedAnalyses::all();
  }
};
} // namespace

// Registering the pass.
extern "C" ::llvm::PassPluginLibraryInfo LLVM_ATTRIBUTE_WEAK
llvmGetPassPluginInfo() {
  return {LLVM_PLUGIN_API_VERSION, "ModulePass", "v0.1", [](PassBuilder &PB) {
            PB.registerPipelineParsingCallback(
                [](StringRef Name, ModulePassManager &FPM,
                   ArrayRef<PassBuilder::PipelineElement>) {
                  if (Name == "printpass") {
                    FPM.addPass(FirstModulePass());
                    return true;
                  }
                  return false;
                });
          }};
}
