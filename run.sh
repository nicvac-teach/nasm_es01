#!/bin/bash

nasm -f elf64 main.asm
ld -o main main.o
./main

rm -f main main.o

