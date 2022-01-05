# Clang AST

- [Introduction to the Clang AST](https://clang.llvm.org/docs/IntroductionToTheClangAST.html)
- [How to write RecursiveASTVisitor based ASTFrontendActions.](https://clang.llvm.org/docs/RAVFrontendAction.html)
- [Tutorial for building tools using LibTooling and LibASTMatchers](https://clang.llvm.org/docs/LibASTMatchersTutorial.html)

We follow the `clang LibTooling` approach here.

- [Clang LibTooling](https://clang.llvm.org/docs/LibTooling.html)

## Commands

Installing and building LLVM (LLVM-14/clang-14) from source.
You must have `cmake`, `make`, `cmake-data` installed along with `binutils`.

- [Building LLVM From Source](https://llvm.org/docs/CMake.html)

```bash
# Install NCurses GUI/dev
sudo apt-get install libncurses5-dev libncursesw5-dev

# Installing LLVM
git clone https://github.com/llvm/llvm-project.git
cd llvm-project

cmake -S llvm -B build -G "Unix Makefiles" \
  -DLLVM_ENABLE_PROJECTS="llvm;clang;compiler-rt" \
  -DCMAKE_EXPORT_COMPILE_COMMANDS=ON \
  -DCMAKE_BUILD_TYPE=Release \
  -DLLVM_INSTALL_UTILS=ON

cd build
make -j 4 # Adjust as per your machine.
sudo make install
```

### For Ninja Build.

```bash
# Install NCurses GUI/dev
sudo apt-get install libncurses5-dev libncursesw5-dev

# Installing LLVM
git clone https://github.com/llvm/llvm-project.git
cd llvm-project

cmake -S llvm -B build -G "Ninja" \
  -DLLVM_ENABLE_PROJECTS="llvm;clang;compiler-rt" \
  -DCMAKE_EXPORT_COMPILE_COMMANDS=ON \
  -DCMAKE_BUILD_TYPE=Release \
  -DLLVM_INSTALL_UTILS=ON

cd build
ninja make all
```

# Runnning Examples.

Open the `dir` and cd to `bin`. Run `cmake` followed by `make`.

```
cd bin
CC=clang CXX=clang++ cmake ..
make -j 2
./clang_ast ..<other-args>
```

You will see someting similar to this.

```
-- The C compiler identification is Clang 14.0.0
-- The CXX compiler identification is Clang 14.0.0
-- Check for working C compiler: /usr/local/bin/clang
-- Check for working C compiler: /usr/local/bin/clang -- works
-- Detecting C compiler ABI info
-- Detecting C compiler ABI info - done
-- Detecting C compile features
-- Detecting C compile features - done
-- Check for working CXX compiler: /usr/local/bin/clang++
-- Check for working CXX compiler: /usr/local/bin/clang++ -- works
-- Detecting CXX compiler ABI info
-- Detecting CXX compiler ABI info - done
-- Detecting CXX compile features
-- Detecting CXX compile features - done
-- Performing Test Terminfo_LINKABLE
-- Performing Test Terminfo_LINKABLE - Success
-- Found Terminfo: /usr/lib/x86_64-linux-gnu/libtinfo.so
-- Found ZLIB: /usr/lib/x86_64-linux-gnu/libz.so (found version "1.2.11")
-- Found LibXml2: /usr/lib/x86_64-linux-gnu/libxml2.so (found version "2.9.10")
-- Found Curses: /usr/lib/x86_64-linux-gnu/libcurses.so
-- Configuring done
-- Generating done
-- Build files have been written to: /home/clustfuzz/Documents/LLVM/LLVM-Examples/ClangAST/bin
Scanning dependencies of target clang_ast
[ 50%] Building CXX object CMakeFiles/clang_ast.dir/src/clangIfElseTooling.cpp.o
[100%] Linking CXX executable clang_ast
[100%] Built target clang_ast
```

## Ast Visitor

Check `src/astVisitor.cpp`.

```bash
./clang_ast "int main() {
  int a = 90;
  while (a > 40) {
    a--;
  }
  return 0;
}"
```

### Output :

```
TranslationUnitDecl 0x4746c18 <<invalid sloc>> <invalid sloc>
|-TypedefDecl 0x4747480 <<invalid sloc>> <invalid sloc> implicit __int128_t '__int128'
| `-BuiltinType 0x47471e0 '__int128'
|-TypedefDecl 0x47474f0 <<invalid sloc>> <invalid sloc> implicit __uint128_t 'unsigned __int128'
| `-BuiltinType 0x4747200 'unsigned __int128'
|-TypedefDecl 0x4747868 <<invalid sloc>> <invalid sloc> implicit __NSConstantString '__NSConstantString_tag'
| `-RecordType 0x47475e0 '__NSConstantString_tag'
|   `-CXXRecord 0x4747548 '__NSConstantString_tag'
|-TypedefDecl 0x4747900 <<invalid sloc>> <invalid sloc> implicit __builtin_ms_va_list 'char *'
| `-PointerType 0x47478c0 'char *'
|   `-BuiltinType 0x4746cc0 'char'
|-TypedefDecl 0x478cd18 <<invalid sloc>> <invalid sloc> implicit __builtin_va_list '__va_list_tag[1]'
| `-ConstantArrayType 0x478ccc0 '__va_list_tag[1]' 1
|   `-RecordType 0x47479f0 '__va_list_tag'
|     `-CXXRecord 0x4747958 '__va_list_tag'
`-FunctionDecl 0x478cdc0 <input.cc:1:1, line:10:1> line:1:5 main 'int ()'
  `-CompoundStmt 0x478d0a0 <col:12, line:10:1>
    |-DeclStmt 0x478cf70 <line:3:3, col:13>
    | `-VarDecl 0x478cee8 <col:3, col:11> col:7 used a 'int' cinit
    |   `-IntegerLiteral 0x478cf50 <col:11> 'int' 90
    |-WhileStmt 0x478d050 <line:5:3, line:7:3>
    | |-BinaryOperator 0x478cfe0 <line:5:10, col:14> 'bool' '>'
    | | |-ImplicitCastExpr 0x478cfc8 <col:10> 'int' <LValueToRValue>
    | | | `-DeclRefExpr 0x478cf88 <col:10> 'int' lvalue Var 0x478cee8 'a' 'int'
    | | `-IntegerLiteral 0x478cfa8 <col:14> 'int' 40
    | `-CompoundStmt 0x478d038 <col:18, line:7:3>
    |   `-UnaryOperator 0x478d020 <line:6:5, col:6> 'int' postfix '--'
    |     `-DeclRefExpr 0x478d000 <col:5> 'int' lvalue Var 0x478cee8 'a' 'int'
    `-ReturnStmt 0x478d090 <line:9:3, col:10>
      `-IntegerLiteral 0x478d070 <col:10> 'int' 0
FunctionDecl 0x478cdc0 <input.cc:1:1, line:10:1> line:1:5 main 'int ()'
`-CompoundStmt 0x478d0a0 <col:12, line:10:1>
  |-DeclStmt 0x478cf70 <line:3:3, col:13>
  | `-VarDecl 0x478cee8 <col:3, col:11> col:7 used a 'int' cinit
  |   `-IntegerLiteral 0x478cf50 <col:11> 'int' 90
  |-WhileStmt 0x478d050 <line:5:3, line:7:3>
  | |-BinaryOperator 0x478cfe0 <line:5:10, col:14> 'bool' '>'
  | | |-ImplicitCastExpr 0x478cfc8 <col:10> 'int' <LValueToRValue>
  | | | `-DeclRefExpr 0x478cf88 <col:10> 'int' lvalue Var 0x478cee8 'a' 'int'
  | | `-IntegerLiteral 0x478cfa8 <col:14> 'int' 40
  | `-CompoundStmt 0x478d038 <col:18, line:7:3>
  |   `-UnaryOperator 0x478d020 <line:6:5, col:6> 'int' postfix '--'
  |     `-DeclRefExpr 0x478d000 <col:5> 'int' lvalue Var 0x478cee8 'a' 'int'
  `-ReturnStmt 0x478d090 <line:9:3, col:10>
    `-IntegerLiteral 0x478d070 <col:10> 'int' 0
VarDecl 0x478cee8 <input.cc:3:3, col:11> col:7 used a 'int' cinit
`-IntegerLiteral 0x478cf50 <col:11> 'int' 90
```

## AST Rewrite Actions

Source is `src/clangIfElseTooling.cpp`, add the following to the CMakeLists.txt `set(SOURCE_FILES src/clangIfElseTooling.cpp)`.

```
./clang_ast ../tests/test1.cpp
```
