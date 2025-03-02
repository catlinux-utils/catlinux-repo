#!/bin/sh

rm -fr x86_64/catlinux.db*
rm -fr x86_64/catlinux.files*


repo-add --sign --verify --key E40E7EDDF0FF9143 x86_64/catlinux.db.tar.gz x86_64/*.pkg.tar.zst

rm -fr x86_64/catlinux.db
cp x86_64/catlinux.db.tar.gz x86_64/catlinux.db
rm -fr x86_64/catlinux.files
cp x86_64/catlinux.files.tar.gz x86_64/catlinux.files

rm -fr x86_64/catlinux.db.sig
cp x86_64/catlinux.db.tar.gz.sig x86_64/catlinux.db.sig
rm -fr x86_64/catlinux.files.sig
cp x86_64/catlinux.files.tar.gz.sig x86_64/catlinux.files.sig

