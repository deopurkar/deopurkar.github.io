// bigblow.js --- BigBlow JS file
//
// Copyright (C) 2011-2016 All Right Reserved, Fabrice Niessen
//
// This file is free software: you can redistribute it and/or
// modify it under the terms of the GNU General Public License as
// published by the Free Software Foundation, either version 3 of
// the License, or (at your option) any later version.
//
// This file is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
// GNU General Public License for more details.
//
// Author: Fabrice Niessen <(concat "fniessen" at-sign "pirilampo.org")>
// URL: https://github.com/fniessen/org-html-themes/
// Version: 20140515.1841


// generate contents of minitoc
function generateMiniToc(divId) {
    $('#minitoc').empty().append('<h2>In this section</h2>');
    $('#' + divId).find('h3').each(function(i) {
        let pos = $(this).text().search(" ");
        let text = $(this).text().substring(0, pos);
        $("#minitoc").append("<a href='#" + $(this).attr("id") + "'>"
                             + text + "</a>");
    });
    // Ensure that the target is expanded (hideShow)
    $('#minitoc a[href^="#"]').click(function() {
        var href = $(this).attr('href');
        hsExpandAnchor(href);
    });
}

// display tabs
function tabifySections() {

    // hide TOC (if present)
    $('#table-of-contents').hide();

    // grab the list of `h2' from the page
    var allSections = [];
    $('h1')
        .each(function() {
            // Remove TODO keywords and tags (contained in spans)
            var tabText = $(this).clone().find('span').remove().end()
                .text().trim();
            var tabId = $(this).parent().attr('id');
            if (tabText) {
                // - remove heading number (all leading digits)
                // - remove progress logging (between square brackets)
                // - remove leading and trailing spaces
                tabText = tabText.replace(/^\d+\s+/, '').replace(/\[[\d/%]+\]/, '').trim();

                allSections.push({
                    text: tabText,
                    id: tabId
                });
            }
        });

    // create the tab links
    var tabs = $('<ul id="tabs"></ul>');
    for (i = 0; i < allSections.length; i++) {
        var item = allSections[i];
        html = $('<li><a href="#' + item.id + '">' + item.text + '</a></li>');
        tabs.append(html);
    }

}

function selectTabAndScroll(href) {
    // At this point we assume that href is local (starts with #)
    // alert(href);

    // Find the tab to activate
    var targetTab = $(href).closest('.ui-tabs-panel');
    var targetTabId = targetTab.attr('id');
    var targetTabAriaLabel = targetTab.attr('aria-labelledby');

    var targetTabIndex = $("#content ul li")
        .index($('[aria-labelledby="' + targetTabAriaLabel + '"]'));

    // Activate target tab
    $('#content').tabs('option', 'active', targetTabIndex);

    // Rebuild minitoc
    generateMiniToc(targetTabId);

    // Set the location hash
    // document.location.hash = href;

    // Scroll to top if href was a tab
    if (href == '#' + targetTabId) {
        // alert(targetTabId);
        $.scrollTo(0);
    }
    // Scroll to href if href was not a tab
    else {
        $.scrollTo(href);
    }
}

$(document).ready(function() {
    $('#preamble').remove();
    $('#table-of-contents').remove();

    // Prepare for tabs
    tabifySections();

    // Build the tabs from the #content div
    $('#content').tabs();

    // Set default animation
    $('#content').tabs('option', 'show', true);

    // Rebuild minitoc when a tab is activated
    $('#content').tabs({
        activate: function(event, ui) {
            var divId = ui.newTab.attr('aria-controls');
            generateMiniToc(divId);
        }
    });

    // Required to get the link of the tab in URL
    $('#content ul').localScroll({
        target: '#content',
        duration: 0,
        hash: true
    });

    // Handle hash in URL
    if ($('#content') && document.location.hash) {
        hsExpandAnchor(document.location.hash);
        selectTabAndScroll(document.location.hash);
    }
    // If no hash, build the minitoc anyway for selected tab
    else {
        var divId = $('#content div[aria-expanded=true]').attr('id');
        generateMiniToc(divId);
    }

    // Handle click on internal links
    $('.ui-tabs-panel a[href^="#"]').click(function(e) {
        var href = $(this).attr('href');
        hsExpandAnchor(href);
        selectTabAndScroll(href);
        e.preventDefault();
    });

    // Initialize hideShow
    hsInit();

    // add sticky headers to tables
    $('table').stickyTableHeaders();
});

