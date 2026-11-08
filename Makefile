
TITLE      := MATRIX BLUETOOTH ENGINE
APPID      := MTXBT001
CONTENTID  := UP0001-$(APPID)_00-0000000000000000
TARGET     := matrix_bluetooth_engine

ICON0      := $(CURDIR)/ICON0.PNG
SFOXML     := $(PS3DEV)/bin/sfo.xml

OFILES     := main.o

LD         := ppu-gcc

CFLAGS     += -O2 -Wall $(MACHDEP) $(LIBPSL1GHT_INC)
LDFLAGS    += $(MACHDEP)
LIBS       := -lrsx -lgcm_sys -lsysutil -lsysmodule -lio -lm

include $(PSL1GHT)/ppu_rules

.PHONY: all pkg clean

all: $(TARGET).self

pkg: $(TARGET).pkg

clean:
	rm -f $(OFILES)
	rm -f $(TARGET).elf $(TARGET).self $(TARGET).pkg
	rm -rf build
