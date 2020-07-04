.PHONY = clean

SOURCES = $(shell find . -name "*.mmd")
OBJECTS = $(SOURCES:.mmd=.png)
MERMAID = /mmdc/node_modules/.bin/mmdc

diagrams: $(OBJECTS)

%.png: %.mmd
	$(MERMAID) -i $< -o $@

clean:
	rm -f $(OBJECTS)
