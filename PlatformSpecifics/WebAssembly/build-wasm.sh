#!/bin/bash

#
# Build OpenSceneGraph libraries for Emscripten.cmake
# Philip Lamb, plamb@mozilla.com
#

# -e = exit on errors; -x = debug
set -e

if [[ -z "${EMSDK}" ]]; then
  echo "The environment variable EMSDK must be defined and point to the root of the Emscripten SDK"
  exit 1
fi

# Get our location.
OURDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
OSG_ROOT="${OURDIR}/../.."
SAVEPWD=${PWD}
cd "${OSG_ROOT}"

OS=`uname -s`
if [ "$OS" = "Darwin" ] ; then
  CPUS=`/usr/sbin/sysctl -n hw.ncpu`
elif [ "$OS" = "Linux" ] || [ "$OS" = "MINGW64_NT-10.0" ] || [ "$OS" = "CYGWIN_NT-6.1" ] ; then
  CPUS=`/usr/bin/nproc`
else
  CPUS=1
fi

# Get version.
VERSION_MAJOR=`sed -En -e 's/SET\(OPENSCENEGRAPH_MAJOR_VERSION ([0-9]+)\)/\1/p' CMakeLists.txt`
VERSION_MINOR=`sed -En -e 's/SET\(OPENSCENEGRAPH_MINOR_VERSION ([0-9]+)\)/\1/p' CMakeLists.txt`
VERSION_PATCH=`sed -En -e 's/SET\(OPENSCENEGRAPH_PATCH_VERSION ([0-9]+)\)/\1/p' CMakeLists.txt`
VERSION="${VERSION_MAJOR}.${VERSION_MINOR}.${VERSION_PATCH}"

BUILD_DIR="build-wasm"
INSTALL_DIR="openscenegraph-${VERSION}-wasm"

if [ -d "${BUILD_DIR}" ]; then
  echo "The build directory '${OSG_ROOT}/${BUILD_DIR}' already exists. Skipping build."
else
  mkdir "${BUILD_DIR}" && cd "${BUILD_DIR}"

  SETTINGS="-s USE_ZLIB=1 -s USE_LIBJPEG=1 -s USE_LIBPNG=1 -s USE_FREETYPE=1 -s USE_PTHREADS=1"
  export CFLAGS="${SETTINGS}"
  export CXXFLAGS="${SETTINGS} -std=c++11"
  export LDFLAGS="${SETTINGS}"

  # Configure.
  emmake cmake .. -G "Unix Makefiles" \
  -DCMAKE_TOOLCHAIN_FILE=${EMSDK}/upstream/emscripten/cmake/Modules/Platform/Emscripten.cmake \
  -DCMAKE_BUILD_TYPE=Release \
  -DOPENSCENEGRAPH_RELEASE_CANDIDATE=0 \
  -DCMAKE_CXX_STANDARD="11" \
  -DOSG_GL1_AVAILABLE:BOOL=OFF \
  -DOSG_GL2_AVAILABLE:BOOL=OFF \
  -DOSG_GLES3_AVAILABLE:BOOL=OFF \
  -DOSG_GLES2_AVAILABLE:BOOL=ON \
  -DOPENGL_PROFILE:STRING="GLES2" \
  -DBUILD_OSG_APPLICATIONS:BOOL=OFF \
  -DBUILD_OSG_EXAMPLES:BOOL=OFF \
  -DOSG_WINDOWING_SYSTEM:STRING="None" \
  -DDYNAMIC_OPENSCENEGRAPH:BOOL=OFF \
  -DDYNAMIC_OPENTHREADS:BOOL=OFF \
  -DCMAKE_INSTALL_PREFIX="${OSG_ROOT}/${BUILD_DIR}/${INSTALL_DIR}" \
  -DCMAKE_DISABLE_FIND_PACKAGE_CURL=1 \
  -DCMAKE_DISABLE_FIND_PACKAGE_DCMTK=1 \
  -DCMAKE_DISABLE_FIND_PACKAGE_GStreamer=1 \
  -DCMAKE_DISABLE_FIND_PACKAGE_Jasper=1 \
  -DCMAKE_DISABLE_FIND_PACKAGE_TIFF=1 \
  -DZLIB_INCLUDE_DIR:PATH="${EM_CACHE}/sysroot/include" \
  -DZLIB_LIBRARY:PATH="${EM_CACHE}/sysroot/lib/wasm32-emscripten/libz.a" \
  -DJPEG_INCLUDE_DIR:PATH="${EM_CACHE}/sysroot/include" \
  -DJPEG_LIBRARY:PATH="${EM_CACHE}/sysroot/lib/wasm32-emscripten/libjpeg.a" \
  -DPNG_PNG_INCLUDE_DIR:PATH="${EM_CACHE}/sysroot/include" \
  -DPNG_LIBRARY:PATH="${EM_CACHE}/sysroot/lib/wasm32-emscripten/libpng.a" \
  -DFREETYPE_INCLUDE_DIR_freetype2:PATH="${EM_CACHE}/sysroot/include/freetype2" \
  -DFREETYPE_INCLUDE_DIR_ft2build:PATH="${EM_CACHE}/sysroot/include/freetype2/freetype" \
  -DFREETYPE_LIBRARY:PATH="${EM_CACHE}/sysroot/lib/wasm32-emscripten/libfreetype.a" \

  # Build.
  emmake make -j ${CPUS}
fi

# Package
cd "${OSG_ROOT}/${BUILD_DIR}"
if [ ! -d "${INSTALL_DIR}" ]; then
  emmake make install
fi
zip --filesync -r "${INSTALL_DIR}.zip" "${INSTALL_DIR}"

