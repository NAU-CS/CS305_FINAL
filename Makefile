CC = gcc

main.out: main
	./main | tee main.out

main: main.o get_student_id.o
	${CC} -o main main.o get_student_id.o

main.o: main.c
	${CC} -c main.c

get_student_id.o: get_student_id.c
	${CC} -c get_student_id.c
