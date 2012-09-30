#!/bin/sh

PROJECT_HOME=`pwd`
PROJECT_PATH=./libmusic/libmusic
PROJECT_NAME="libmusic"

BUILD_TARGET="libmusic"

DSTROOT=../builds
OBJROOT=../builds
SYMROOT=../builds

#set -e

export DSTROOT
echo "[#] - Building project"
echo "-------------------------------------------------------------"
xcodebuild -project ${PROJECT_PATH}/${PROJECT_NAME}.xcodeproj \
		   -target ${BUILD_TARGET} \
		   	clean build \
  		   		DSTROOT=${DSTROOT} \
  		   		SYMROOT=${SYMROOT} \
  		   		OBJROOT=${OBJROOT}