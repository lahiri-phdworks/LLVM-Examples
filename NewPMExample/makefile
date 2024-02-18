# Modify this based on where you cloned and build llvm,
BUILD_PATH=${HOME}/llvm-project

# Binaries.
LLVM_CONFIG=${BUILD_PATH}/build/bin/llvm-config
CXX=${BUILD_PATH}/build/bin/clang++
OPT=${BUILD_PATH}/build/bin/opt

# Flags
CXXFLAGS= `$(LLVM_CONFIG) --cppflags` -fPIC -fno-rtti -std=c++17 -O1
LDFLAGS=`$(LLVM_CONFIG) --ldflags` -Wl,-znodelete

# LLVM Pass
source=FunctionPass
passname=printpass

ifdef VERBOSE
.SILENT:
endif

.PHONY: test 

all: build test runpass

build: $(source).cpp 
	mkdir -p build
	$(CXX) $(CXXFLAGS) -c $(source).cpp -o build/$(source).cpp.o
	$(CXX) $(CXXFLAGS) -shared $(source).cpp -o build/$(source).cpp.so $(LDFLAGS)

test:
	$(CXX) -c -emit-llvm -O1 example1.cpp -o example1.bc
	${OPT} -p instnamer,mem2reg example1.bc -S -o example.ll
	rm -rf example1.bc

runpass: test
	${OPT} -load-pass-plugin=build/$(source).cpp.so -disable-output -passes=$(passname) < example.ll
	
clean: 
	rm -rf build *.bc *.ll *.pdf *.dot *.a *.o 
