ESLC=   eslc -X
INC=	-I.. -I../../libsim -I../../libelf -I../../lib
LIB=	../../lib
DBG=
OPT=	-i	# disable inlining
GCC=	gcc -gdwarf-5
ARCH:= $(shell uname -m)

# keep intermediate files, for now
.SECONDARY: %.s %.ll

%.out: %.s
	$(GCC) -z noexecstack $< $(LIB)/arch/$(ARCH)/lib.a -lm -o $@

%.s: %.esl
	$(ESLC) -m$(ARCH) $(DBG) $(INC) $(OPT) $< >$@

PROGS=	sim

all:	$(PROGS)

sim:	main.out
	mv main.out sim

clean:
	rm -f *.ll *.s *.o *.out $(PROGS)
