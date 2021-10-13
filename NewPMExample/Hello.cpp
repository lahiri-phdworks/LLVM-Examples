
// https://github.com/alexjung/Writing-an-LLVM-Pass-using-the-new-PassManager

#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/CFG.h"
#include "llvm/IR/PassManager.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Support/raw_ostream.h"

// only needed for printing
#include <iostream>

using namespace llvm;

namespace {

struct PrinterPass : public PassInfoMixin<PrinterPass> {

  // The first argument of the run() function defines on what level
  // of granularity your pass will run (e.g. Module, Function).
  // The second argument is the corresponding AnalysisManager
  // (e.g ModuleAnalysisManager, FunctionAnalysisManager)
  PreservedAnalyses run(Function &F, FunctionAnalysisManager &FAM) {

    std::cout << "Function: " << F.getName().str() << std::endl;

    for (Function::iterator BB = F.begin(); BB != F.end(); BB++) {
      std::cout << "\tBasic Block : " << BB->getName().str()
                << ", size : " << BB->size() << "\n";
      for (BasicBlock::iterator I = BB->begin(); I != BB->end(); I++) {
        std::cout << "\t\tOpcodes : " << I->getOpcodeName()
                  << ", #ops : " << I->getNumOperands() << "\n";
        auto phi = dyn_cast<PHINode>(I);
        if (phi != NULL)
          errs() << "\t\tPhi Alloca : " << phi << "\n";
        for (Use &U : I->operands()) {
          Value *v = U.get();
          // std::cout << " " << v;
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
