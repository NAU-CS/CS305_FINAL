CC= gcc

main.out: main
	./main | tee main.out

main: main.o get_student_id.o
	$(CC) main.o get_student_id.o -o main
	
main.o: main.c
	$(CC) -c main.c
	
get_student_id.o: get_student_id.c get_student_id.h
	$(CC) -c get_student_id.c
