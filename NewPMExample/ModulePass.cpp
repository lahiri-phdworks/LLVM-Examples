
#include "llvm/Analysis/CFG.h"
#include "llvm/IR/InstIterator.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/PassManager.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Support/raw_ostream.h"

// only needed for printing
#include <iostream>

using namespace llvm;

namespace {

struct FirstModulePass : public PassInfoMixin<FirstModulePass> {

  PreservedAnalyses run(Module &M, ModuleAnalysisManager &FAM) {
    // What we intend do do in the pass starts here.
    errs() << "Module : " << M.getName().str() << "\n";
    for (auto &F : M) {
      if (F.getName().str() != "main")
        continue;
      errs() << "\tFunction : " << F.getName().str() << "\n";
      for (auto &BB : F) {
        errs() << "\t\tBasic Block : " << BB.getName().str() << "\n";
        for (auto inst = BB.rbegin(); inst != BB.rend(); ++inst) {
          Instruction *I = &*inst;
          auto phi = dyn_cast<PHINode>(&*inst);
          if (phi != NULL)
            errs() << "\t\tPhi Nodes : " << phi << "\n";
        }
      }
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
                [](StringRef Name, ModulePassManager &FPM,
                   ArrayRef<PassBuilder::PipelineElement>) {
                  if (Name == "firstpass") {
                    FPM.addPass(FirstModulePass());
                    return true;
                  }
                  return false;
                });
          }};
}
