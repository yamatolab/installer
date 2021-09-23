#!/bin/sh

pkg_name=$1
template_file="_template"
tmp_file="tmp"

if [ -e $tmp_file ];then
  rm $tmp_file
fi

sed "s/__PACKAGE_NAME/$pkg_name/g" $template_file > $tmp_file
sed "s/__PKG_ROOT/__PKG_ROOT/g" $tmp_file > templates/$pkg_name

rm $tmp_file
