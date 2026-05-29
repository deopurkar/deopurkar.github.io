This repository contains code that generates my personal website.
The code and design of the website is thanks to [Asilata Bapat](https://asilata.org).


# The content

The content for the website goes in the `content/` directory.
It is written as a collection of inter-linked org files.
An internal directory structure is supported.


# Building

We begin by creating an elisp file to build the webpage, as explained in [this post](https://systemcrafters.net/publishing-websites-with-org-mode/building-the-site/).
I will tangle the following snippets of elisp code to a file called `build.el`.

I will first initialise some libraries and use [ox-publish](https://orgmode.org/manual/Publishing.html) to publish the website.
Right now, the building happens locally, but eventually, the it should happen on github.

    (message (emacs-version))
    (require 'ox-publish)
    (require 'subr-x)

We want to make sure that org files are opened in org mode.

    (add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))

The files properties.el and backlinks.el (tangled from org) add the functionality to automatically add a well-formatted properties block and backlinks.

    (load-file "properties.el")
    (load-file "backlinks.el")

The variable `links-in-cv` used above controls whether links should be included in the cv.

    (defvar links-in-cv t
      "Should links be included while processing cv.org")

The variable `project-root-directory` sets up the root directory of the website.  This is used for backlinks search.
The backlinks also need an up-to-date id database.

     (defvar project-root-directory (expand-file-name "./content/"))
    
    (org-id-update-id-locations 
     (directory-files-recursively
      project-root-directory
      "\.org$"))

Next I set the options for `org-publish-project-alist`, as documented [here](help:org-publish-project-alist).
Currently I have the following projects.

-   **`website-org`:** generates all the content from org-mode files.
-   **`website-static`:** copies over all other files.
-   **`styling`:** tangles and copies over all the files in the [styling](contents/styling) directory.
-   **`pdfcv`:** creates a pdf cv

    (setq org-publish-project-alist
        '(("website-org"
             :author "Anand Deopurkar"
             :email "anand.deopurkar@anu.edu.au"
           :base-directory "./content"  ;; This is where our files live
           :base-extension "org" ;; Publish only from org files
           :publishing-directory "./docs" ;; This is where the published files go
           :recursive t 
           :exclude "\#.*"   ;; Files beginning with \# are not processed.
           :publishing-function org-html-publish-to-html
           :section-numbers nil
           :with-broken-links nil
           :with-toc nil
             :with-tags nil
           :with-title t
           :with-author t
           :with-special-strings t
           :with-smart-quotes t
           :with-emphasize t
             :with-email t 
           :with-drawers ("results")
             :html-prefer-user-labels t
           :html-head-include-default-style nil
           :html-head-include-scripts nil 
           :html-head "<link rel=\"stylesheet\" href=\"/css/main.css\"><script src=\"/js/collapsibility.js\"></script>"
           :html-postamble t
             :html-preamble nil
             :html-postamble-format
             (("en" "Created by <a href=\"mailto:anand.deopurkar@anu.edu.au\">%a</a> using %c.  <a href=\"https://github.com/deopurkar/deopurkar.github.io\">Last modified</a>: %C."))
             :preparation-function (lambda (b)
                                     (setq org-export-before-parsing-functions
                                           '(my/pp-properties-hook my/add-backlinks-hook)
                                           links-in-cv
                                           t))
            :completion-function (lambda (b)
                                   (setq org-export-before-parsing-functions
                                         nil)))
          ("pdfcv"
           :base-directory "./content"
           :exclude ".*"
           :include ["cv.org"]
           :publishing-directory "./docs"
           :publishing-function org-latex-publish-to-pdf
             :preparation-function (lambda (b) (setq links-in-cv nil))
           )
          ("website-static"
           :base-directory "./content"
           :base-extension ".*"
           :exclude "\#.*\\|.*\.org"
           :publishing-directory "./docs"
           :recursive t
           :publishing-function org-publish-attachment
             )
          ("styling"
           :base-directory "./content/#styling"
           :base-extension "css\\|js\\|txt"
           :publishing-directory "./docs"
           :recursive t
           :publishing-function org-publish-attachment)
          ))

Now publish!  

    (let ((org-confirm-babel-evaluate nil)
        (make-backup-files nil)
        (noninteractive t))
    (message "Starting now")
    (org-babel-do-load-languages
     'org-babel-load-languages
     '((shell . t)))
    (message (emacs-version))
    (org-publish-all 'force)
    (message "Done!"))

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

