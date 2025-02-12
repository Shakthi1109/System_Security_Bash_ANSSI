#default target
default: all
.PHONY: all
all: exo1.exe

#rule to build hello.exe
exo1.exe: main.c
	gcc -Wall -Werror -o exo1.exe main.c

.PHONY: clean
clean:
	rm -f exo1.exe
