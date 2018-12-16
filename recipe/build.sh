# Use upstream gopath setup
. ./set_gopath.sh

export CGO_ENABLED=1
export CGO_CFLAGS=-I${PREFIX}/include
export CGO_LDFLAGS="-L${PREFIX}/lib -Wl,-rpath,${PREFIX}/lib"

# Build binaries
./build.sh ssl sasl

# Move binaries in place
mkdir -p $PREFIX/bin
mv bin/* $PREFIX/bin
