DEBUG = false
ifeq ($(DEBUG), true)
    CC = gcc -g
else
    CC = gcc
endif

.PHONY:all clean

BIN = 
SRCS = $(wildcard *.c)
OBJS = $(SRCS:.c=.o)
DEPS = $(SRCS:.c=.d)

all: $(DEPS) $(BIN) $(OBJS)

include $(DEPS)


$(BIN):$(OBJS)
	$(CC) -o $@ $^  ../can/can.o ../net/net.o  ../uart/uart.o

%.o:%.c
	$(CC) -o $@  -c $(filter %.c , $^)
	
%.d:%.c
	$(CC) -MM $^ > $@  


clean:
	rm -rf  $(BIN) $(OBJS) $(DEPS)

