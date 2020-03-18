#! /bin/bash

# OpenSceneGraph packaging script for macOS.
# By Philip Lamb, plamb@mozilla.com

# Get our location.
OURDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
OSG_ROOT="${OURDIR}/../.."
cd ${OURDIR}

SOURCE="${OSG_ROOT}/build/osg-root/usr/local"
SOURCE_DATA="${OSG_ROOT}/../OpenSceneGraph-Data"
#COLLADA_LIB="../../collada-dom2.4/lib/libcollada-dom2.4-dp.0.dylib"

# Get version.
VERSION_MAJOR=`sed -En -e 's/SET\(OPENSCENEGRAPH_MAJOR_VERSION ([0-9]+)\)/\1/p' ${OSG_ROOT}/CMakeLists.txt`
VERSION_MINOR=`sed -En -e 's/SET\(OPENSCENEGRAPH_MINOR_VERSION ([0-9]+)\)/\1/p' ${OSG_ROOT}/CMakeLists.txt`
VERSION_PATCH=`sed -En -e 's/SET\(OPENSCENEGRAPH_PATCH_VERSION ([0-9]+)\)/\1/p' ${OSG_ROOT}/CMakeLists.txt`
VERSION="${VERSION_MAJOR}.${VERSION_MINOR}.${VERSION_PATCH}"

rm -rf Binary/*

echo "Copying Examples"
if ! [ -d Binary/Examples ]; then mkdir -p Binary/Examples ; fi
cp -Rp $SOURCE/share/OpenSceneGraph/bin/* Binary/Examples/

echo "Copying Applications"
if ! [ -d Binary/Bundles ]; then mkdir -p Binary/Bundles ; fi
cp -Rp $SOURCE/bin/osg2cpp.app Binary/Bundles/
cp -Rp $SOURCE/bin/osgarchive.app Binary/Bundles/
cp -Rp $SOURCE/bin/osgconv.app Binary/Bundles/
cp -Rp $SOURCE/bin/osgfilecache.app Binary/Bundles/
#cp -Rp $SOURCE/bin/osgversion.app Binary/Bundles/
cp -Rp $SOURCE/bin/osgviewer.app Binary/Bundles/
cp -Rp $SOURCE/bin/present3D.app Binary/Bundles/
if ! [ -d Binary/Applications ]; then mkdir -p Binary/Applications ; fi
cp -p $SOURCE/bin/osg2cpp.app/Contents/MacOS/osg2cpp Binary/Applications/
cp -p $SOURCE/bin/osgarchive.app/Contents/MacOS/osgarchive Binary/Applications/
cp -p $SOURCE/bin/osgconv.app/Contents/MacOS/osgconv Binary/Applications/
cp -p $SOURCE/bin/osgfilecache.app/Contents/MacOS/osgfilecache Binary/Applications/
cp -p $SOURCE/bin/osgversion Binary/Applications/
cp -p $SOURCE/bin/osgviewer.app/Contents/MacOS/osgviewer Binary/Applications/
cp -p $SOURCE/bin/present3D.app/Contents/MacOS/present3D Binary/Applications/

echo "Copying Frameworks"
if ! [ -d Binary/Frameworks ]; then mkdir -p Binary/Frameworks ; fi
cp -Rp $SOURCE/lib/*.framework Binary/Frameworks/

echo "Copying PlugIns"
if ! [ -d Binary/PlugIns ]; then mkdir -p Binary/PlugIns ; fi
cp -Rp $SOURCE/lib/osgPlugins-${VERSION} Binary/PlugIns/

#echo "Copying dependent libraries"
# cp -L follows links.
#cp -pL $COLLADA_LIB Binary/PlugIns/osgPlugins-${VERSION}

if ! [ -d Binary/Resources ]; then mkdir -p Binary/Resources ; fi
echo "Testing for OpenSceneGraph-Data..."
# Find OpenSceneGraph-Data
if [ -d ${SOURCE_DATA} ]; then
	echo "Found OpenSceneGraph-Data and will copy into Binary/Resources."
	# Determine if it is a RCS copy or not; we don't want the repo info
	if [ -d ${SOURCE_DATA}/.git ]; then
	    git --git-dir=${SOURCE_DATA}/.git --work-tree=Binary/Resources checkout -f -q
	elif [ -d ${SOURCE_DATA}.svn ]; then
		svn export --force ${SOURCE_DATA} Binary/Resources	
	else
		cp -Rp ${SOURCE_DATA} Binary/Resources
	fi
fi


echo "Copying Complete"

echo "Setting ownership and permissions"
sudo chown -R root:admin Binary/
sudo chmod -R g+w,o-w Binary/

echo "Opening Packages.app... please continue in the app with the build command."

open Packages/OpenSceneGraph.pkgproj

read -p "Once package build is complete, press c to continue to signing, or any other key to cancel: " -n 1 -r
echo
if [[ ! $REPLY =~ ^[Cc]$ ]]
then
    exit 1
fi

productsign --sign "3rd Party Mac Developer Installer: " OpenSceneGraph.pkg OpenSceneGraph-${VERSION}-signed.pkg
