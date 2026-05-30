document.addEventListener("DOMContentLoaded", function () {
    
    // We make all h2 and h3 collapsible/collapsed by default.

    defcollapse = "collapsible"
    if (document.documentElement.clientWidth < 720){
	defcollapse = "collapsed";
    }
    
    var headlines = document.querySelectorAll(".outline-2 h2, .outline-2 h3");
    for (var i = 0; i < headlines.length; i++){
	if (!(headlines[i].classList.contains("collapsed") ||
	     headlines[i].classList.contains("collapsible"))){
	    headlines[i].classList.add(defcollapse);
	}
    }

    // The target headline is never collapsed.
    var headlines = document.querySelectorAll(":target");
    for (var i = 0; i < headlines.length; i++) {
	if (headlines[i].classList.contains("collapsed")){
            headlines[i].classList.remove("collapsed");
	    headlines[i].classList.add("collapsible");
	}
    }

    var headlines = document.querySelectorAll(".collapsible");
    for (var i = 0; i < headlines.length; i++) {
        addCollapsiblility(headlines[i], true);
    }

    
    var collapsedHeadlines = document.querySelectorAll(".collapsed");
    for (var i = 0; i < collapsedHeadlines.length; i++) {
        addCollapsiblility(collapsedHeadlines[i], false);
    }
});

function addCollapsiblility(headline, visible){
    headline.addEventListener("click", toggleVisibilityOfNext);
    var parentElement = headline.parentElement;
    var childrenElements = parentElement.children;
    var isVisible = visible;

    for (var i = 1; i < childrenElements.length; i++) {
        var content = childrenElements[i];
        if (isVisible) {
            content.style.display = "block";
        } else {
            content.style.display = "none";
        }
    }

    function toggleVisibilityOfNext (){
        if (isVisible){
            headline.classList.remove("collapsible");
            headline.classList.add("collapsed");
            for (var i = 1; i < childrenElements.length; i++) {
                var content = childrenElements[i];
                content.style.display = "none";
            }
            isVisible = false;
        } else {
            headline.classList.remove("collapsed");
            headline.classList.add("collapsible");
            for (var i = 1; i < childrenElements.length; i++) {
                var content = childrenElements[i];
                content.style.display = "block";
            }
            isVisible = true;
        }
    }
}
