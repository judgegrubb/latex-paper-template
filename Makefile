
TARGET=paper

.PHONY: FORCE
$(TARGET).pdf: FORCE
	./latexrun $(TARGET).tex

.PHONY: clean
clean:
	./latexrun --clean-all

.PHONY: view
view: $(TARGET).pdf
	if [ "Darwin" = "$(shell uname)" ]; then open $(TARGET).pdf ; else evince $(TARGET).pdf ; fi
