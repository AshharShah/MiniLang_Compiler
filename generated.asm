section .data
  printf_format: db '%d', 10, 0
extern printf
global main
section .text
main:
  push 0
  push QWORD [rsp + 0]
  pop rax
  push rax
  mov rbx, 0
  push rbx
  pop rax
  pop rbx
  cmp rax, rbx
  jne label0
  push 2
  pop rax
  mov QWORD [rsp + 18446744073709551608], rax
  push QWORD [rsp + 18446744073709551608]
label0:
