default:
	-bundle exec jekyll build

ceevee:	default
	cd _site/cv/; latexmk -C cv
	cd _site/cv/; sed 's/##/#/' mutablecv.part > rest.part
	cd _site/cv/; pandoc --pdf-engine=xelatex -o rest.tex rest.part
	cd _site/cv/; latexmk -pdf -pdflatex="xelatex" cv.tex 
	cp _site/cv/cv.pdf cv/cv.pdf

git:
	git add . --all
	git commit -a

all:	default ceevee git

deploy: default
	git push

view:
	bundle exec jekyll serve
