h:
	haxe -main Main -hl test.hl
	LD_LIBRARY_PATH=$(HOME)/lib hl test.hl

c:
	rm -rf out test
	haxe -main Main -hl out/main.c
	cc -O1 -g -Wall -o test -std=c11 -Iout -I$(HOME)/include out/main.c $(HOME)/lib/*hdll -L$(HOME)/lib -lhl -lm
	LD_LIBRARY_PATH=$(HOME)/lib ./test
