CC     := g++
LINKER := g++

SRCDIR := src

SRCFILES = preprocessing.cpp kabsch.cpp transform.cpp
OBJFILES = preprocessing.o kabsch.o transform.o

FLAGS = -std=c++11
EXE = src/transform

all: $(EXE)

$(EXE): $(OBJFILES)
	$(LINKER) $^ -o $@

$(OBJFILES): $(SRCFILES)
	$(CC) $(LAGS) -c $< -o $@

clean:
	rm -f $(SRCDIR)/*.o
	rm -f $(SRCDIR)/$(EXE)