function $(obj){
 return reobj=(typeof(obj)=="object") ? obj : document.getElementById(obj);
 /*var reobj=(typeof(obj)=="object") ? obj : document.getElementById(obj);
 reobj=(reobj==null) ? document.getElementByName(obj) : reobj;
 if (reobj==null) {
 return null;
 } else {
 return reobj;
 }*/
}