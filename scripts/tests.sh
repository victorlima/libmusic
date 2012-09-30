#!/bin/sh
#
# These are links that helped me understand the direction I should follow regarding unit tests setup
# in iOS. Be sure to read them closely.
# ----
# http://baolei.tumblr.com/post/32428168156/ios-unit-test-from-command-line-ios6-xcode4-5
# http://longweekendmobile.com/2011/04/17/xcode4-running-application-tests-from-the-command-line-in-ios/
# http://www.gerardcondon.com/blog/2012/09/20/further-jenkins-setup-code-signing/

PROJECT_HOME=`pwd`
PROJECT_PATH=./libmusic/libmusic
PROJECT_NAME="libmusic"

TEST_TARGET="libmusicTests"

DSTROOT=../builds
OBJROOT=../builds
SYMROOT=../builds


echo "[#] - Testing project"
echo "-------------------------------------------------------------"
killall -m -KILL "iPhone Simulator"
xcodebuild  -project ${PROJECT_PATH}/${PROJECT_NAME}.xcodeproj \
			-target ${TEST_TARGET} \
			-configuration Debug \
			-sdk iphonesimulator \
				build \
				TEST_AFTER_BUILD=YES
