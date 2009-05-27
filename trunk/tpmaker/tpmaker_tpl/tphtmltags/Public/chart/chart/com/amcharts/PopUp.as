class com.amcharts.PopUp
{
    var __x, __y, __mc, __align, __get__mc;
    function PopUp(target_mc, name, depth, message, x, y, width, bg_color, text_color, align, alpha, text_size)
    {
        __bg_color = bg_color;
        __text_color = text_color;
        __width = width;
        __x = x;
        __y = y;
        __mc = target_mc.createEmptyMovieClip(name, depth);
        __align = align || "center";
        if (alpha != undefined)
        {
            __alpha = alpha;
        } // end if
        if (text_size != undefined)
        {
            __text_size = text_size;
        } // end if
        this.__init(message);
    } // End of the function
    function __init(message)
    {
        var _loc2 = new com.amcharts.Text(__mc, "popup_text", 10, __x + __margins, __y + __margins, __width - 2 * __margins);
        _loc2.color = __text_color;
        _loc2.size = __text_size;
        _loc2.htmlTxt = message;
        _loc2.align = __align;
        _loc2.height;
        var _loc6 = 2 * __margins + _loc2.textHeight;
        var _loc4 = new com.amcharts.Rectangle(__mc, "bg", 0, __width, _loc6, __bg_color, 0, 0, 0, __alpha, 0);
        _loc4.mc._x = __x;
        _loc4.mc._y = __y;
        var _loc3 = __mc.attachMovie("x_mc", "x_mc", 5);
        _loc3._x = __x + __width;
        _loc3._y = __y;
        var _loc5 = new Color(_loc3);
        _loc5.setRGB(__text_color);
        var main_obj = this;
        _loc3.onRelease = function ()
        {
            main_obj.__mc._visible = false;
        };
    } // End of the function
    function get mc()
    {
        return (__mc);
    } // End of the function
    function remove()
    {
        if (__mc != undefined)
        {
            __mc._visible = false;
        } // end if
    } // End of the function
    var __bg_color = 16777215;
    var __width = 300;
    var __text_color = 0;
    var __margins = 15;
    var __alpha = 100;
    var __text_size = 11;
} // End of Class
