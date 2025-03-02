#!/bin/bash
basedir=$(pwd)
package=$1
# if there isn't arguments, exit
if [ $# -eq 0 ]
    then
        echo "No arguments supplied"
        exit 0
fi
# if the package isn't found, exit
url="https://aur.archlinux.org/packages/$package"
if [ "$2" == "--skip" ]; then
    shift
elif curl -s --head  --request GET "$url" | grep "404" > /dev/null 
    then 
    echo "Package not found"
    exit 0 
fi
builddir=$basedir/$package
git clone https://aur.archlinux.org/$package.git
cd $package
read -p "Do you wish to continue? " -n 1 -r
makepkg -sr --skippgpcheck
cp $builddir/*.pkg.* $basedir
cd $basedir
rm -fr $builddir