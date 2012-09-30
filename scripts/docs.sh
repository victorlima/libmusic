#!/bin/sh
#
# Generates a doxygen documentation of the project
# 
# Please refer to these links on ow to generate and work with objective-c + doxygen + xcode
# http://www.duckrowing.com/2010/03/18/documenting-objective-c-with-doxygen-part-i/
# http://www.duckrowing.com/2010/03/18/documenting-objective-c-with-doxygen-part-ii/

DOXYGEN_BIN=/Applications/Doxygen.app/Contents/Resources/doxygen

echo "[#] - Generating the documentation for the project libmusic"
$DOXYGEN_BIN ./conf/libmusic.doxyfile
