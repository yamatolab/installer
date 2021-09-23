#!/bin/sh

pkg_name=$1
template_file="_template"
tmp_file="tmp"

if [ -e $tmp_file ];then
  rm $tmp_file
fi

sed "s/__PACKAGE_NAME/$pkg_name/g" $template_file > $tmp_file
sed "s/__PKG_ROOT/$PACKAGE_DIR_PREFIX/g" $tmp_file > $pkg_name

rm $tmp_file
