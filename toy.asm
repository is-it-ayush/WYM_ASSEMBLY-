section .bss
  ; variables go here

section .data
  ; constants go here
  chad: db "Holy Moly, Assembly is cool. <3", 10
  chadLen: equ $-chad

section .text
  global _start

  _start:
    ; we need to set registers up in
    ; a certain way to perform operations.
    mov rax, 1
    mov rdi, 1
    mov rsi, chad
    mov rdx, chadLen
    syscall

    ; exit
    mov rax, 60
    mov rdi, 69
    syscall
