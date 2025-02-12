#default target
default: all
.PHONY: all
all: exo2.exe

#rule to build hello.exe
exo2.exe: main.c
	gcc -Wall -Werror -o exo2.exe main.c
	@echo "Dont forget to set chmod 6755 to exo2.exe and only root for vault."

.PHONY: clean
clean:
	rm -f exo2.exe
