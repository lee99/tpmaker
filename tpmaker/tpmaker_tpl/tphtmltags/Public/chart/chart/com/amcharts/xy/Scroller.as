class com.amcharts.xy.Scroller
{
    var __config, __mc, __type, __width, __height, __scroller_width, __scroller_height, __scrollbar_width, __scrollbar_height, __scrollbar_mc, __interval, broadcastMessage, __get__mc;
    function Scroller(target_mc, name, depth, type, config)
    {
        AsBroadcaster.initialize(this);
        __config = config;
        __mc = target_mc.createEmptyMovieClip(name, depth);
        __type = type;
        __width = __config.plot_area.width;
        __height = __config.plot_area.height;
        this.__init();
    } // End of the function
    function __init()
    {
        if (__type == "horizontal")
        {
            __scroller_width = __width;
            __scroller_height = __config.scroller.height;
            __mc._x = __config.plot_area.margins.left + __config.dx;
            __mc._y = __config.plot_area.margins.top - __config.scroller.height + __config.dy;
            __scrollbar_width = (__config.right - __config.left) / (__config.max_x - __config.min_x) * __scroller_width;
            __scrollbar_height = __config.scroller.height;
            var t = 0;
            var b = 0;
            var l = 0;
            var r = Math.round(__scroller_width - __scrollbar_width);
        }
        else
        {
            __scroller_height = __height;
            __scroller_width = __config.scroller.height;
            __mc._x = __config.plot_area.margins.left + __width + __config.dx + 1;
            __mc._y = __config.plot_area.margins.top + __config.dy;
            __scrollbar_height = (__config.top - __config.bottom) / (__config.max_y - __config.min_y) * __scroller_height;
            __scrollbar_width = __config.scroller.height;
            var t = 0;
            var b = Math.round(__scroller_height - __scrollbar_height);
            var l = 0;
            var r = 0;
        } // end else if
        var main_obj = this;
        var _loc2 = new com.amcharts.Rectangle(__mc, "bg_mc", 0, __scroller_width, __scroller_height, __config.scroller.bg_color, 0, 0, 0, __config.scroller.bg_alpha, 0);
        __scrollbar_mc = new com.amcharts.Rectangle(__mc, "scrollbar_mc", 1, __scrollbar_width, __scrollbar_height, __config.scroller.color, 0, 0, 0, __config.scroller.alpha, 0).mc;
        if (__type == "horizontal")
        {
            if (__config.values.x.reverse == true)
            {
                __scrollbar_mc._x = __scroller_width / (__config.max_x - __config.min_x) * (__config.max_x - __config.right);
            }
            else
            {
                __scrollbar_mc._x = __scroller_width / (__config.max_x - __config.min_x) * (__config.left - __config.min_x);
            } // end else if
        }
        else if (__config.values.y.reverse == true)
        {
            __scrollbar_mc._y = __scroller_height - __scrollbar_height - __scroller_height / (__config.max_y - __config.min_y) * (__config.max_y - __config.top);
        }
        else
        {
            __scrollbar_mc._y = __scroller_height - __scrollbar_height - __scroller_height / (__config.max_y - __config.min_y) * (__config.bottom - __config.min_y);
        } // end else if
        __scrollbar_mc.tabEnabled = false;
        __scrollbar_mc.onPress = function ()
        {
            clearInterval(__interval);
            main_obj.__interval = setInterval(main_obj, "__update", 20);
            startDrag (this, false, l, t, r, b);
        };
        __scrollbar_mc.onRelease = __scrollbar_mc.onReleaseOutside = __scrollbar_mc.onReleaseOutside = function ()
        {
            clearInterval(main_obj.__interval);
            main_obj.__update();
            stopDrag ();
        };
    } // End of the function
    function __update()
    {
        if (__type == "horizontal")
        {
            var _loc2 = __scrollbar_mc._x / (__scroller_width / (__config.max_x - __config.min_x)) + __config.min_x;
        }
        else
        {
            _loc2 = __config.min_y + (__scroller_height - __scrollbar_height - __scrollbar_mc._y) / (__scroller_height / (__config.max_y - __config.min_y));
        } // end else if
        this.broadcastMessage("onScroll", _loc2);
    } // End of the function
    function get mc()
    {
        return (__mc);
    } // End of the function
    function die()
    {
        clearInterval(__interval);
        if (__mc != undefined)
        {
            __mc._visible = false;
        } // end if
    } // End of the function
} // End of Class
