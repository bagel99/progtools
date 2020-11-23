ARCH=	x86_64
AS=	as
AR=	ar

OBJS=	memlen.o memcmp.o mem.o

%.o: %.S
	$(AS) -o $@ $<

lib.a:	$(OBJS)
	$(AR) r lib.a $(OBJS)

clean:
	rm -f lib.a $(OBJS)

