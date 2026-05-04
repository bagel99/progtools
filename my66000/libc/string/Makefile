AS=/home/bgl/src/esl-code/progtools/my66000/as/as
# AS=/usr/local/bin/my66000-unknown-elf-as
AR=/usr/local/bin/my66000-unknown-elf-ar

OBJS=	strlen.o strnlen.o strcmp.o strncmp.o strcpy.o strncpy.o \
	    strcat.o strncat.o strchr.o strrchr.o stpcpy.o stpncpy.o \
	    strstr.o strtok.o strtok_r.o strpbrk.o strspn.o
OBJS+=	memcmp.o memchr.o memccpy.o


.PHONY: all
all:	$(OBJS)

%.o:%.S
	$(AS) -o$@ $<
