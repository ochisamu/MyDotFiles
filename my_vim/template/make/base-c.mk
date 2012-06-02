CFLAGS	= -Wall
TARGET = {{_input_:Target}}
SRCS = ${wildcard *.c}
OBJS   = ${SRCS:.c=.o} 
#LIBS = -l
#LIBDIR = -L
#INCDIR = -I

.PHONY: clean

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $@ $^
#	$(CC) $(CFLAGS) -o $@ $^ $(LIBDIR) $(LIBS)

$(OBJS): $(SRCS)
	$(CC) $(CFLAGS) -c $^
#	$(CC) $(CFLAGS) -c $^ $(INCDIR) 

clean:
	rm -rf $(OBJS) $(TARGET) *~
