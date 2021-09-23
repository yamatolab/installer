#!/bin/sh

pkg_name=$1
version=$2

sed "s/___VERSION/$version/g" templates/$pkg_name > $PACKAGE_DIR_PREFIX/$pkg_name/$version
