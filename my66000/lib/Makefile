AS=/usr/local/bin/my66000-unknown-elf-as
AR=/usr/local/bin/my66000-unknown-elf-ar

OBJS=	memset.o memcpy.o malloc.o sys.o
OBJS+=  memlen.o memcmp.o			# these are used by ESL

.PHONY: all
all:	crt0.o libc.a

%.o:%.S
	$(AS) -mcmodel=tiny -o $@ $<

crt0.o:	crt0.S

libc.a:	$(OBJS)
	$(AR) ru $@ $^

	
