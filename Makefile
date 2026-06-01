all: commit build deploy

clean:
	rm -rf docs

build: 
	emacs -Q --script build.el
	touch build

commit:
	git add .
	git commit

<<<<<<< Updated upstream
deploy: commit build
	TMP=`mktemp -d -p /tmp/`;\
	mv docs $TMP;\
=======
deploy: build
	git stash;\
>>>>>>> Stashed changes
	git checkout gh-pages;\
	git pull;\
	rsync $TMP ./ -avzP;\
	rm -rf $TMP;\
	git commit -a -m "Manual build";\
	git push
