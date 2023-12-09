main.out: main
	./main | tee main.out
	
main: get_student_id.o main.o
	cc get_student_id.o main.o -o main
	
main.o: main.c
	cc -c main.c
	
get_student_id.o: get_student_id.c
	cc -c get_student_id.c
