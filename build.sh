#! /bin/sh
rgbasm -L -o $PWD/$1.o $PWD/$1.asm
rgblink -o $PWD/$1.gb $PWD/$1.o
rgblink -n $PWD/$1.sym $PWD/$1.o
rgbfix -v -p 0xFF $PWD/$1.gb
