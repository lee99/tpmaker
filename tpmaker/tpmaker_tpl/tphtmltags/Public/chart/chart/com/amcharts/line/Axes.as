class com.amcharts.line.Axes
{
    var __config, __mc, __width, __height;
    function Axes(target_mc, name, depth, config)
    {
        __config = config;
        __mc = target_mc.createEmptyMovieClip(name, depth);
        __mc._x = __config.plot_area.margins.left;
        __mc._y = __config.plot_area.margins.top;
        __width = __config.plot_area.width;
        __height = __config.plot_area.height;
        this.__init();
    } // End of the function
    function __init()
    {
        var _loc2 = __config.axes.x.width;
        if (_loc2 == 0)
        {
            _loc2 = 1;
        } // end if
        var _loc3 = __config.axes.y_left.width;
        if (_loc3 == 0)
        {
            _loc3 = 1;
        } // end if
        if (__config.axes.x.width == 0)
        {
            var _loc6 = new com.amcharts.Line(__mc, "x_axis_mc", 0, [0, __width], [0, 0], 0, __config.axes.x.color, __config.axes.x.alpha);
        }
        else
        {
            _loc6 = new com.amcharts.Rectangle(__mc, "x_axis_mc", 0, __width + 1, __config.axes.x.width, __config.axes.x.color, 0, 0, 0, __config.axes.x.alpha, 0);
        } // end else if
        _loc6.mc._y = __height;
        if (__config.counter.left > 0)
        {
            if (__config.axes.y_left.width == 0)
            {
                var _loc4 = new com.amcharts.Line(__mc, "y_left_axis_mc", 1, [0, 0], [0, __height + _loc2], 0, __config.axes.y_left.color, __config.axes.y_left.alpha);
            }
            else
            {
                _loc4 = new com.amcharts.Rectangle(__mc, "y_left_axis_mc", 1, __config.axes.y_left.width, __height + _loc2, __config.axes.y_left.color, 0, 0, 0, __config.axes.y_left.alpha, 0);
            } // end else if
            _loc4.mc._x = -_loc3 + 1;
        } // end if
        if (__config.counter.right > 0)
        {
            if (__config.axes.y_right.width == 0)
            {
                var _loc5 = new com.amcharts.Line(__mc, "y_right_axis_mc", 2, [0, 0], [0, __height + _loc2], 0, __config.axes.y_right.color, __config.axes.y_right.alpha);
            }
            else
            {
                _loc5 = new com.amcharts.Rectangle(__mc, "y_right_axis_mc", 2, __config.axes.y_right.width, __height + _loc2, __config.axes.y_right.color, 0, 0, 0, __config.axes.y_right.alpha, 0);
            } // end else if
            _loc5.mc._x = __width;
        } // end if
    } // End of the function
} // End of Class
