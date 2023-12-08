CC=gcc

main.out: main

main.o: main.c
	$(CC) -c main.c

get_student_id.o: get_student_id.c get_student_id.h
	$(CC) -c get_student_id.c

main: main.o get_student_id.o
	$(CC) *.o -o main
