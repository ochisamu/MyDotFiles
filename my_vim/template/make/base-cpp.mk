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
	$(CXX) $(CFLAGS) -o $@ $^
#	$(CXX) $(CFLAGS) -o $@ $^ $(LIBDIR) $(LIBS)

$(OBJS): $(SRCS)
	$(CXX) $(CFLAGS) -c $^
#	$(CXX) $(CFLAGS) -c $^ $(INCDIR) 

clean:
	rm -rf $(OBJS) $(TARGET) *~
