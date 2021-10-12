BUILD_PATH=${HOME}/llvm-project
LLVM_CONFIG=llvm-config
CXX=clang++
# CXX=$(BUILD_PATH)/clang++ -std=c++17 -O0
# removed -g flag, add if needed
CXXFLAGS= `$(LLVM_CONFIG) --cppflags` -fPIC -fno-rtti -std=c++17 -O1 -fno-discard-value-names
# CXXFLAGS= `$(LLVM_CONFIG) --cppflags` -fPIC -fno-rtti -Xclang -disable-O0-optnone
LDFLAGS=`$(LLVM_CONFIG) --ldflags` -Wl,-znodelete

ifdef VERBOSE
.SILENT:
endif

.PHONY: test 

all: build runpass

build: Hello.cpp
	mkdir -p build
	$(CXX) $(CXXFLAGS) -c Hello.cpp -o build/Hello.cpp.o
	$(CXX) $(CXXFLAGS) -shared Hello.cpp -o build/Hello.cpp.so $(LDFLAGS)

runpass: build/Hello.cpp.so
	clang++ -fno-discard-value-names -S -emit-llvm -g -O1 example1.cpp -o example1.ll
	clang++ -fno-discard-value-names -c -emit-llvm -g -O1 example1.cpp -o example1.bc
	opt -load-pass-plugin=build/Hello.cpp.so -disable-output -enable-new-pm=1 -passes=printpass < example1.bc
	
clean: 
	rm -rf build 
