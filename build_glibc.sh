mkdir -p /glibc/$GLIBC_VERSION
wget http://mirrors.ustc.edu.cn/gnu/libc/glibc-${GLIBC_VERSION}.tar.gz
tar xf glibc-${GLIBC_VERSION}.tar.gz
cd glibc-${GLIBC_VERSION}
mkdir build
cd build
../configure --prefix=/glibc/${GLIBC_VERSION}/32/ --disable-werror --enable-debug=yes --host=i686-linux-gnu
make
make install
cd ../../
rm -rf glibc-${GLIBC_VERSION} && rm glibc-${GLIBC_VERSION}.tar.gz
