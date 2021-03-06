/**
 * Application launcher.
 */
// var dcmUrl = "";
// start app function
function startApp() {
    // gui setup
    dwv.gui.setup();

    // main application
    var myapp = new dwv.App();

    //myapp.loadURLs(["http://localhost:8080/rjsj/dicom/tests/data/bbmri-53323419.dcm"]);    
    myapp.loadURLs([dcmUrl]);    
    
    // initialise the application
    var options = {
        "containerDivId": "dwv",
        "fitToWindow": true,
        "gui": ["tool", "load", "help", "undo", "version", "tags", "drawList"],
        "loaders": ["File", "Url"],
        "tools": ["Scroll", "WindowLevel", "ZoomAndPan", "Draw", "Livewire", "Filter", "Floodfill"],
        "filters": ["Threshold", "Sharpen", "Sobel"],
        "shapes": ["Arrow", "Ruler", "Protractor", "Rectangle", "Roi", "Ellipse", "FreeHand"],
        "isMobile": false,
        "helpResourcesPath": "../../resources/help"
    };
    if ( dwv.browser.hasInputDirectory() ) {
        options.loaders.splice(1, 0, "Folder");
    }
    myapp.init(options);


    // help
    // TODO Seems accordion only works when at end...
    $("#accordion").accordion({ collapsible: "true", active: "false", heightStyle: "content" });
    apploaded =true;
}

// Image decoders (for web workers)
dwv.image.decoderScripts = {
    "jpeg2000": "../../decoders/pdfjs/decode-jpeg2000.js",
    "jpeg-lossless": "../../decoders/rii-mango/decode-jpegloss.js",
    "jpeg-baseline": "../../decoders/pdfjs/decode-jpegbaseline.js"
};

// status flags
var domContentLoaded = false;
var i18nInitialised = false;
// launch when both DOM and i18n are ready
function launchApp() {
    if ( domContentLoaded && i18nInitialised ) {
        startApp();
    }
}
// i18n ready?
dwv.i18nOnInitialised( function () {
    // call next once the overlays are loaded
    var onLoaded = function (data) {
        dwv.gui.info.overlayMaps = data;
        i18nInitialised = true;
        launchApp();
    };
    // load overlay map info
    $.getJSON( dwv.i18nGetLocalePath("overlays.json"), onLoaded )
    .fail( function () {
        console.log("Using fallback overlays.");
        $.getJSON( dwv.i18nGetFallbackLocalePath("overlays.json"), onLoaded );
    });
});

// check browser support
dwv.browser.check();
// initialise i18n
dwv.i18nInitialise();

// DOM ready?
$(document).ready( function() {
    domContentLoaded = true;
    launchApp();
});
