default:
	-bundle exec jekyll build

ceevee:
	cd _site/cv/; latexmk -pdf cv.tex
	cp _site/cv/cv.pdf cv/cv.pdf

git:
	git add . --all
	git commit -a

all:	default cv git

deploy: default
	git push

view:
	bundle exec jekyll serve
