#!/bin/bash
dirname=$(basename $(pwd))

GPGKEY="E40E7EDDF0FF9143" aur sync --repo $dirname --root . --noview --sign --rebuild --clean $@
