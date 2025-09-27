// ==UserScript==
// @name         Auto Skip YouTube Ads
// @version      1.1.1
// @description  Speed up and skip YouTube ads automatically (safer)
// @author       jso8910 and others
// @match        *://*.youtube.com/*
// ==/UserScript==

function skipAd() {
    const btn = document.querySelector('.videoAdUiSkipButton,.ytp-ad-skip-button-modern');
    if (btn) btn.click();

    const video = document.querySelector('video');
    if (video && document.querySelector('.ad-showing')) {
        video.playbackRate = 16; // Fast-forward ad
    } else if (video) {
        video.playbackRate = 1; // Restore normal speed
    }
}

setInterval(skipAd, 500);