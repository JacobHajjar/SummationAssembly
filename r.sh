#  Author information
#  Author name: Jacob Hajjar
#  CPSC240-1
#  Author email: hajjarj@csu.fullerton.edu
#  Program name: Summation
rm *.o
rm *.out
nasm -f elf64 -l sum.lis -o sum.o sum.asm

#echo "Assemble clock_speed.asm"
nasm -f elf64 -o clock_speed.o clock_speed.asm

#echo "Assemble read_clock.asm"
nasm -f elf64 -o read_clock.o read_clock.asm


gcc -c -g -Wall -m64 -no-pie -o summation.o summation.c -std=c17

gcc -m64 -no-pie -o a.out -std=c11 summation.o sum.o read_clock.o clock_speed.o

./a.out
