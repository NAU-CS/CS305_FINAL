CC=gcc

main.out: main
	./main | tee main.out

main: get_student_id.o main.o
	${CC} get_student_id.o main.o -o main

main.o: main.c
	${CC} -c main.c

get_student_id.o: get_student_id.c
	${CC} -c get_student_id.c
