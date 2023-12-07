main.out: main
  ./main | tee main.out

main: main.o get_student_id.o
  gcc -Wall -o main.o get_student_id.o

main.o: main.c get_student_id.h
  gcc -Wall -c main.c

get_student_id.o: get_student_id.c get_student_id.h
  gcc -Wall -c get_student_id.c

clean:
  rm -f main *.o main.out

run:
  main.out

rebuild:
  clean all
