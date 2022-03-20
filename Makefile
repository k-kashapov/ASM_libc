all: 		LoadDLL.exe

LoadDLL.o: 	LoadDLL.s
		nasm LoadDLL.s -f elf64                                           

LoadDLL.exe: 	LoadDLL.o                     
		ld LoadDLL.o -o LoadDLL.exe /lib/x86_64-linux-gnu/libc-2.31.so --dynamic-linker /lib64/ld-linux-x86-64.so.2