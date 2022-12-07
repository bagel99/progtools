ESLC=   eslc
INC=	-I../../libsim -I../../libelf -I../../lib
LIB=	../../lib
DBG=
OPT=	-i	# disable inlining
GCC=	gcc
ARCH:= $(shell uname -m)

# keep intermediate files, for now
.SECONDARY: %.s %.ll

%.out: %.s
	$(GCC) $< $(LIB)/arch/$(ARCH)/lib.a -o $@

%.s: %.esl
	$(ESLC) -m$(ARCH) $(DBG) $(INC) $(OPT) $< >$@

PROGS=	sim-riscv32 sim-riscv64

all:	$(PROGS)

sim-riscv32: main32.out
	mv main32.out sim-riscv32

sim-riscv64: main64.out
	mv main64.out sim-riscv64

clean:
	rm -f *.ll *.s *.o *.out $(PROGS)
