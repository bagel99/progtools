AS=/home/bgl/src/esl-code/progtools/my66000/as/as
# AS=/usr/local/bin/my66000-unknown-elf-as
AR=/usr/local/bin/my66000-unknown-elf-ar

OBJS=	strlen.o strnlen.o strcmp.o strncmp.o strcpy.o strncpy.o \
	    strcat.o strncat.o strchr.o strrchr.o stpcpy.o stpncpy.o
OBJS+=	memcmp.o memchr.o
OBJS+=	malloc.o sys.o				# for simulation only


.PHONY: all
all:	crt0.o libc.a

%.o:%.S
	$(AS) -o$@ $<

crt0.o:	crt0.S

libc.a:	$(OBJS)
	$(AR) ru $@ $^

