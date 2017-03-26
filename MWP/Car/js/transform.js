$(document).ready(function(){Transform();});	// Once document is ready, call function Transform()

// Transform XML to HTML via XSLT
function Transform(){
	// Download XML data from the server side.
	//var xml = getXMLData("php/createXML.php");	// Not using serverside.. yet

	// Get XSL template at the client side.
	var xsl = getXMLData("car_list.xsl");

	// Only for Mozilla based browsers.
	xsltProcessor = new XSLTProcessor();
	xsltProcessor.importStylesheet(xsl);
	var result = xsltProcessor.transformToFragment(xml, document);

	$("body").append(result);	//append the result to HTML body
}

// Use a GET request to pull data from url.
function getXMLData(url) {
	return $.ajax({type:"GET", url:url, async:false}).responseXML;
}