#default target
default: all
.PHONY: all
all: exo0.exe

#rule to build hello.exe
exo0.exe: main.c
	gcc -Wall -Werror -o exo0.exe main.c

.PHONY: clean
clean:
	rm -f exo0.exe
