section .data
    hello db 'hello world', 0   ; Null-terminated string


section .text
    global _start          ; Entry point for the program

_start:
    ; Write the string to stdout
    mov eax, 4            ; syscall number for sys_write
    mov ebx, 1            ; file descriptor 1 is stdout
    mov ecx, hello        ; pointer to the string
    mov edx, 5            ; length of the string
    int 0x80              ; call kernel

    ; Exit the program
    mov eax, 1            ; syscall number for sys_exit
    xor ebx, ebx          ; exit code 0
    int 0x80              ; call kernel
    