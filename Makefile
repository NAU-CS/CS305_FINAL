#MakeFile

# definition of C compiler as CC=
CC = gcc

# main.out
main.out: main
	./main |tee main.out

# main
main: main.o get_student_id.o
	$(CC) main.o get_student_id.o -o main

# -os 
get_student_id.o: get_student_id.c get_student_id.h
	$(CC) -c -g get_student_id.c

main.o: main.c
	$(CC) -c -g main.c



