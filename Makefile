CC=gcc

main.out: main
	./main | tee main.out

main.o: main.c
	$(CC) -c main.c

get_student_id.o: get_student_id.c
	$(CC) -c get_student_id.c

main: main.o get_student_id.o
	$(CC) main.o get_student_id.o -o main
