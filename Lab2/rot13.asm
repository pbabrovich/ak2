bits 32
section .text
global _start

section .data
  msg_enter	db	"Type message:  "
  length	equ	$ - msg_enter
  user_text: times 100 db 0
  user_text_length equ	$ - user_text
  show_result	db	"Result in Rot13: "
  result_length	equ	$ - show_result

_start:
  mov eax, 4 ;
  mov ebx, 1 ; deskryptor
  mov ecx, msg_enter
  mov edx, length
  int 0x80
  
  mov eax, 3
  mov ebx, 0
  mov ecx, user_text
  mov edx, user_text_length
  int 0x80
  
  mov eax, 4
  mov ebx, 1
  mov ecx, show_result
  mov edx, result_length
  int 0x80

  mov ecx, 0
  
  mov edi, user_text
  
  loop:
  movzx ax, [user_text+ecx]

  cmp ax, 10
  je exit_loop

  cmp ax, 97
  jl upper_case

  cmp ax, 122
  jg inc

  add ax, 13
  cmp ax, 123
  jl write

  add ax, -26
  jmp write
  
  inc:
  inc ecx
  jmp loop

  write:
  mov byte[edi+ecx], al
  jmp inc

  upper_case:

  cmp ax, 65
  jl inc

  cmp ax, 90
  jg inc

  add ax, 13
  cmp ax, 91
  jl write

  add ax, -26
  jmp write

  
  exit_loop:
  mov eax, 4
  mov ebx, 1
  mov ecx, user_text
  mov edx, user_text_length
  int 0x80
  
  mov eax, 1
  int 0x80
  
  



