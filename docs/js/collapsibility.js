document.addEventListener("DOMContentLoaded", function () {
    var headlines = document.querySelectorAll(".collapsible");
    var i;
    for (i = 0; i < headlines.length; i++) {
        addCollapsiblility(headlines[i], true);
    }

    var collapsedHeadlines = document.querySelectorAll(".collapsed");
    var i;
    console.log(collapsedHeadlines);
    for (i = 0; i < collapsedHeadlines.length; i++) {
        addCollapsiblility(collapsedHeadlines[i], false);
    }
});

function addCollapsiblility(headline, visible){
    headline.addEventListener("click", toggleVisibilityOfNext);
    var content = headline.nextElementSibling;
    content.style.overflow = "hidden";
    content.style.transition = "max-height 0.2s";
    if (visible) {
        content.style.maxHeight = content.scrollHeight + "px";
    } else {
        content.style.maxHeight = "0px";
    }

    function toggleVisibilityOfNext (){
        var content = headline.nextElementSibling;
        if (content.style.maxHeight != "0px") {
            content.style.maxHeight = "0px";
            headline.classList.remove("collapsible");
            headline.classList.add("collapsed");
        } else {
            content.style.maxHeight = content.scrollHeight + "px";
            headline.classList.remove("collapsed");
            headline.classList.add("collapsible");
        }
    }
}
