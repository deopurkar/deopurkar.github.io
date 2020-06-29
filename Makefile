default:
	-bundle exec jekyll build

ceevee:
	cd _site/cv/; pandoc --latex-engine=xelatex -o teaching-columbia.tex teaching-columbia.part
	cd _site/cv/; pandoc --latex-engine=xelatex -o teaching-harvard.tex teaching-harvard.part
	cd _site/cv/; pandoc --latex-engine=xelatex -o teaching-uga.tex teaching-uga.part
	cd _site/cv/; pandoc --latex-engine=xelatex -o supervision.tex supervision.part
	cd _site/cv/; pandoc --latex-engine=xelatex -o talks-conferences.tex talks-conferences.part
	cd _site/cv/; pandoc --latex-engine=xelatex -o talks-seminars.tex talks-seminars.part
	cd _site/cv/; pandoc --latex-engine=xelatex -o teaching-anu.tex teaching-anu.part
	cd _site/cv/; pandoc --latex-engine=xelatex -o service.tex service.part
	cd _site/cv/; pandoc --latex-engine=xelatex -o publications.tex publications.part
	cd _site/cv/; pandoc --latex-engine=xelatex -o awards.tex awards.part
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
