/*
 *	This script is used for WebFX Api pages
 *
 *	It defines one funtion and includes helptip.js, helptip.css and webfxapi.css
 */


document.write( "<link type='text/css' rel='stylesheet' href='local/webfxapi.css' />" );

function toggleMethodArguments( e, a ) {
	if ( a && a.nextSibling &&
		typeof a.nextSibling.innerHTML != "undefined" &&
		typeof showHelpTip != "undefined" ) {

		showHelpTip( e, a.nextSibling.innerHTML );

	}
}