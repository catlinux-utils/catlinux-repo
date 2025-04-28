#!/bin/bash
GPGKEY="E40E7EDDF0FF9143" PACKAGER="ThePolishCat <damianadam000@gmail.com>" aur sync --repo catlinux --root . --noview --sign --rebuild --clean $@
