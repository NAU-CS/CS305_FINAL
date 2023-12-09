# Makefile 

# Default target
all: main.out

# main.out depends on main
main.out: main
	./main | tee main.out

# main depends on both o files
main: main.o get_student_id.o
	cc -o main main.o get_student_id.o

# main.o depends on main.c
main.o: main.c
	cc -c main.c

# get_student_id.o depends on get_student_id.c
get_student_id.o: get_student_id.c
	cc -c get_student_id.c

# Clean up 
clean:
	rm -f main main.o get_student_id.o main.out
