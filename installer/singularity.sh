# NOTE: This script does not resolve dependencies

# Arguments
version=$1

# prepare
pkg_name="singularity-ce-${version}"
tar_file="${pkg_name}.tar.gz"

# hard code
package_dir="singularity"

if [ -e $tar_file ];then
  rm $tar_file
fi

if [ ! -d $package_dir ];then
  mkdir $package_dir
fi

# download tarball
wget "https://github.com/sylabs/singularity/releases/download/v${version}/${tar_file}"
tar -xzf $tar_file
cd $pkg_name

# compile
./mconfig --prefix="${package_dir}/${version}"
make -C ./builddir
sudo make -C ./builddir install

# clean
cd ../
rm -rf $pkg_name
rm -f $tar_file
