main.out: main
    ./main | tee main.out

main: get_student_id.o main.o
    cc -o main get_student_is.o main.o

  main.o: main.c
      cc -c main.c 

gwt_student_id.0:get_student_id.c
      cc -c get_student_id.c
