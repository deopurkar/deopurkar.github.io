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

