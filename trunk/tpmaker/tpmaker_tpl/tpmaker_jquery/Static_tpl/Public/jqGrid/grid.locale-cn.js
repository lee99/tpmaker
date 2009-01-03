;(function($){
/**
 * jqGrid English Translation
 * Tony Tomov tony@trirand.com
 * http://trirand.com/blog/ 
 * Dual licensed under the MIT and GPL licenses:
 * http://www.opensource.org/licenses/mit-license.php
 * http://www.gnu.org/licenses/gpl.html
**/
$.jgrid = {};

$.jgrid.defaults = {
	recordtext: "记录",
	loadtext: "Loading...",
	pgtext : "/"
};
$.jgrid.search = {
    caption: "搜索",
    Find: "查找",
    Reset: "重设",
    odata : ['等于', '不等', '少于', '小于或等于','大于','大于或等于', '介于','结束','包含' ]
};
$.jgrid.edit = {
    addCaption: "新增记录",
    editCaption: "编辑记录",
    bSubmit: "提交",
    bCancel: "取消",
	bClose: "关闭",
    processData: "正在执行操作...",
    msg: {
        required:"项目为填项",
        number:"请输入有效的数字",
        minValue:"数字必须大于等于: ",
        maxValue:"数字必须小于等于",
        email: "请输入有效的E-mail地址",
        integer: "请输入整数数字"
    }
};
$.jgrid.del = {
    caption: "删除记录",
    msg: "确定删除所选的记录吗?",
    bSubmit: "删除记录",
    bCancel: "取消",
    processData: "正在执行操作..."
};
$.jgrid.nav = {
	edittext: " ",
    edittitle: "编辑选中的记录",
	addtext:" ",
    addtitle: "增加新记录",
    deltext: " ",
    deltitle: "删除选中的记录",
    searchtext: " ",
    searchtitle: "查找数据",
    refreshtext: "",
    refreshtitle: "重新载入数据",
    alertcap: "注意",
    alerttext: "请选择记录"
};
// setcolumns module
$.jgrid.col ={
    caption: "显示/隐取数据列",
    bSubmit: "提交",
    bCancel: "取消"	
};
$.jgrid.errors = {
	errcap : "出错",
	nourl : "请定义链接地址",
	norecords: "No records to process"
};
})(jQuery);
 