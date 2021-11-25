CC     := g++
LINKER := g++

SRCDIR := src

TESTDIR := test

SRCFILES = preprocessing.cpp transform.cpp kabsch.cpp
OBJFILES = preprocessing.o transform.o kabsch.o

FLAGS = -std=c++17 -g -Wall -pedantic -O3
EXE = transform

all: $(EXE)

$(EXE): $(OBJFILES)
	$(LINKER) $(FLAGS) $^ -o $(EXE)

$(OBJFILES): $(SRCFILES)
	$(CC) $(FLAGS) -c $^

test: 

clean:
	rm -f *.o
	rm -f $(EXE)

