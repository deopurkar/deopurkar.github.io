default:
	bundle exec jekyll build
	cd _site/cv/; latexmk -pdf cv.tex
	cp _site/cv/cv.pdf cv/cv.pdf

deploy: default
	git add .
	git commit -a
	git push
