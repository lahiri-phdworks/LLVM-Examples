BUILD_PATH=${HOME}/llvm-project
LLVM_CONFIG=llvm-config
CXX=clang++
# CXX=$(BUILD_PATH)/clang++ -std=c++17 -O0
# removed -g flag, add if needed
CXXFLAGS= `$(LLVM_CONFIG) --cppflags` -fPIC -fno-rtti -std=c++17 -O1
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
	opt -load build/Hello.cpp.so -enable-new-pm=0 -hello < example11.bc > /dev/null
	
clean: 
	rm -rf build 
