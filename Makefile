CC=gcc
FLAGS=-Wall

main.out: main
	./main | tee main.out

main: main.o get_student_id.o
	$(CC) $(FLAGS) -o main main.o get_student_id.o

main.o: main.c
	$(CC) $(FLAGS) -c main.c

get_student_id.o: get_student_id.c
	$(CC) $(FLAGS) -c get_student_id.c
