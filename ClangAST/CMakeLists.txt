cmake_minimum_required(VERSION 3.1.4)
project(clang_ast)

set(LLVM_PATH $ENV{HOME}/llvm-project/llvm/build)
find_package(LLVM REQUIRED CONFIG)

link_directories(${LLVM_PATH}/lib)
link_directories(${LLVM_PATH}/tools/clang/lib)
include_directories(${LLVM_PATH}/include)
include_directories(${LLVM_PATH}/tools/clang/include)
include_directories(include)

add_definitions(
    -D__STDC_LIMIT_MACROS
    -D__STDC_CONSTANT_MACROS
)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fno-rtti -O3 -std=c++17")

set(SOURCE_FILES src/astUsage.cpp src/clangChecker.cpp)
add_executable(clang_ast ${SOURCE_FILES})

target_link_libraries(
    clang_ast
    clang
    clangAST
    clangASTMatchers
    clangBasic
    clangFrontend
    clangSerialization
    clangDriver
    clangParse
    clangSema
    clangAnalysis
    clangAST
    clangBasic
    clangEdit
    clangLex
    clangTooling
    clangRewrite
    clangStaticAnalyzerFrontend
    clangStaticAnalyzerCheckers
    clangStaticAnalyzerCore
    clangToolingCore
    clangFrontendTool
    clangLex
    clangRewriteFrontend
    clangFormat
)

target_link_libraries(clang_ast
    LLVMX86AsmParser # MC, MCParser, Support, X86Desc, X86Info
    LLVMX86Desc # MC, Support, X86AsmPrinter, X86Info
    LLVMAsmParser # MC, Support, X86Utils
    LLVMX86Info # MC, Support, Target
    LLVMX86Utils # Core, Support
    LLVMipo
    LLVMScalarOpts
    LLVMInstCombine
    LLVMTransformUtils
    LLVMInstrumentation
    LLVMAnalysis
    LLVMTarget
    LLVMOption # Support
    LLVMMCParser # MC, Support
    LLVMMC # Object, Support
    LLVMObject # BitReader, Core, Support
    LLVMBitReader # Core, Support
    LLVMCore # Support
    LLVMSupport
)

include(FindCurses)
target_link_libraries(clang_ast
    pthread
    z
    dl
    ${CURSES_LIBRARIES}
)
