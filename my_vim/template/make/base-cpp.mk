CFLAGS	= -Wall
TARGET = {{_input_:Target}}
SRCS = ${wildcard *.cpp}
OBJS   = ${SRCS:.cpp=.o} 
#LIBS = -l
#LIBDIR = -L
#INCDIR = -I

.PHONY: clean depend

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CXX) $(CFLAGS) -o $@ $^ $(LIBDIR) $(LIBS)

.cpp.o:
	$(CXX) $(CFLAGS) -c $< -o $@ $(INCDIR)

#$(OBJS): $(SRCS)
#	$(CXX) $(CFLAGS) -c $^
#	$(CXX) $(CFLAGS) -c $^ $(INCDIR) 

clean:
	rm -rf $(OBJS) $(TARGET) *~

depend:
	makedepend -- $(CFLAGS) $(INCDIR) -- $(SRCS)
	rm -rf *.gch Makefile.bak

