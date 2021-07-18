FROM jeromerobert/wine-mingw64:1.5.1
RUN pacman -Sy --noconfirm mingw-w64-x86_64-cmake mingw-w64-x86_64-make \
 mingw-w64-x86_64-python-pytest mingw-w64-x86_64-eigen3 mingw-w64-x86_64-boost \
 mingw-w64-x86_64-catch
