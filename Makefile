HTML=$(wildcard *.html)
CSS=$(wildcard ./css/*.css)

.PHONY : docs
docs : $(HTML)

%.html : %.jemdoc MENU mysite.conf Makefile $(CSS)
	jemdoc -c mysite.conf -o $@ $<

.PHONY : clean
clean :
	rm -f *.html
