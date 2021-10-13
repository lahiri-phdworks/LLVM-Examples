
// https://github.com/alexjung/Writing-an-LLVM-Pass-using-the-new-PassManager
// https://www.duskborn.com/posts/llvm-new-pass-manager/

#include "llvm/Analysis/LoopInfo.h"
#include "llvm/Analysis/Passes.h"
#include "llvm/Analysis/PostDominators.h"
#include "llvm/Analysis/Verifier.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/CFG.h"
#include "llvm/IR/PassManager.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Transforms/IPO.h"
#include "llvm/Transforms/Scalar.h"

// only needed for printing
#include <iostream>

using namespace llvm;

namespace {

struct PrinterPass final : public PassInfoMixin<PrinterPass> {

  static llvm::StringRef getPassName() {
    return "Simple Test and Print pass.\n";
  }

  // The first argument of the run() function defines on what level
  // of granularity your pass will run (e.g. Module, Function).
  // The second argument is the corresponding AnalysisManager
  // (e.g ModuleAnalysisManager, FunctionAnalysisManager)
  PreservedAnalyses run(Function &F, FunctionAnalysisManager &FAM) {

    LoopInfo &getLI = FAM.getResult<llvm::LoopAnalysis>(F);
    DominatorTree &DT = FAM.getResult<DominatorTreeAnalysis>(F);

    if (getLI.empty())
      std::cout << "No Loops ! \n\n";
    else
      getLI.print(errs());

    std::cout << "Function: " << F.getName().str() << std::endl;
    for (Function::iterator BB = F.begin(); BB != F.end(); BB++) {
      std::cout << "\tBasic Block : " << BB->getName().str()
                << ", size : " << BB->size() << "\n";
      for (BasicBlock::iterator I = BB->begin(); I != BB->end(); I++) {
        std::cout << "\t\tInstTy : " << I->getOpcodeName()
                  << ", #ops : " << I->getNumOperands() << "\n";
        auto phi = dyn_cast<PHINode>(I);
        if (phi != NULL)
          errs() << "\t\tPhi Alloca : " << phi << "\n";
        for (Use &U : I->operands()) {
          Value *v = U.get();
          if (v != NULL)
            std::cout << "\t\t\t val : " << v->getName().str() << "\n";
        }
      }
    }
    return PreservedAnalyses::all();
  }
};
} // namespace

// This part is the new way of registering your pass
extern "C" ::llvm::PassPluginLibraryInfo LLVM_ATTRIBUTE_WEAK
llvmGetPassPluginInfo() {
  return {// Add the pass lambda
          LLVM_PLUGIN_API_VERSION, "PrinterPass", "v0.1", [](PassBuilder &PB) {
            PB.registerPipelineParsingCallback(
                [](StringRef Name, FunctionPassManager &FPM,
                   ArrayRef<PassBuilder::PipelineElement>) {
                  if (Name == "printpass") {
                    FPM.addPass(PrinterPass());
                    return true;
                  }
                  return false;
                });
          }};
}
