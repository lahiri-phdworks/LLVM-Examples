## Commands

```bash
# Installing LLVM
git clone https://github.com/llvm/llvm-project.git
cd llvm-project
cmake -S llvm -B build -G "Unix Makefiles" \
  -DLLVM_ENABLE_PROJECTS="llvm;clang;compiler-rt" \
  -DCMAKE_EXPORT_COMPILE_COMMANDS=ON \
  -DCMAKE_BUILD_TYPE=Release \
  -DLLVM_INSTALL_UTILS=ON

cd build
make -j 4
sudo make install

# Runnning this example
cd bin
CC=clang CXX=clang++ cmake ..
make -j 2
./clang_ast ..<other-args>
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
