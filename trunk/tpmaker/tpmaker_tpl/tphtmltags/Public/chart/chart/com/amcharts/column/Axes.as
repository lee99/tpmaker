class com.amcharts.column.Axes
{
    var __config, __mc, __type, __width, __height, __x_color, __y_color, __x_alpha, __y_alpha, __x_width, __y_width;
    function Axes(target_mc, name, depth, config)
    {
        __config = config;
        __mc = target_mc.createEmptyMovieClip(name, depth);
        __mc._x = __config.plot_area.margins.left + 1;
        __mc._y = __config.plot_area.margins.top;
        __type = __config.type;
        __width = __config.plot_area.width;
        __height = __config.plot_area.height;
        if (__type == "bar")
        {
            __x_color = __config.axes.value.color;
            __y_color = __config.axes.category.color;
            __x_alpha = __config.axes.value.alpha;
            __y_alpha = __config.axes.category.alpha;
            __x_width = __config.axes.value.width;
            __y_width = __config.axes.category.width;
        }
        else
        {
            __x_color = __config.axes.category.color;
            __y_color = __config.axes.value.color;
            __x_alpha = __config.axes.category.alpha;
            __y_alpha = __config.axes.value.alpha;
            __x_width = __config.axes.category.width;
            __y_width = __config.axes.value.width;
        } // end else if
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
            var _loc5 = new com.amcharts.Line(__mc, "x_axis_mc", 0, [0, __width], [0, 0], 0, __x_color, __x_alpha);
        }
        else
        {
            _loc5 = new com.amcharts.Rectangle(__mc, "x_axis_mc", 0, __width, __x_width, __x_color, 0, 0, 0, __x_alpha, 0);
        } // end else if
        _loc5.mc._y = __height;
        if (__y_width == 0)
        {
            var _loc4 = new com.amcharts.Line(__mc, "y_axis_mc", 1, [0, 0], [0, __height + _loc2], 0, __y_color, __y_alpha);
        }
        else
        {
            _loc4 = new com.amcharts.Rectangle(__mc, "y_axis_mc", 1, __y_width, __height + _loc2, __y_color, 0, 0, 0, __y_alpha, 0);
        } // end else if
        _loc4.mc._x = -_loc3;
    } // End of the function
} // End of Class
