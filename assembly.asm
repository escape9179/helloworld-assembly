   .text
hello_world:
        .ascii "Hello, world!\12\0"
.globl _main
_main:
    pushl   %ebp
    movl    %esp, %ebp
    subl    $8, %esp
    andl    $-16, %esp
    movl    $0, %eax
    movl    %eax, -4(%ebp)
    movl    -4(%ebp), %eax
    call    __alloca
    call    ___main
    movl    $hello_world, (%esp)
    call    _printf
    movl    $0, %eax
    leave
    ret