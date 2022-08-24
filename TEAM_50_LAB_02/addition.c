#define A 30
#define B 10

int add()
{
    int C = A - B;
    return C;
}

// 0000000000000000 <add>:
//    0:   f3 0f 1e fa             endbr64
//    4:   55                      push   %rbp
//    5:   48 89 e5                mov    %rsp,%rbp
//    8:   c7 45 fc 0f 00 00 00    movl   $0xf,-0x4(%rbp)
//    f:   8b 45 fc                mov    -0x4(%rbp),%eax
//   12:   5d                      pop    %rbp
//   13:   c3                      retq

//   0000000000000000 <add>:
//    0:   f3 0f 1e fa             endbr64
//    4:   55                      push   %rbp
//    5:   48 89 e5                mov    %rsp,%rbp
//    8:   c7 45 fc fb ff ff ff    movl   $0xfffffffb,-0x4(%rbp)
//    f:   8b 45 fc                mov    -0x4(%rbp),%eax
//   12:   5d                      pop    %rbp
//   13:   c3                      retq