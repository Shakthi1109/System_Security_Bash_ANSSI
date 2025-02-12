SUBJECT 01
=======

1- No more brute force!
-----------

The password is too strong to brute force it (Trust me :-) ). So you have to be smarter this time.
The purpose of this exercise is to analyze the binary.


#Hints#

1. What is an elf binary?

The header file <elf.h> defines the format of ELF executable binary files.  Amongst these files are normal ex‐
ecutable files, relocatable object files, core files, and shared objects.

2. How is it built ?

An executable file using the ELF file format consists of an ELF header, followed by a program header table  or
a section header table, or both.  The ELF header is always at offset zero of the file.  The program header ta‐
ble and the section header table's offset in the file are defined in the ELF header.  The two tables  describe
the rest of the particularities of the file. This  header  file  describes the above mentioned headers as C structures and also includes structures for dy‐
namic sections, relocation sections and symbol tables.

ELF object files contain five kinds of information:

ELF header
Section header and different sections
Program header and different program sections
Object code
Debugging information


3. Check the phases of compilation

the following stages of compilation to convert the study.c file to a final executable:

Pre-processing
Compiling (assembly file creation)
Assembler (object file creation)
Linking (links all object files to create an executable)


Resource:
man command
https://www.opensourceforu.com/2020/02/understanding-elf-the-executable-and-linkable-format/

