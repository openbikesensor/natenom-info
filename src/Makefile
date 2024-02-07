TARGET=www-data

all: $(TARGET)/index.html $(TARGET)/kagube_tear.svg $(TARGET)/demoroute.html


$(TARGET)/index.html: head.html natenom.md logo.html foot.html
	@mkdir -p $(TARGET)
	pandoc natenom.md --toc -H head.html -B logo.html -A foot.html -o $(TARGET)/index.html --metadata title=Natenom

$(TARGET)/kagube_tear.svg: kagube_tear.svg
	@mkdir -p $(TARGET)
	@cp kagube_tear.svg $(TARGET)

$(TARGET)/demoroute.html: demoroute.html
	@mkdir -p $(TARGET)
	@cp demoroute.html $(TARGET)

clean:
	@rm -r $(TARGET) || true