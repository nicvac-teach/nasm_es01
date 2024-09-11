#!/bin/bash

rm -f main main.o

nasm -f elf64 main.asm
ld -o main main.o
./main



