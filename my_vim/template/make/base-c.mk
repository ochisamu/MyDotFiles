CFLAGS	= -Wall
TARGET = {{_input_:Target}}
SRCS = ${wildcard *.c}
OBJS   = ${SRCS:.c=.o} 
#LIBS = -l
#LIBDIR = -L
#INCDIR = -I

.PHONY: clean depend

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $@ $^ $(LIBDIR) $(LIBS)

.cpp.o:
	$(CC) $(CFLAGS) -c $< -o $@ $(INCDIR)

#$(OBJS): $(SRCS)
#	$(CC) $(CFLAGS) -c $^
#	$(CC) $(CFLAGS) -c $^ $(INCDIR) 

clean:
	rm -rf $(OBJS) $(TARGET) *~

depend:
	makedepend -- $(CFLAGS) $(INCDIR) -- $(SRCS)
	rm -rf *.gch Makefile.bak

