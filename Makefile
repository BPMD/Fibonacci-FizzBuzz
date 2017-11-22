CC=gcc
EXE=FUZZ
INCLUDE= ./include
CFLAGS=-I $(INCLUDE)

SRC = ./src
OBJ = $(SRC)/App_Main.o  \
      $(SRC)/Fibonacci.o \
      $(SRC)/Prime.o

%.o: %.c 
	$(CC) -c -o $@ $< $(CFLAGS)

$(EXE): $(OBJ)
	gcc -o $@ $^ $(CFLAGS)

all: $(EXE)

.PHONY: clean

clean:
	rm -f $(SRC)/*.o 
	rm -f $(EXE)

