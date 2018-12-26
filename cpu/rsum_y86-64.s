rsum:
    andq %rsi, %rsi
    jg loop
    xorq %rax, %rax
    ret
loop:
    pushq %rbx
    irmovq $8, %r8
    irmovq $1, %r9
    mrmovq (%rdi), %rbx
    subq %r9, %rsi
    addq %r8, %rdi
    call rsum
    addq %rbx, %rax
    popq %rbx
    ret