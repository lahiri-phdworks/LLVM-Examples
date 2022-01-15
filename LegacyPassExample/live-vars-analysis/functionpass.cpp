#include "llvm/Analysis/CFG.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/InstIterator.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/PassManager.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Support/raw_ostream.h"

// only needed for printing
#include <iostream>

using namespace llvm;

namespace {

struct FirstFunctionPass : public PassInfoMixin<FirstFunctionPass> {

  PreservedAnalyses run(Function &F, FunctionAnalysisManager &FAM) {
    // What we intend do do in the pass starts here.
    errs() << "Function : " << F.getName().str() << "\n";
    for (auto &BB : F) {
      for (auto inst = BB.rbegin(); inst != BB.rend(); ++inst) {
        Instruction *I = &*inst;
        auto phi = dyn_cast<PHINode>(&*inst);
        errs() << "Phi : " << phi << "\n";
      }

      errs() << "Basic Block : " << BB.getName() << "\n";
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
  return {LLVM_PLUGIN_API_VERSION, "FirstPass", "v0.1", [](PassBuilder &PB) {
            PB.registerPipelineParsingCallback(
                [](StringRef Name, FunctionPassManager &FPM,
                   ArrayRef<PassBuilder::PipelineElement>) {
                  if (Name == "firstpass") {
                    FPM.addPass(FirstFunctionPass());
                    return true;
                  }
                  return false;
                });
          }};
}
