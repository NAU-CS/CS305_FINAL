output: main.o get_student_id.o
    gcc get_student_id.o main.o -o main.out
    @echo up to date

main.o: main.c
    gcc -c main.c

get_student_id.o: get_student_id.c get_student_id.h
    gcc -c get_student_id.c
