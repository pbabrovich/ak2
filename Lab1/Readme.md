Program wyświetlający "Hello world"

**Kompilacja w systemie Linux:**
>  nasm -f elf32 text.asm

**Linkowanie:**
>  ld -m elf_i386 -o text text.o

**Uruchomienie :**
> ./text
