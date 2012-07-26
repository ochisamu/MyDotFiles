obj-m:= {{_input_:target}}.o

#INPUT ALL SOURCE FILES
SRCS = main.c {{_cursor_}}
{{_input_:target}}-objs:= $(SRCS:.c=.o)

KDIR:= /lib/modules/$(shell uname -r)/build
PWD:= $(shell pwd)

all:
	$(MAKE) -C $(KDIR) M=$(PWD) modules

clean:
	rm -f *.o *.ko *.symvers *~ *.mod.c
