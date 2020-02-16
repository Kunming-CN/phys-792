.PHONY: all clean info install

CXXFLAGS = -Wall -O2
CXXFLAGS+= $(shell root-config --cflags)
LIBS+= $(shell root-config --libs)

SRC = $(wildcard *.cc)
EXE = $(SRC:.cc=.exe)

all: $(EXE)

%.exe: %.cc
	g++ $(CXXFLAGS) $(LIBS) $< -o $@

info:
	@echo $(SRC)
	@echo $(EXE)
	@echo $(LIBS)
	@echo $(CXXFLAGS)

clean:
	$(RM) *.exe

install:
	mv *.exe ~/bin
