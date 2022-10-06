obj-m+=hello.o
CFLAGS_hello.o := -DDEBUG

KDIR ?= "/lib/modules/$(shell uname -r)/build"

all:
	make -C $(KDIR) M=$(PWD) modules
clean:
	make -C $(KDIR) M=$(PWD) clean
