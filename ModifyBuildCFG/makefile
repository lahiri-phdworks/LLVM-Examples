BUILD_PATH=${HOME}/llvm-project
LLVM_CONFIG=llvm-config
CXX=clang++
# CXX=$(BUILD_PATH)/clang++ -std=c++17 -O0
# removed -g flag, add if needed
CXXFLAGS= `$(LLVM_CONFIG) --cppflags` -fPIC -fno-rtti -std=c++17 -O1
# CXXFLAGS= `$(LLVM_CONFIG) --cppflags` -fPIC -fno-rtti -Xclang -disable-O0-optnone
LDFLAGS=`$(LLVM_CONFIG) --ldflags` -Wl,-znodelete
source=ModifyBuildCFG
passname=modifyncfg

ifdef VERBOSE
.SILENT:
endif

.PHONY: test 

all: build visual runpass test

build: $(source).cpp 
	mkdir -p build
	$(CXX) $(CXXFLAGS) -c $(source).cpp -o build/$(source).cpp.o
	$(CXX) $(CXXFLAGS) -shared $(source).cpp -o build/$(source).cpp.so $(LDFLAGS)

test:
	clang++ -fno-discard-value-names -c -emit-llvm -g -O1 -DMODIFY example1.cpp -o example1.bc

# run: build
# 	clang++ -Xclang -load -Xclang build/$(source).cpp.so -std=c++11 -O1 -DMODIFY example1.cpp -o example 
# 	clang++ -Xclang -load -Xclang build/$(source).cpp.so -std=c++11 -fno-discard-value-names -O1 -DMODIFY -S -emit-llvm example1.cpp -o temp.ll 
# 	clang++ -std=c++11 -fno-discard-value-names -O1 -DMODIFY -S -emit-llvm example1.cpp -o temp.nomod.ll 
# 	./example

visual: build test
	opt -instnamer -mem2reg -enable-new-pm=0 --ipsccp --domtree example1.bc -S -o example1.mem2reg.ll
	opt -dot-cfg-only --view-cfg-only -cfg-func-name=main example1.mem2reg.ll -disable-output -enable-new-pm=0
	opt -dot-dom-only --view-cfg-only -cfg-func-name=main example1.mem2reg.ll -disable-output -enable-new-pm=0

	mv .main.dot cfg_example1.dot
	dot -T pdf cfg_example1.dot -o cfg_example1.pdf
	dot -T pdf domonly.main.dot -o domtree.pdf
	rm -rf *.dot

runpass: test
	opt -load-pass-plugin=build/$(source).cpp.so -enable-new-pm=1 -passes=$(passname) -O0 -S < example1.bc > testout.ll
	rm -rf example1.bc
clean: 
	rm -rf build *.bc *.ll *.pdf *.dot *.a *.o 
