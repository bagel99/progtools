ESLC=   eslc -X
INC=	-I.. -I../../libelf -I../../lib
LIB=	../../lib
DBG=
OPT=	-Ai	# disable inlining
GCC=	gcc
ARCH:= $(shell uname -m)

# keep intermediate files, for now
.SECONDARY: %.s %.ll

%.out: %.s
	$(GCC) $< $(LIB)/arch/$(ARCH)/lib.a -o $@

%.s: %.esl
	$(ESLC) -m$(ARCH) $(DBG) $(INC) $(OPT) $< >$@

PROGS=	as

all:	$(PROGS)

as:	main.out
	mv main.out as

clean:
	rm -f *.ll *.s *.o *.out $(PROGS)

