TARGET=www-data

all: $(TARGET)/index.html $(TARGET)/kagube_tear.svg $(TARGET)/demoroute.html $(TARGET)/killed_cyclists_2024.geojson $(TARGET)/killed_cyclists_all.geojson


$(TARGET)/index.html: head.html natenom.md logo.html foot.html
	@mkdir -p $(TARGET)
	pandoc natenom.md --toc -H head.html -B logo.html -A foot.html -o $(TARGET)/index.html --metadata title=Natenom

$(TARGET)/kagube_tear.svg: kagube_tear.svg
	@mkdir -p $(TARGET)
	@cp kagube_tear.svg $(TARGET)

$(TARGET)/killed_cyclists_2024.geojson: killed_cyclists_2024.geojson
	@mkdir -p $(TARGET)
	@cp killed_cyclists_2024.geojson $(TARGET)

$(TARGET)/killed_cyclists_all.geojson: killed_cyclists_all.geojson
	@mkdir -p $(TARGET)
	@cp killed_cyclists_all.geojson $(TARGET)

$(TARGET)/demoroute.html: demoroute.html
	@mkdir -p $(TARGET)
	@cp demoroute.html $(TARGET)

clean:
	@rm -r $(TARGET) || true