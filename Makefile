obj-m+=hello.o
CFLAGS_hello.o := -DDEBUG

#KDIR ?= "/lib/modules/$(shell uname -r)/build"
KDIR ?= "~/Desktop/Tasks/myconfig//modules/lib/modules/6.0.0-yocto-standard-00844-g725737e7c21d/build"
all:
	make -C $(KDIR) M=$(PWD) modules
clean:
	make -C $(KDIR) M=$(PWD) clean
