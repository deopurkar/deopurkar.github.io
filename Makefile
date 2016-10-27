default:
	bundle exec jekyll build

all:	default
	cd _site/cv/; latexmk -pdf cv.tex
	cp _site/cv/cv.pdf cv/cv.pdf
	git add . --all
	git commit -a

deploy: default
	git push

view:
	bundle exec jekyll serve
