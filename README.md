# LLVM-Examples

LLVM Examples and Code samples. LLVM Passes.

## Installing from Docker

```
$ docker build -f DockerFile -t prodrelworks/llvm-examples:latest .
$ docker run --name llvm-examples --ulimit stack=10000000:10000000 --cpus=4 --memory=20g -it prodrelworks/llvm-examples:latest
```

## Examples & Implementations :

- [llvm::LoopInfo in the runOnModule](https://lists.llvm.org/pipermail/llvm-dev/2019-April/131534.html)

## References & Links :

- [LLVM Get Started](https://llvm.org/docs/GettingStarted.html)
- [LLVM-12 Book](https://github.com/PacktPublishing/Learn-LLVM-12)

- Legacy Pass Example : See `folder`.

  - https://llvm.org/docs/WritingAnLLVMPass.html#introduction-what-is-a-pass

- New LLVM Pass Manager :

  - https://llvm.org/docs/NewPassManager.html
  - https://llvm.org/docs/WritingAnLLVMNewPMPass.html

- For function paraments as operands, you can get it get it via Function Argumentslist()

  - Reference : https://llvm.org/doxygen/group__LLVMCCoreValueFunctionParameters.html
  - Value reference : http://llvm.org/doxygen/classllvm_1_1Value.html
  - User class : for getnumoperands, getoperands etc. https://llvm.org/doxygen/classllvm_1_1User.html

- Some other differences are listed here. Even C++ one is quadratic probed.

  - https://llvm.org/docs/ProgrammersManual.html#llvm-adt-densemap-h

- Where is "emit-llvm"? ASMWritter `AsmWritter.cpp`.

  - https://github.com/llvm-mirror/llvm/blob/master/tools/gold/gold-plugin.cpp#L232
  - https://www.cs.cornell.edu/~asampson/blog/llvm.html

- `LLVM Data Structures` :

  - https://llvm.org/docs/ProgrammersManual.html#picking-the-right-data-structure-for-a-task

- `LLVM RTTI` :

  - https://llvm.org/docs/HowToSetUpLLVMStyleRTTI.html#id1

- Inspection & Traversal over `CFG` in `IR` :

  - https://llvm.org/docs/ProgrammersManual.html#basic-inspection-and-traversal-routines
  - https://llvm.org/docs/ProgrammersManual.html#making-simple-changes

```

```
