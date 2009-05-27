class com.amcharts.CheckBox extends com.amcharts.SimpleButton
{
    var __width, __height, __mc, __v_mc, __old_pushed, __index, broadcastMessage, __size, __hit_area_width, __hit_area_height, __get__checkMarkColor, __get__checked, __set__checkMarkColor, __set__checked;
    function CheckBox(target_mc, name, depth, size)
    {
        super(target_mc, name, depth, size, size);
        __width = size;
        __height = size;
    } // End of the function
    function __init()
    {
        var _loc5 = [__border_width + 1, __width / 2, __width - (__border_width + 1), __width / 2, __border_width + 1];
        var _loc4 = [__height / 2, __height - (__border_width + 1), __border_width + 1, __height - (__border_width + __height / 5), __height / 2];
        var _loc3 = new com.amcharts.Shape(__mc, "v_mc", __icon_depth, _loc5, _loc4, __v_color);
        __v_mc = _loc3.mc;
        this.__check();
        super.__init();
    } // End of the function
    function __changeButton(status)
    {
        this.__check();
        if (__pushed != __old_pushed)
        {
            if (__pushed == true)
            {
                this.broadcastMessage("onCheck", __index);
            }
            else
            {
                this.broadcastMessage("onUnCheck", __index);
            } // end if
        } // end else if
        __old_pushed = __pushed;
        super.__changeButton(status);
    } // End of the function
    function __check()
    {
        if (__pushed == true)
        {
            __v_mc._visible = true;
        }
        else
        {
            __v_mc._visible = false;
        } // end else if
    } // End of the function
    function label(text, color, size)
    {
        var _loc2 = new com.amcharts.Text(__mc, "label", __label_depth, __size + __size / 10 + 2);
        _loc2.size = size;
        _loc2.color = color;
        _loc2.txt = text;
        _loc2.y = (__size - _loc2.textHeight) / 2 - 1;
        __hit_area_width = _loc2.x + _loc2.textWidth;
        __hit_area_height = _loc2.textHeight;
        if (__hit_area_height < __height)
        {
            __hit_area_height = __height;
        } // end if
    } // End of the function
    function set checkMarkColor(param)
    {
        __v_color = param;
        //return (this.checkMarkColor());
        null;
    } // End of the function
    function set checked(param)
    {
        __pushed = param;
        this.__check();
        //return (this.checked());
        null;
    } // End of the function
    var __border_width = 1;
    var __corner_radius = 2;
    var __v_color = 0;
    var __border_color = 0;
    var __border_color_pushed = 0;
    var __border_color_Hover = 0;
    var __border_color_pushed_hover = 0;
    var __border_color_active = 16737792;
    var __bg_color = 16777215;
    var __bg_color_pushed = 16777215;
    var __bg_color_hover = 16777215;
    var __bg_color_pushedHover = 16777215;
    var __bg_color_active = 16777215;
    var __pushed = false;
    var __pushable = true;
    var __unpushable = true;
    var __label_depth = 100;
    var __icon_depth = 50;
} // End of Class
