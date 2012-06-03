TEX = platex
DVIPDF = dvipdfmx
TARGET = {{_input_:target}}
SRCS = ${TARGET}.tex
DVI = ${TARGET}.dvi

.PHONY: clean

dvi: $(SRCS)
	$(TEX) $^
pdf: $(DVI)
	$(DVIPDF) $^
clean:
	rm -rf $(TARGET).pdf $(TARGET).log $(TARGET).aux  $(TARGET).dvi *~
