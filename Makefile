all: build deploy

clean:
	rm -rf docs
	rm build

build: 
	emacs -Q --script build.el;\
	touch build

deploy: build
	git stash;\
	git checkout gh-pages;\
	git stash pop;\
	git pull;\
	git stash pop;\
	rsync docs/ ./ -avzP;\
	rm -rf docs;\
	git commit -a -m "Manual build";\
	git push;\
	git checkout main;\
