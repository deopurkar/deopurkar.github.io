document.addEventListener("DOMContentLoaded", function () {
    var headlines = document.querySelectorAll(".collapsible");
    var i;
    for (i = 0; i < headlines.length; i++) {
        addCollapsiblility(headlines[i]);
    }
});

function addCollapsiblility(headline){
    headline.addEventListener("click", toggleVisibilityOfNext);
    headline.nextElementSibling.style.overflow = "hidden";
    var content = headline.nextElementSibling;
    content.style.maxHeight = content.scrollHeight + "px";
    content.style.transition = "max-height 0.2s";

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
