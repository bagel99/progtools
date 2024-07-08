ESLC=   eslc -X
INC=	-I.. -I../sim -I../../libelf -I../../lib
LIB=	../../lib
DBG=
OPT=	-i	# disable inlining
GCC=	gcc
ARCH:= $(shell uname -m)

# keep intermediate files, for now
.SECONDARY: %.s %.ll

%.out: %.s
	$(GCC) -z noexecstack $< $(LIB)/arch/$(ARCH)/lib.a -o $@

%.s: %.esl
	$(ESLC) -m$(ARCH) $(DBG) $(INC) $(OPT) $< >$@

PROGS=	dis

all:	$(PROGS)

dis:	main.out
	mv main.out dis

clean:
	rm -f *.ll *.s *.o *.out $(PROGS)
