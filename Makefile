
CXX = g++
CXXFLAGS = -g -std=c++11 -Wall

SRC=$(wildcard *.cpp)
OBJ=$(SRC:%.cpp=%.o)
BIN=main

run: all
	./main

all: $(OBJ)
	$(CXX) -o $(BIN) $^

%.o: %.c
	$(CXX) $@ -c $<

main.o: main.cpp
	$(CXX) $(CXXFLAGS) -c main.cpp

clean:
	rm -f *.o
	rm $(BIN)
