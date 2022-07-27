# libalac make

SRCDIR = .
OBJDIR = ./obj
INCLUDES = .

CC = g++
CFLAGS = -Wall -O3
AR = ar
SOVER = 0

ifneq ($(shell uname -m), i386)
        CFLAGS += -fPIC
endif

HEADERS = \
  $(SRCDIR)/EndianPortable.h \
  $(SRCDIR)/aglib.h \
  $(SRCDIR)/ALACAudioTypes.h \
  $(SRCDIR)/ALACBitUtilities.h\
  $(SRCDIR)/ALACDecoder.h \
  $(SRCDIR)/ALACEncoder.h \
  $(SRCDIR)/dplib.h \
  $(SRCDIR)/matrixlib.h

SOURCES = \
  $(SRCDIR)/EndianPortable.c \
  $(SRCDIR)/ALACBitUtilities.c \
  $(SRCDIR)/ALACDecoder.cpp \
  $(SRCDIR)/ALACEncoder.cpp \
  $(SRCDIR)/ag_dec.c \
  $(SRCDIR)/ag_enc.c \
  $(SRCDIR)/dp_dec.c \
  $(SRCDIR)/dp_enc.c \
  $(SRCDIR)/matrix_dec.c \
  $(SRCDIR)/matrix_enc.c

OBJS = \
  EndianPortable.o \
  ALACBitUtilities.o \
  ALACDecoder.o \
  ALACEncoder.o \
  ag_dec.o \
  ag_enc.o \
  dp_dec.o \
  dp_enc.o \
  matrix_dec.o \
  matrix_enc.o

all: libalac.a libalac.so.$(SOVER)

libalac.a: $(OBJS)
	$(AR) rcs $@ $^

libalac.so.$(SOVER): $(OBJS)
	$(CC) -I $(INCLUDES) $(CFLAGS) -shared -Wl,-soname,$@ $^ -o $@

EndianPortable.o : EndianPortable.c
	$(CC) -I $(INCLUDES) -c $(CFLAGS) $< -o $@

ALACBitUtilities.o : ALACBitUtilities.c
	$(CC) -I $(INCLUDES) -c $(CFLAGS) $< -o $@

ALACDecoder.o : ALACDecoder.cpp
	$(CC) -I $(INCLUDES) -c $(CFLAGS) $< -o $@

ALACEncoder.o : ALACEncoder.cpp
	$(CC) -I $(INCLUDES) -c $(CFLAGS) $< -o $@

ag_dec.o : ag_dec.c
	$(CC) -I $(INCLUDES) -c $(CFLAGS) $< -o $@

ag_enc.o : ag_enc.c
	$(CC) -I $(INCLUDES) -c $(CFLAGS) $< -o $@

dp_dec.o : dp_dec.c
	$(CC) -I $(INCLUDES) -c $(CFLAGS) $< -o $@

dp_enc.o : dp_enc.c
	$(CC) -I $(INCLUDES) -c $(CFLAGS) $< -o $@

matrix_dec.o : matrix_dec.c
	$(CC) -I $(INCLUDES) -c $(CFLAGS) $< -o $@

matrix_enc.o : matrix_enc.c
	$(CC) -I $(INCLUDES) -c $(CFLAGS) $< -o $@
		
clean:
	-rm $(OBJS) libalac.a libalac.so.0
