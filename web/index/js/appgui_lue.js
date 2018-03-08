/**
 * Application GUI.
 *
 * Snapshots were created using synedra View Personal (http://www.synedra.com),
 *  version 14 for Microsoft Windows:
 * - Right click on the thumbnail in the left 'Document tree area',
 * - Choose 'Convert to JPEG'.
 */

// Default window level presets.
dwv.tool.defaultpresets = {};

// Image decoders (for web workers)
dwv.image.decoderScripts = {
    "jpeg2000": "dicom/decoders/pdfjs/decode-jpeg2000.js",
    "jpeg-lossless": "dicom/decoders/rii-mango/decode-jpegloss.js",
    "jpeg-baseline": "dicom/decoders/pdfjs/decode-jpegbaseline.js"
};

// Window
dwv.gui.getWindowSize = dwv.gui.base.getWindowSize;
// get element
dwv.gui.getElement = dwv.gui.base.getElement;
// Progress
dwv.gui.displayProgress = function (/*percent*/) {};

// check browser support
dwv.browser.check();

// test data line
dwv.addDataLine = function (id, fileroot, dcmid)
{
    var mainDiv = document.getElementById("div_2d");

    // dwv container
    var dwvDiv = document.createElement("div");
    dwvDiv.id = id;
    dwvDiv.className = "dwv_div"
    var layConDiv = document.createElement("div");
    layConDiv.className = "layerContainer";
    var imgCanvas = document.createElement("canvas");
    imgCanvas.className = "imageLayer";
    var aaa = document.createElement("div");
    aaa.innerHTML = "<a target='_blank' href='dcmView?id="+dcmid+"#'>查看<a>";
    layConDiv.appendChild(imgCanvas);
    layConDiv.appendChild(aaa);
    
    dwvDiv.appendChild(layConDiv);
    mainDiv.appendChild(dwvDiv);

    // dwv application
    var config = {
        "containerDivId": id,
        "skipLoadUrl": true
    };
    var url = "dicom/tests/data/" + fileroot + ".dcm";
    var app = new dwv.App();
    app.init(config);
    // display loading time
    var listener = function (event) {
        if (event.type === "load-start") {
            console.time("load-data::"+fileroot);
        }
        else {
            console.timeEnd("load-data::"+fileroot);
        }
    };
    app.addEventListener("load-start", listener);
    app.addEventListener("load-end", listener);
    // load data
    app.loadURLs([url]);

};
