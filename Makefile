CC=clang++
CFLAGS=-Wall -pedantic -std=c++11
SOURCES=test.cxx
OBJECTS=$(SOURCES:.cxx=.o)
EXE=test

all: $(SOURCES) $(EXE)

$(EXE): $(OBJECTS)
	$(CC) $(CFLAGS) $(OBJECTS) -o $@

%.o: %.cxx
	$(CC) $(CFLAGS) -c -o $@ $<

.PHONY: clean all

clean:
	rm -f $(OBJECTS) $(EXE)

