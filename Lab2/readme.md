 ## Laboratorium 2 z OIAK
 
 Należało napisać program w języku assemblera w architekturze 32-bitowej na platformę Linux. Program powinien zapytać użytkownika o podanie zdania, wczytać je ze standardowego wejścia, a następnie wyświetlić na standardowe wyjście to samo zdanie zaszyfrowane za pomocą ROT13.

**Kompilacja w systemie Linux:**
>  nasm -f elf32 rot13.asm

**Linkowanie:**
>  ld -m elf_i386 -o rot13 rot13.o

**Uruchomienie :**
> ./rot13

Po uruchomieniu programu należy podać zdanie do kodowania. W wyniku dostajemy zakodowane zdanie (ROT13).
