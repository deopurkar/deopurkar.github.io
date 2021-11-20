document.addEventListener("DOMContentLoaded", function () {
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
