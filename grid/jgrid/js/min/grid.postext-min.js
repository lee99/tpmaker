/*
 * jqGrid 3.2.2
 * Tony Tomov.
 * http://www.trirand.com/blog
 * Dual licensed under the MIT and GPL licenses:
 * http://www.opensource.org/licenses/mit-license.php
 * http://www.gnu.org/licenses/gpl.html
 * 
 */

;(function($){$.fn.extend({getPostData:function(){var $t=this[0];if(!$t.grid)return;return $t.p.postData;},setPostData:function(newdata){var $t=this[0];if(!$t.grid)return;if(typeof(newdata)==='object'){$t.p.postData=newdata;}
else{alert("Error: cannot add a non-object postData value. postData unchanged.");}},appendPostData:function(newdata){var $t=this[0];if(!$t.grid)return;if(typeof(newdata)==='object'){$.extend($t.p.postData,newdata);}
else{alert("Error: cannot append a non-object postData value. postData unchanged.");}},setPostDataItem:function(key,val){var $t=this[0];if(!$t.grid)return;$t.p.postData[key]=val;},getPostDataItem:function(key){var $t=this[0];if(!$t.grid)return;return $t.p.postData[key];},removePostDataItem:function(key){var $t=this[0];if(!$t.grid)return;delete $t.p.postData[key];},getUserData:function(){var $t=this[0];if(!$t.grid)return;return $t.p.userData;},getUserDataItem:function(key){var $t=this[0];if(!$t.grid)return;return $t.p.userData[key];}});})(jQuery);