# alacconvert make

SRCDIR = .
CODECDIR = ../codec
OBJDIR = ./obj
INCLUDES = ../codec

CC = g++
CFLAGS = -Wall -O3
SOVER = 0
ifeq ($(SOLIB), Y)
LFLAGS = $(CODECDIR)/libalac.so.$(SOVER) -s
else
LFLAGS = $(CODECDIR)/libalac.a -s
endif

ifneq ($(shell uname -m), i386)
        CFLAGS += -fPIC
endif

HEADERS = \
  $(SRCDIR)/CAFFileALAC.h \
  $(CODECDIR)/EndianPortable.h \
  $(CODECDIR)/aglib.h \
  $(CODECDIR)/ALACAudioTypes.h \
  $(CODECDIR)/ALACBitUtilities.h\
  $(CODECDIR)/ALACDecoder.h \
  $(CODECDIR)/ALACEncoder.h \
  $(CODECDIR)/dplib.h \
  $(CODECDIR)/matrixlib.h

SOURCES = \
  $(SRCDIR)/main.cpp \
  $(SRCDIR)/CAFFileALAC.cpp

OBJS = \
  main.o \
  CAFFileALAC.o 

all: alacconvert

alacconvert:	$(OBJS)
	(cd $(CODECDIR); $(MAKE))
	$(CC) $(CFLAGS) $^ $(LFLAGS) -o $@

main.o : main.cpp
	$(CC) -I $(INCLUDES) -c $(CFLAGS) $< -o $@

CAFFileALAC.o : CAFFileALAC.cpp
	$(CC) -I $(INCLUDES) -c $(CFLAGS) $< -o $@

clean:
	(cd $(CODECDIR); $(MAKE) clean)
	-rm $(OBJS) alacconvert
