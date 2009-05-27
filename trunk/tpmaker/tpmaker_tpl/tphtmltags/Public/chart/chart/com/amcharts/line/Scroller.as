class com.amcharts.line.Scroller
{
    var __config, __mc, __width, __height, __start, __end, __x_count, __scrollbar_mc, __step_width, __mouse_listener, _width, broadcastMessage, __get__mc;
    function Scroller(target_mc, name, depth, config, start, end, x_count)
    {
        AsBroadcaster.initialize(this);
        __config = config;
        __mc = target_mc.createEmptyMovieClip(name, depth);
        __width = __config.plot_area.width;
        __height = __config.scroller.height;
        __start = start;
        __end = end;
        __x_count = x_count;
        __mc._x = __config.plot_area.margins.left;
        if (__config.scroller.y == undefined)
        {
            __mc._y = __config.plot_area.margins.top - __height;
        }
        else
        {
            __mc._y = com.amcharts.Utils.toCoordinate(__config.scroller.y, __config.height);
        } // end else if
        this.__init();
    } // End of the function
    function __init()
    {
        var main_obj = this;
        var _loc3 = new com.amcharts.Rectangle(__mc, "bg_mc", 0, __width, __height, __config.scroller.bg_color, 0, 0, 0, __config.scroller.bg_alpha, 0);
        var _loc2 = new com.amcharts.Rectangle(__mc, "scrollbar_mc", 1, __width, __height, __config.scroller.color, 0, 0, 0, __config.scroller.alpha, 0);
        __scrollbar_mc = _loc2.mc;
        __step_width = __width / __x_count;
        __scrollbar_mc._width = __step_width * (__end - __start);
        __scrollbar_mc._x = __step_width * __start;
        Mouse.removeListener(__mouse_listener);
        __mouse_listener = new Object();
        __mouse_listener.onMouseMove = function ()
        {
            if (main_obj.__is_dragging == true)
            {
                main_obj.__update(false);
            } // end if
        };
        Mouse.addListener(__mouse_listener);
        __scrollbar_mc.tabEnabled = false;
        __scrollbar_mc.onPress = function ()
        {
            main_obj.__is_dragging = true;
            startDrag (this, false, 0, 0, Math.round(main_obj.__width - _width), 0);
        };
        __scrollbar_mc.onRelease = __scrollbar_mc.onReleaseOutside = function ()
        {
            main_obj.__is_dragging = false;
            main_obj.__update(true);
            stopDrag ();
        };
    } // End of the function
    function __update(update_scroller)
    {
        update_scroller = false;
        var _loc2 = Math.round(__scrollbar_mc._x / __step_width);
        var _loc3 = _loc2 + (__end - __start);
        this.broadcastMessage("onDrag", _loc2, _loc3, update_scroller);
    } // End of the function
    function get mc()
    {
        return (__mc);
    } // End of the function
    function remove()
    {
        Mouse.removeListener(__mouse_listener);
    } // End of the function
    var __is_dragging = false;
} // End of Class
