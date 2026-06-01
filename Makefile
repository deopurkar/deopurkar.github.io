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
	TMP=`mktemp -d -p /tmp/`;\
	mv docs $TMP;\
	git checkout gh-pages;\
	git pull;\
	rsync $TMP ./ -avzP;\
	rm -rf $TMP;\
	git commit -a -m "Manual build";\
	git push;\
	git checkout main
