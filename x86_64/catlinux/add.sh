#!/bin/sh
dirname=$(basename $(pwd))
rm -f $dirname.db.*
repo-add --sign --verify --key E40E7EDDF0FF9143 $dirname.db.tar.gz *.pkg.tar.zst
