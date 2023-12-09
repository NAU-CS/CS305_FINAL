# Target for main.out
main.out: main
	./main | tee main.out

# Target for main
main: main.o get_student_id.o
	cc -o main main.o get_student_id.o

# Target for main.o
main.o: main.c
	cc -c main.c

# Target for get_student_id.o
get_student_id.o: get_student_id.c
	cc -c get_student_id.c

