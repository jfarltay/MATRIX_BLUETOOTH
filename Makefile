
TITLE   := MATRIX BLUETOOTH ENGINE
APPID   := MTXBT001
TARGET  := matrix_bluetooth_engine

OFILES  := main.o
CFLAGS  := -I$(PS3DEV)/ppu/include -std=gnu99
LDFLAGS :=
BUILDDIR := build

include $(PSL1GHT)/ppu_rules

.PHONY: all pkg clean

all: $(TARGET).self

pkg: $(TARGET).pkg

clean:
	rm -rf $(TARGET).elf $(TARGET).self $(TARGET).pkg $(BUILDDIR)
