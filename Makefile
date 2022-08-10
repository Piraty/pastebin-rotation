SRC := pbr


all: $(SRC)

lint: all
	shfmt -ci -d $(SRC) tests/*.sh
	shellcheck $(SRC) tests/*.sh

tests/%.log: all
	./tests/$(*) 2>&1 | tee ./$(@)

check: lint tests/round-robin.sh.log

.PHONY: all check test
