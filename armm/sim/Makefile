ESLC=   eslc
INC=	-I../../libsim -I../../libelf -I../../../lib
DBG=
OPT=	-i	# disable inlining
GCC=	gcc
LIB=	../../../lib
ARCH:= $(shell uname -m)

# keep intermediate files, for now
.SECONDARY: %.s %.ll

%.out: %.s
	$(GCC)  $< -lrt $(LIB)/arch/$(ARCH)/linux/lib.a -o $@

%.s: %.esl
	$(ESLC) -m$(ARCH) $(DBG) $(INC) $(OPT) $< >$@

PROGS=	sim-cc2538 \
	sim-lpc17xx \
	sim-stm32f107 sim-stm32f303 sim-stm32f407 sim-stm32w108 \
	sim-atsam4e

all:	$(PROGS)

sim-cc2538:	main-cc2538.out
	mv main-cc2538.out sim-cc2538

sim-lpc17xx:	main-lpc17xx.out
	mv main-lpc17xx.out sim-lpc17xx

sim-stm32f107:	main-stm32f107.out
	mv main-stm32f107.out sim-stm32f107

sim-stm32f303:	main-stm32f303.out
	mv main-stm32f303.out sim-stm32f303

sim-stm32f407:	main-stm32f407.out
	mv main-stm32f407.out sim-stm32f407

sim-stm32w108:	main-stm32w108.out
	mv main-stm32w108.out sim-stm32w108

sim-atsam4e:	main-atsam4e.out
	mv main-atsam4e.out sim-atsam4e

clean:
	rm -f *.ll *.s *.o *.out $(PROGS)

