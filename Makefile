
TITLE   := MATRIX BLUETOOTH ENGINE
APPID   := MTXBT001
CONTENTID := UP0001-$(APPID)_00-0000000000000000
TARGET  := matrix_bluetooth_engine

ICON0   := $(CURDIR)/ICON0.PNG
OFILES  := main.o

CFLAGS  += -O2 -Wall -mcpu=cell $(MACHDEP) $(LIBPSL1GHT_INC)
LDFLAGS += $(MACHDEP)
LIBS    := -lrsx -lgcm_sys -lsysutil -lsysmodule -lio -lm

include $(PSL1GHT)/ppu_rules

.PHONY: all pkg clean

all: $(TARGET).self

pkg: $(TARGET).pkg

clean:
	rm -f $(OFILES) $(TARGET).elf $(TARGET).self $(TARGET).pkg
	rm -rf build
