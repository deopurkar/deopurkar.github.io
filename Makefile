default:
	bundle exec jekyll build

all:	default
	cd _site/cv/; latexmk -pdf cv.tex
	cp _site/cv/cv.pdf cv/cv.pdf

deploy: default
	git push
