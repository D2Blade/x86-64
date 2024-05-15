;primeiro abrir o socket - fechar o socket quando terminar
;TCP SERVER - socket() bind() listen() accept() -> read() write() close()

section .data
        socket equ 41
        af_inet equ 2
        sock_stream equ 1


        close equ 60

section .bss


section .text
        global _start

;sys, arg0,arg1,arg2,arg3,arg4,arg5
;rax, rdi, rsi, rdx, r10, r8, r9
;socket(int domain, int type, int protocol)
_start:
        mov rax, socket         ; abrir socket
        mov rdi, af_inet        ; dominio
        mov rsi, sock_stream    ; tipo
        xor rdx, rdx            ; 0

        syscall

;associar o socket a um ip - 15/05/2024

        mov rax, close          ; Sair
        xor rdi, rdi
        xor rsi, rsi

        syscall 
