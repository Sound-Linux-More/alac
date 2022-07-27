all:
	$(MAKE) -C convert-utility -r

shared:
	$(MAKE) -C convert-utility -r SOLIB=Y

clean:
	$(MAKE) -C convert-utility clean
