all: commit build deploy

clean:
	rm -rf docs

build: 
	emacs -Q --script build.el
	touch build

commit:
	git checkout main
	git add .
	git commit
	touch commit

deploy: commit build
	git stash;\
	git checkout gh-pages;\
	git stash pop;\
	git pull;\
	rsync docs/ ./ -avzP;\
	rm -rf /docs;\
	git commit -a -m "Manual build";\
	git push;\
	git checkout main;\
	git stash pop
