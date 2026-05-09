
# Table of Contents

1.  [The content](#orge646e4b)
2.  [Building](#org19b1407)
3.  [Building on Github](#orgf2c2605)

This repository contains code that generates my personal website.
The code and design of the website is thanks to [Asilata Bapat](https://asilata.org).


<a id="orge646e4b"></a>

# The content

The content for the website goes in the `content/` directory.
It is written as a collection of inter-linked org files.
An internal directory structure is supported.


<a id="org19b1407"></a>

# Building

We begin by creating an elisp file to build the webpage, as explained in [this post](https://systemcrafters.net/publishing-websites-with-org-mode/building-the-site/).
I will tangle the following snippets of elisp code to a file called `build.el`.

I will first initialise some libraries and use [ox-publish](https://orgmode.org/manual/Publishing.html) to publish the website.
Right now, the building happens locally, but eventually, the it should happen on github.

    (message (emacs-version))
    (require 'ox-publish)
    (require 'subr-x)

Next I set the options for `org-publish-project-alist`, as documented [here](help:org-publish-project-alist).
Currently I have the following projects.

-   **`website-org`:** generates all the content from org-mode files.
-   **`website-static`:** copies over all other files.
-   **`styling`:** tangles and copies over all the files in the [styling](contents/styling) directory.
-   **`pdfcv`:** creates a pdf cv

    (setq org-publish-project-alist
          '(("website-org"
             :base-directory "./content"  ;; This is where our files live
             :base-extension "org" ;; Publish only from org files
             :publishing-directory "./docs" ;; This is where the published files go
             :recursive t 
             :exclude "\#.*"   ;; Files beginning with \# are not processed.
             :publishing-function org-html-publish-to-html
             :section-numbers nil
             :with-broken-links mark
             :with-toc nil
             :with-title t
             :with-author t
             :with-special-strings t
             :with-smart-quotes t
             :with-emphasize t
             :with-drawers ("results")
             :html-head-include-default-style nil
             :html-head-include-scripts nil 
             :html-head "<link rel=\"stylesheet\" href=\"/css/main.css\"></link><link href=\"https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i\" rel=\"stylesheet\"></link>"
             :html-preamble nil
             :html-postamble-format (("en" "Created by %c.  Last modified: %C.  <a href=\"https://github.com/deopurkar.github.io\">Source</a>"))
             :html-postamble t
             :auto-sitemap nil
             )
            ("pdfcv"
             :base-directory "./content"
             :exclude ".*"
             :include ["cv.org"]
             :publishing-directory "./docs"
             :publishing-function org-latex-publish-to-pdf
             :preparation-function do-not-include-links
             )
            ("website-static"
             :base-directory "./content"
             :base-extension ".*"
             :exclude "\#.*\\|.*\.org"
             :publishing-directory "./docs"
             :recursive t
             :publishing-function org-publish-attachment)
            ("styling"
             :base-directory "./content/#styling"
             :base-extension "css\\|js"
             :publishing-directory "./docs"
             :recursive t
             :preparation-function my/execute-files
             :publishing-function org-publish-attachment)
            ))

The variable `cv-include-links` used above controls whether links should be included in the cv.

    (defvar cv-include-links t
      "Should links be included while processing cv.org")
    (defun do-not-include-links (propslist)
      (setq cv-include-links nil))

The following function executes all the org files from the base directory.

    (defun my/execute-files (proplist)
      (let ((files
             (directory-files-recursively
              (plist-get proplist ':base-directory)
              ".*org$")))  
        (mapcar (lambda (file)
                  (with-current-buffer (find-file file)
                    (org-babel-execute-buffer)
                    ))
                files)))

Now publish!  

    (setq org-confirm-babel-evaluate nil)
    (setq make-backup-files nil)
    (org-publish-all t)
    (message "Build complete!")

We also create a shell script to run the above lisp file.

    emacs -Q --script build.el

and a shell script to build and commit.

    cd /home/anand/website
    git checkout main
    git pull
    emacs -Q --script build.el
    git add .
    git commit -a -m "Auto-build"
    git push


<a id="orgf2c2605"></a>

# Building on Github

*This is working, but missing some fringe functionality.*
Once we have set up the tools to build the website locally, we can now use them to build the site automatically on Github.
Put the following code in `.github/workflows/build.yml`.
Inspired by [this post](https://duncan.codes/posts/2019-09-03-migrating-from-jekyll-to-org/) and [this post](https://systemcrafters.net/publishing-websites-with-org-mode/automated-site-publishing/).

    name: Publish
    
    on:
     push:
      branches:
       - main
    
    jobs:
     publish:
      runs-on: ubuntu-latest
      steps:
       - name: Check out
         uses: actions/checkout@v6
    
       - name: Install Emacs
         run: sudo apt install emacs-nox --yes
    
       - name: Install latex
         run: sudo apt install texlive texlive-latex-extra texlive-plain-generic texlive-fonts-extra texlive-fonts-recommended --yes
    
       - name: Build the site
         run: ./build.sh
    
       - name: Publish generated content to GitHub Pages
         uses: JamesIves/github-pages-deploy-action@v4
         with:
          branch: gh-pages
          folder: docs

