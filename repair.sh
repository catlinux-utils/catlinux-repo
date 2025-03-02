#!/bin/sh
rm -fr x86_64/catlinux.db
cp x86_64/catlinux.db.tar.gz x86_64/catlinux.db
rm -fr x86_64/catlinux.files
cp x86_64/catlinux.files.tar.gz x86_64/catlinux.files

rm -fr x86_64/catlinux.files.tar.gz.old x86_64/catlinux.db.tar.gz.old

