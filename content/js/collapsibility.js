document.addEventListener("DOMContentLoaded", function () {
    var headlines = document.getElementsByClassName("collapsible");
    var i;
    for (i = 0; i < headlines.length; i++) {
        addCollapsiblility(headlines[i]);
    }
});

function addCollapsiblility(headline){
    headline.addEventListener("click", toggleVisibilityOfNext);
    headline.nextElementSibling.style.overflow = "hidden";
    headline.nextElementSibling.style.transition = "max-height 0.2s ease-out";

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