$(function() {
    $('li > code :contains("[X]")')
        .parent()
            .addClass('checked')
        .end()
        .remove();
    $('li > code :contains("[-]")')
        .parent()
            .addClass('halfchecked')
        .end()
        .remove();
    $('li > code :contains("[ ]")')
        .parent()
            .addClass('unchecked')
        .end()
        .remove();
});

$(function() {
    $('i :contains("[#A]")')
        .replaceWith('<i><span style="color: #F67777;">[#A]</span></i>');
    $('i :contains("[#B]")')
        .replaceWith('<i><span style="color: #B6E864;">[#B]</span></i>');
    $('i :contains("[#C]")')
        .replaceWith('<i><span style="color: #C3DCFF;">[#C]</span></i>');
});

$(function() {
    $('<div id="toTop" class="dontprint"><span>^ Back to Top</span></div>').appendTo('body');

    $(window).scroll(function() {
        if ($(this).scrollTop() != 0) {
            $('#toTop').fadeIn();
        } else {
            $('#toTop').fadeOut();
        }
    });

    $('#toTop').click(function(e) {
        $('html, body').animate({scrollTop: 0}, 800);
        e.preventDefault();                   // Disable default browser behavior
    });
});


$(function() {
    $('.done').parent(':header').parent().find(':header').addClass('DONEheader');
    $('.done').parent(':header').parent().css({color: '#999999'});
});

$(function() {
    $('span.todo').click(function(e) {
        var orgKeyword = $(this).text().trim();
        $('.' + orgKeyword).toggleClass('selected');
        $('#content .' + orgKeyword).parent().parent()
            .toggleClass('match' + orgKeyword);
        $('#left-panel-wrapper .' + orgKeyword).parent()
            .toggleClass('match' + orgKeyword);
        e.preventDefault();
    })
});

$(function() {
    $('.tag span').click(function(e) {
        var orgTag = $(this).text().trim();
        $('.' + orgTag).toggleClass('selected');
        $('#content .' + orgTag).parent().parent().parent()
            .toggleClass('matchtag');
        $('#right-panel-wrapper .' + orgTag).parent().parent()
            .toggleClass('matchtag');
        e.preventDefault();
    })
});

function clickPreviousTab() {
    var active = $('#content').tabs('option', 'active');
    // Avoid going back to last tab
    if (active == 0) return;

    $('#content').tabs('option', 'active', active - 1);

    // Set the location href
    var href = $('#content div[aria-expanded=true]').attr('id');
    document.location.hash = href;
    $.scrollTo(0);
}

function clickNextTab() {
    var active = $('#content').tabs('option', 'active');
    $('#content').tabs('option', 'active', active + 1);

    // Set the location href
    var href = $('#content div[aria-expanded=true]').attr('id');
    document.location.hash = href;
    $.scrollTo(0);
}

function orgDefkey(e) {
    if (!e)
        var e = window.event;
    var keycode = (e.keyCode) ? e.keyCode : e.which;
    var actualkey = String.fromCharCode(keycode);
    switch (actualkey) {
        case "?": // help (dashboard)
        case "h":
            togglePanel(e);
            break;
        case "n": // next
            clickNextTab();
            break;
        case "p": // previous
            clickPreviousTab();
            break;
        // case "b": // scroll down - should be mapped to Shift-SPC
        //     $(window).scrollTop($(window).scrollTop()-$(window).height());
        //     break;
        case "<": // scroll to top
            $(window).scrollTop(0);
            break;
        case ">": // scroll to bottom
            $(window).scrollTop($(document).height());
            break;
        case "-": // collapse all
            hsCollapseAll();
            break;
        case "+": // expand all
            hsExpandAll();
            break;
        case "r": // go to next task
            hsReviewTaskNext();
            break;
        case "R": // go to previous task
            hsReviewTaskPrev();
            break;
        case "q": // quit reviewing
            hsReviewTaskQuit();
            break;
        case "g": // refresh the page (from the server, rather than the cache)
            location.reload(true);
            break;
    }
}

document.onkeypress = orgDefkey;
