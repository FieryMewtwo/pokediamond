CXXFLAGS := -std=c++17 -O3 -Wall -Wextra -Wpedantic

ifeq ($(OS),Windows_NT)
LDFLAGS += -lstdc++fs
else
UNAME_S := $(shell uname -s)
ifeq ($(UNAME_S),Darwin)
LDFLAGS += -lstdc++ -lc++ -lc /usr/local/opt/llvm@8/lib/libc++fs.a
else
LDFLAGS += -lstdc++fs
endif
endif

OBJS = \
	banner.o \
	crc16.o \
	main.o

.PHONY: all clean

all: nitrobanner

%.o: %.cpp
	$(CXX) -c -o $@ $< $(CXXFLAGS)

clean:
	$(RM) nitrobanner nitrobanner.exe *.o

nitrobanner: $(OBJS)
	$(CXX) -o $@ $^ $(LDFLAGS)
