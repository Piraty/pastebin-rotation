SRC := pbr


all: $(SRC)

lint: all
	shfmt -ci -d $(SRC)
	shellcheck $(SRC)

tests/%.log: all
	./tests/$(*) > ./$(@)

check: lint tests/round-robin.sh.log

.PHONY: all check test
