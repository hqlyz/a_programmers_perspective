// shift_left4_rightn:
// movq %rdi, %rax
// salq $4, %rax
// movl %esi, %ecx
// sarl %ecx, %rax  => sarq %cl, %rax

long shift_left4_rightn(long x, long n) {
    x <<= 4;
    x >>= n;
    return x;
}