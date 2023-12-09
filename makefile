CC = gcc

main.out: main

main: main.o get_student_id.o
  gcc -o main.o get_student_id.o

main.o: main.c
  gcc -c main.c

get_student_id.o: get_student_id.c get_student_id.h
  gcc -c get_student_id.c

