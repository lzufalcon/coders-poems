all: pdf html

html:
	gitbook build

pdf:
	gitbook pdf

read-pdf: book.pdf
	(chromium-browser $^ 2>&1 > /dev/null &) 2>&1 >/dev/null

read-html: _book/index.html
	(chromium-browser $^ 2>&1 > /dev/null &) 2>&1 >/dev/null

read: read-html read-pdf

clean:
	@rm -rf _book book.pdf
