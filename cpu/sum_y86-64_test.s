# Execution begins at address 0
    .pos 0
    irmovq stack, %rsp
    call main
    halt

# Array of 4 elements
    .align 8
array:
    .quad 0x000d000d000d
    .quad 0x00c000c000c0
    .quad 0x0b000b000b00
    .quad 0xa000a000a000

main:
    irmovq array, %rdi
    irmovq $4, $rsi
    call sum
    ret

# long sum(long *start, long count)
# start in %rdi, count in %rsi
sum:
    irmovq $8, %r8
    irmovq $1, %r9
    xorq %rax, %rax
    andq %rsi, %rsi
    jmp test
loop:
    mrmovq (%rdi), %r10
    addq %r10, %rax
    addq %r8, %rdi
    subq %r9, %rsi
test:
    jne loop
    ret

# Stack starts here and grows to lower addresses
    .pos 0x200
stack: