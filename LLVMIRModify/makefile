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
source=LLVMCFGIRMod
passname=modifyncfg

ifdef VERBOSE
.SILENT:
endif

.PHONY: test 

all: build test runpass visual

build: $(source).cpp 
	mkdir -p build
	$(CXX) $(CXXFLAGS) -c $(source).cpp -o build/$(source).cpp.o
	$(CXX) $(CXXFLAGS) -shared $(source).cpp -o build/$(source).cpp.so $(LDFLAGS)

test:
	$(CXX) -fno-discard-value-names -c -emit-llvm -O1 -S example1.cpp -o example1.bc
	${OPT} -instnamer -mem2reg -enable-new-pm=0 -S example1.bc -o original.ll

runpass: test
	${OPT} -load-pass-plugin=build/$(source).cpp.so -enable-new-pm=1 -passes=$(passname) -S < example1.bc > modified.ll
	rm -rf example1.bc

visual: 
	${OPT} -dot-cfg -cfg-func-name=main original.ll -disable-output -enable-new-pm=0 
	mv .main.dot original.dot

	${OPT} -dot-cfg -cfg-func-name=main modified.ll -disable-output -enable-new-pm=0 
	mv .main.dot modified.dot

	dot -T pdf original.dot -o original.dot.pdf
	dot -T pdf modified.dot -o modified.dot.pdf
	rm -rf *.dot 

clean: 
	rm -rf build *.bc *.ll *.pdf *.dot *.a *.o 
