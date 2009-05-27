class com.amcharts.xy.Axes
{
    var __config, __mc, __width, __height, __x_color, __y_color, __x_alpha, __y_alpha, __x_width, __y_width, __x_axis_mc, __y_axis_mc;
    function Axes(target_mc, name, depth, config)
    {
        __config = config;
        __mc = target_mc.createEmptyMovieClip(name, depth);
        __mc._x = __config.plot_area.margins.left + 1;
        __mc._y = __config.plot_area.margins.top;
        __width = __config.plot_area.width;
        __height = __config.plot_area.height;
        __x_color = __config.axes.x.color;
        __y_color = __config.axes.y.color;
        __x_alpha = __config.axes.x.alpha;
        __y_alpha = __config.axes.y.alpha;
        __x_width = __config.axes.x.width;
        __y_width = __config.axes.y.width;
        this.__init();
    } // End of the function
    function __init()
    {
        var _loc2 = __x_width;
        if (_loc2 == 0)
        {
            _loc2 = 1;
        } // end if
        var _loc3 = __y_width;
        if (_loc3 == 0)
        {
            _loc3 = 1;
        } // end if
        if (__x_width == 0)
        {
            var _loc5 = new com.amcharts.Line(__mc, "series_mc", 0, [0, __width], [0, 0], 0, __x_color, __x_alpha);
        }
        else
        {
            _loc5 = new com.amcharts.Rectangle(__mc, "series_mc", 0, __width, __x_width, __x_color, 0, 0, 0, __x_alpha, 0);
        } // end else if
        __x_axis_mc = _loc5.mc;
        __x_axis_mc._y = __height;
        if (__y_width == 0)
        {
            var _loc4 = new com.amcharts.Line(__mc, "yAxis_mc", 1, [0, 0], [0, __height + _loc2], 0, __y_color, __y_alpha);
        }
        else
        {
            _loc4 = new com.amcharts.Rectangle(__mc, "yAxis_mc", 1, __y_width, __height + _loc2, __y_color, 0, 0, 0, __y_alpha, 0);
        } // end else if
        __y_axis_mc = _loc4.mc;
        __y_axis_mc._x = -_loc3;
    } // End of the function
} // End of Class
