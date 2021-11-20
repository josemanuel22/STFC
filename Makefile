CC = g++
FLAGS = -std=c++11
EXE = src/transform

all: $(EXE)

$(EXE):
	$(CC) $(FLAGS) $(EXE).cpp -o $(EXE)

clean:
	rm -f *.o
	rm -f $(EXE)
