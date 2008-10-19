
var JS_PATH ="../public/js/";
var IMG_PATH ="../public/images/";
var URL = '__URL__';
var APP	 ='__APP__';
var PUBLIC = '../public/';
var REQUEST_URI = '{$_SERVER.REQUEST_URI}';



var xajaxRequestUri=REQUEST_URI;
var xajaxDebug=false;
var xajaxStatusMessages=false;
var xajaxWaitCursor=true;
var xajaxDefinedGet=0;
var xajaxDefinedPost=1;
var xajaxLoaded=false;



Spry.Utils.addLoadListener(function() {
	var onloadCallback = function(e){ initShowGotoBCR(); }; // body
	Spry.$$("body").addEventListener('load', onloadCallback, false).forEach(function(n){ onloadCallback.call(n); });
});
