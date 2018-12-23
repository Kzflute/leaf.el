
build: $(ELS:.el=.elc)

%.elc: %.el
	$(EMACS) -Q --batch -L $(shell pwd) -f batch-byte-compile $<

check: build
	$(EMACS) -Q --batch -L $(shell pwd) $(CORT_ARGS)
