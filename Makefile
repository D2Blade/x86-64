all:
	nasm -f  elf64 *.asm -o httpserver.o
	ld -o http_server *.o

remove:
	rm -fr *.o *.asm *.c *.s *./

