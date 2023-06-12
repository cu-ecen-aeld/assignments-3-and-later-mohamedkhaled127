compile_command=
ifeq ($(CROSS_COMPILE),aarch64-none-linux-gnu-)
		compile_command+=$(CROSS_COMPILE)gcc
		
else
		compile_command+=gcc
		
endif
default:
	$(compile_command) -c writer.c
	$(compile_command)    writer.o  -o writer
	@echo $(compile_command)
clean:
	rm -f *.o
	rm -f *.out


