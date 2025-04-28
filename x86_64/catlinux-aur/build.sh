#!/bin/bash
dirname=$(basename $(pwd))

GPGKEY="E40E7EDDF0FF9143" PACKAGER="ThePolishCat <damianadam000@gmail.com>" aur sync --repo $dirname --root . --noview --sign --rebuild --clean $@
