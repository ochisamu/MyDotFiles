obj-m:= {{_input_:target}}.o
{{_input_:target}}-objs:= $(wildcard *.o)

KDIR:= /lib/modules/$(shell uname -r)/build
PWD:= $(shell pwd)

all:
	$(MAKE) -C $(KDIR) M=$(PWD) modules

clean:
	rm -f *.o *.ko *.symvers *~ *.mod.c
