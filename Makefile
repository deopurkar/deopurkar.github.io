default:
	bundle exec jekyll build
	latexmk -pdf _site/cv/cv
	cp _site/cv/cv.pdf cv/

deploy: default
	git add .
	git commit -a
	git push
