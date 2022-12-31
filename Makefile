
CC = g++
CFLAGS = -Wall -g

all: main.o
	$(CC) $(CFLAGS) -o main main.o
	./main

main.o: main.cpp
	$(CC) $(CFLAGS) -c main.cpp

clean:
	rm -f main.o  main
