OBJECTS=isprime.o largestfactor.o divides.o

all : solution.exe testisprime.exe testdivides.exe testlargestfactor.exe

%.exe : %.cbl $(OBJECTS) Makefile
	cobc -o $@ -x $< $(OBJECTS)


%.o : %.cbl
	cobc -c $<

clean:
	rm -f *.exe *.o

.PHONY: clean all

# Uncomment to keep .o files.
# .PRECIOUS: %.o
