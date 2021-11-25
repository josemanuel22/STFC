CC     := g++
LINKER := g++

SRCDIR := src

TESTDIR := test

SRCFILES = ../src/preprocessing.cpp ../src/kabsch.cpp  test.cpp
OBJFILES = preprocessing.o kabsch.o test.o

FLAGS = -std=c++17 -g -Wall -pedantic -O3
EXE = test

test: $(EXE)

$(EXE): $(OBJFILES)
	$(LINKER) $(FLAGS) $^ -o $(EXE)

$(OBJFILES): $(SRCFILES)
	$(CC) $(FLAGS) -c $^

test: 

clean:
	rm -f *.o
	rm -f $(EXE)