# LLVM-Examples

LLVM Examples and Code samples. LLVM Passes. Based on [llvm-project](https://github.com/llvm/llvm-project)
Clone the LLVM Repository in the `$HOME` directory or change the `paths` in the MAKEFILEs to point to the build directory of the `LLVM`. 

```bash
# Clone
$ git clone https://github.com/llvm/llvm-project.git

# Change directory
$ cd llvm-project

# Install the essential packages with make and cmake.
$ sudo apt-get install make ninja-build cmake cmake-data binutils build-essentials python3 python3-pip

# llvm cmake command 
$ cmake \
    -S llvm -B build -Wno-dev -GNinja \
    -DCMAKE_INSTALL_PREFIX=/usr \
    -DLLVM_ENABLE_PROJECTS="llvm;compiler-rt;clang;clang-tools-extra;lldb;lld;mlir" \
    -DLLVM_BUILD_RUNTIMES="libcxx;libcxxabi" \
    -DLLVM_BINUTILS_INCDIR=$HOME/binutils/include \
    -DCMAKE_BUILD_TYPE=Release \
    -DLLVM_ENABLE_RTTI=ON \
    -DLLVM_ENABLE_FFI=ON \
    -DLLVM_BUILD_TESTS=ON \
    -DLLVM_INSTALL_UTILS=ON

$ cd build && ninja -j10 all
```

## Installing from Docker

Check `build` commands in the `Dockerfile` for more information
on installing `LLVM` on local machine.

```
$ docker build -f DockerFile -t prodrelworks/llvm-examples:latest .
$ docker run --name llvm-examples --ulimit stack=10000000:10000000 \
  --cpus=4 --memory=20g -it prodrelworks/llvm-examples:latest
```
## Running Examples. 

```bash
$ cd NewPMExample
$ make clean
$ make all
```

## Examples & Implementations :

- [Source Level Debugging](https://llvm.org/docs/SourceLevelDebugging.html#llvm-dbg-declare)
- [llvm::LoopInfo in the runOnModule](https://lists.llvm.org/pipermail/llvm-dev/2019-April/131534.html)
- [Analysing CFGs with LLVM](https://eli.thegreenplace.net/2013/09/16/analyzing-function-cfgs-with-llvm)
- [A tutorial on how to write a compiler using LLVM](https://tomassetti.me/a-tutorial-on-how-to-write-a-compiler-using-llvm/)

## References & Links :

- [LLVM Get Started](https://llvm.org/docs/GettingStarted.html)
- [Learning Compilers](https://lowlevelbits.org/how-to-learn-compilers-llvm-edition/)
- [Learning Compilers/LLVM: How to start?](https://www.linkedin.com/pulse/learning-compilersllvm-how-start-sushim-shrivastava)
- [LLVM-12 Book](https://github.com/PacktPublishing/Learn-LLVM-12)
- [LLVM Passes](https://llvm.org/docs/Passes.html)
- [LLVM GitHub Monorepo](https://github.com/llvm/llvm-project)
- [Clang AST LLVM](https://clang.llvm.org/docs/IntroductionToTheClangAST.html)
- Legacy Pass Example : See `folder`.

  - [LLVM : What is a pass? Legacy Pass Example](https://llvm.org/docs/WritingAnLLVMPass.html#introduction-what-is-a-pass)

- New LLVM Pass Manager :

  - [LLVM : New Pass Manager](https://llvm.org/docs/NewPassManager.html)
  - [LLVM : Writing a new pass](https://llvm.org/docs/WritingAnLLVMNewPMPass.html)

- For function paraments as operands, you can get it get it via Function Argumentslist()

  - [Function Parameters LLVM Function](https://llvm.org/doxygen/group__LLVMCCoreValueFunctionParameters.html)
  - [Value Reference](http://llvm.org/doxygen/classllvm_1_1Value.html)
  - [User class : for getnumoperands, getoperands](https://llvm.org/doxygen/classllvm_1_1User.html)

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
  - [Inspection & Traversal Routines over CFG](https://llvm.org/docs/ProgrammersManual.html#basic-inspection-and-traversal-routines)
  - [LLVM : Making simple manipulations](https://llvm.org/docs/ProgrammersManual.html#making-simple-changes)
