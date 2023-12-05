CC = gcc

main.out: main
	${CC} ./main|tee main.out

main: main.o get_student_id.o
	${CC} -o

main.o: main.c
	${CC} -c

get_student_id.o: get_student_id.c
	${CC} -c
