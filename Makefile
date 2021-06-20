.PHONY:all

all:
	make -C can
	make -C net
	make -C uart
	make -C app

clean:
	make clean -C can
	make clean -C net
	make clean -C uart
	make clean -C app
	rm -rf app/hello
