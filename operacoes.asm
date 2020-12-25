;Teste de integracao C/Assembly
;Raphael Rodrigues de Sena

extern printf

section .data
erro:           db             '(Divisao por zero!!!)', 0

section .text
global soma
global subtracao
global multiplicacao
global divisao
global resto

soma:
               xor rax, rax
               add rcx, rdx
               mov rax, rcx
               ret

subtracao:
               xor rax,rax
               sub rcx, rdx
               mov rax,rcx
               ret

multiplicacao:
               xor rax, rax
               imul rcx, rdx
               mov rax, rcx
               ret

divisao:
               mov r8, rdx
               xor rdx, rdx
               mov rax, rcx
               cmp r8, 0
               je  _a
               idiv r8
               ret
               _a:
                              push rbp
                              mov  rbp, rsp
                              sub rsp, 32
                              mov rcx, erro
                              call printf

                              mov rsp, rbp
                              pop rbp

                              xor rax, rax
                              ret

resto:
               cmp rcx, rdx
               jb _b
               cmp rdx, 0
               je _b
               mov r8, rdx
               xor rdx, rdx
               mov rax, rcx
               idiv r8
               mov rax, rdx
               ret
               _b:
                              xor rax, rax
                              ret
