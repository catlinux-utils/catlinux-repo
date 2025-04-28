#!/bin/sh
dirname=$(basename $(pwd))
repo-add --sign --verify --key E40E7EDDF0FF9143 $dirname.db.tar.gz *.pkg.tar.zst
