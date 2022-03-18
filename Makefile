all: 		LoadDLL.exe

LoadDLL.o: 	LoadDLL.s
		nasm LoadDLL.s -f elf64                                           

LoadDLL.exe: 	LoadDLL.o                     
		ld LoadDLL.o -o LoadDLL.exe /lib/x86_64-linux-gnu/libc-2.31.so -lc