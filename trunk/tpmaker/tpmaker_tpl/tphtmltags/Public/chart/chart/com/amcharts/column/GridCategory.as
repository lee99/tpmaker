class com.amcharts.column.GridCategory
{
    var __config, __data, __type, __mc, __backgrounds_mc, __grid_mc, __alpha, __color, __dashed, __dash_length, __height, __width, __dx, __dy, __grid_count, __grid_interval;
    function GridCategory(target_mc, name, depth, config, data)
    {
        __config = config;
        __data = data;
        __type = config.type;
        __mc = target_mc.createEmptyMovieClip(name, depth);
        __backgrounds_mc = __mc.createEmptyMovieClip("backgrounds_mc", 0);
        __grid_mc = __mc.createEmptyMovieClip("grid_mc", 1);
        __alpha = __config.grid.category.alpha;
        __color = __config.grid.category.color;
        __dashed = __config.grid.category.dashed;
        __dash_length = __config.grid.category.dash_length;
        __height = __config.plot_area.height;
        __width = __config.plot_area.width;
        if (__type == "bar")
        {
            __height = __config.plot_area.width;
            __width = __config.plot_area.height;
        } // end if
        __dx = __config.dx;
        __dy = __config.dy;
        __mc._x = __config.plot_area.margins.left + __dx;
        __mc._y = __config.height - __config.plot_area.margins.bottom + __dy;
        __grid_count = data.series.length + 1;
        __grid_interval = __width / (__grid_count - 1);
        this.__init();
    } // End of the function
    function __init()
    {
        for (var _loc2 = 0; _loc2 < __grid_count; ++_loc2)
        {
            if (__data.series[_loc2].bg_color != undefined)
            {
                if (__type == "bar")
                {
                    var _loc5 = new com.amcharts.Rectangle(__backgrounds_mc, "bg_mc" + _loc2, _loc2, __height, -__grid_interval, __data.series[_loc2].bg_color, 0, 0, 0, __data.series[_loc2].bg_alpha, 0);
                    _loc5.mc._y = -_loc2 * __grid_interval;
                    continue;
                } // end if
                _loc5 = new com.amcharts.Rectangle(__backgrounds_mc, "bg_mc" + _loc2, _loc2, __grid_interval, -__height, __data.series[_loc2].bg_color, 0, 0, 0, __data.series[_loc2].bg_alpha, 0);
                _loc5.mc._x = _loc2 * __grid_interval;
            } // end if
        } // end of for
        for (var _loc2 = 0; _loc2 < __grid_count; ++_loc2)
        {
            if ((_loc2 - __config.values.category.start_from + 1) / __config.values.category.frequency == int((_loc2 - __config.values.category.start_from + 1) / __config.values.category.frequency) || __data.series[_loc2].show == true)
            {
                if (__dashed == true)
                {
                    if (__type == "bar")
                    {
                        var _loc3 = new com.amcharts.DashedLine(__grid_mc, "grid_mc" + _loc2, _loc2, [0, __height], [-__grid_interval * _loc2, -__grid_interval * _loc2], 0, __dash_length, __color);
                    }
                    else
                    {
                        _loc3 = new com.amcharts.DashedLine(__grid_mc, "grid_mc" + _loc2, _loc2, [__grid_interval * _loc2, __grid_interval * _loc2], [0, -__height], 0, __dash_length, __color);
                    } // end else if
                }
                else if (__type == "bar")
                {
                    _loc3 = new com.amcharts.Line(__grid_mc, "grid_mc" + _loc2, _loc2, [0, __height], [-__grid_interval * _loc2, -__grid_interval * _loc2], 0, __color);
                }
                else
                {
                    _loc3 = new com.amcharts.Line(__grid_mc, "grid_mc" + _loc2, _loc2, [__grid_interval * _loc2, __grid_interval * _loc2], [0, -__height], 0, __color);
                } // end else if
                _loc3.mc._alpha = __alpha;
                if (__dx != 0 && __dy != 0)
                {
                    if (__dashed == true)
                    {
                        if (__type == "bar")
                        {
                            var _loc4 = new com.amcharts.DashedLine(__grid_mc, "grid_mc" + _loc2, _loc2 + __grid_count, [-__dx, 0], [-__grid_interval * _loc2 - __dy, -__grid_interval * _loc2], 0, __dash_length, __color);
                        }
                        else
                        {
                            _loc4 = new com.amcharts.DashedLine(__grid_mc, "grid_mc" + _loc2, _loc2 + __grid_count, [__grid_interval * _loc2 - __dx, __grid_interval * _loc2], [-__dy, 0], 0, __dash_length, __color);
                        } // end else if
                    }
                    else if (__type == "bar")
                    {
                        _loc4 = new com.amcharts.Line(__grid_mc, "grid_mc" + _loc2, _loc2 + __grid_count, [-__dx, 0], [-__grid_interval * _loc2 - __dy, -__grid_interval * _loc2], 0, __color);
                    }
                    else
                    {
                        _loc4 = new com.amcharts.Line(__grid_mc, "grid_mc" + _loc2, _loc2 + __grid_count, [__grid_interval * _loc2 - __dx, __grid_interval * _loc2], [-__dy, 0], 0, __color);
                    } // end else if
                    _loc4.mc._alpha = __alpha;
                } // end if
            } // end if
        } // end of for
    } // End of the function
} // End of Class
