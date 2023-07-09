IDIR =include
CC=gcc
CFLAGS=-I$(IDIR) -Wall

ODIR=build
TARGET=target
SRCDIR=src
EXE = main

# change as per requirement
DEBUG = 0

LDIR = lib
LIBS=-lm

ifeq ($(DEBUG),1)
CFLAGS += -g -O0
else
CFLAGS += -O3
endif

_DEPS = $(subst $(IDIR)/,,$(wildcard $(IDIR)/*.h))
DEPS = $(patsubst %,$(IDIR)/%,$(_DEPS))

$(ODIR)/%.o: $(SRCDIR)/%.c $(DEPS)
	$(CC) -o $@ -c $< $(CFLAGS)

# gets the source files in the CSOURCES variable
CSOURCES = $(subst $(SRCDIR)/,,$(wildcard $(SRCDIR)/*.c))

_OBJ = $(patsubst %.c, %.o, $(CSOURCES))
OBJ = $(patsubst %,$(ODIR)/%,$(_OBJ))

.PHONY: all

all: create $(TARGET)/$(EXE)
$(TARGET)/$(EXE): $(OBJ)
		$(CC) -o $@ $^ $(CFLAGS) $(LIBS)

.PHONY: create
create:
	mkdir -p build

# Ensures that this is a target and is different from any file named after target
.PHONY: clean

clean:
	rm -f *~ core $(INCDIR)/*~ $(TARGET)/*
	rm -rf $(ODIR)

.PHONY: run

run:
	$(TARGET)/$(EXE)