extern _printf

global _routine

section .data
    hello_world: db "Hello World!", 10, 0

section .bss
    first_number: resb 1
    second_number: resb 1

section .text
    _routine:
        push ebp
        mov ebp, esp
        push hello_world
        call _printf
        mov eax, 5
        mov esp, ebp
        pop ebp
        ret