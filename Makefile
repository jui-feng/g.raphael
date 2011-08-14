YUICOMPRESSOR = yui-compressor
MINDIR = min
SRCDIR = src

MINFILES := $(patsubst $(SRCDIR)/%.js,$(MINDIR)/%-min.js,$(wildcard $(SRCDIR)/*.js))

all: $(MINFILES)
$(MINDIR)/%-min.js: $(SRCDIR)/%.js | $(MINDIR)
	$(YUICOMPRESSOR) -o $@ $<

$(MINDIR):
	mkdir $(MINDIR)
	
.PHONY: clean
clean:
	if test -d $(MINDIR); then rm -r $(MINDIR); fi
