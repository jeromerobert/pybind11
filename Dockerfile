FROM jeromerobert/wine-mingw64:1.5.1
RUN curl -O http://repo.msys2.org/msys/x86_64/msys2-keyring-1~20210213-2-any.pkg.tar.zst \
 && pacman -U --noconfirm msys2-keyring* \
 && rm msys2-keyring* \
 && pacman-key --populate msys2
RUN pacman --sync --refresh --sysupgrade --noconfirm
RUN pacman -Sy --noconfirm mingw-w64-x86_64-cmake mingw-w64-x86_64-make \
 mingw-w64-x86_64-python-pytest mingw-w64-x86_64-eigen3 mingw-w64-x86_64-boost \
 mingw-w64-x86_64-catch
