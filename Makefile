TARGET=www-data

export/index.html: head.html natenom.md logo.html
	@mkdir -p export
	pandoc natenom.md --toc -H head.html -B logo.html -o export/index.html --metadata title=Natenom

export/kagube_tear.svg: kagube_tear.svg
	@mkdir -p export
	@cp kagube_tear.svg export

all: export/index.html export/kagube_tear.svg

clean:
	@rm -r export/ || true