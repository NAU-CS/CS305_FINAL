# Makefile for Project
# Author: Jaelenn Johnson
# Student ID: 5845452

CC = gcc

all: main.out

main.out: main.o get_student_id.o
	$(CC) -o main.out main.o get_student_id.o

main.o: main.c
	$(CC) -c main.c

get_student_id.o: get_student_id.c
	$(CC) -c get_student_id.c

clean:
	rm -f *.o main.out

