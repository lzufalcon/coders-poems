all: pdf html

html:
	gitbook build

pdf:
	gitbook pdf

read-pdf:
	firefox book.pdf &

read-html:
	firefox _book/index.html &

read: read-html read-pdf

clean:
	@rm -rf _book book.pdf
