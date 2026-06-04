all: deploy

clean:
	rm -rf docs
	rm build

build: 
	emacs -Q --script build.el;\

deploy: build 
	git stash push;\
	git stash push -u -- docs;\
	git checkout gh-pages;\
	git pull;\
	git stash pop;\
	rsync docs/ ./ -avzP;\
	rm -rf docs;\
	git commit -a -m "Manual build";\
	git push;\
	git checkout main;\
	git stash pop;
