TARGET=www-data

all: $(TARGET)/index.html $(TARGET)/kagube_tear.svg


$(TARGET)/index.html: head.html natenom.md logo.html
	@mkdir -p $(TARGET)
	pandoc natenom.md --toc -H head.html -B logo.html -o $(TARGET)/index.html --metadata title=Natenom

$(TARGET)/kagube_tear.svg: kagube_tear.svg
	@mkdir -p $(TARGET)
	@cp kagube_tear.svg $(TARGET)

clean:
	@rm -r $(TARGET) || true