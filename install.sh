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