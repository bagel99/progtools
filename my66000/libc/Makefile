AS=/home/bgl/src/esl-code/progtools/my66000/as/as
# AS=/usr/local/bin/my66000-unknown-elf-as
AR=/usr/local/bin/my66000-unknown-elf-ar

SUBDIRS := $(wildcard */.)

.PHONY: all $(SUBDIRS)

all: $(SUBDIRS) crt0.o libc.a

$(SUBDIRS):
	$(MAKE) -C $@

OBJS=	$(SUBDIRS)/*.o

OBJS+=	malloc.o sys.o				# for simulation only


%.o:%.S
	$(AS) -o$@ $<

crt0.o:	crt0.S

libc.a:	$(OBJS)
	$(AR) ru $@ $^

