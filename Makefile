CC=gcc
CFLAGS=-O2 -g -pipe -Wall -std=gnu99
TARGET=ps4-wake
PREFIX=/usr

all:
	$(CC) $(CFLAGS) $(TARGET).c sha1.c -o $(TARGET)

install: all
	install -D ps4-wake $(PREFIX)/bin/$(TARGET)

clean:
	rm -f $(TARGET)

