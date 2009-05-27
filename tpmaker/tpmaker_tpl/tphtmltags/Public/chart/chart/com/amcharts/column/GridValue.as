class com.amcharts.column.GridValue
{
    var __mc, __config, __grid0_mc, __type, __min, __max, __step, __min_real, __alpha, __color, __dashed, __dash_length, __fill_alpha, __fill_color, __height, __width, __dx, __dy;
    function GridValue(target_mc, name, depth, min, max, step, min_real, config, grid0_mc)
    {
        __mc = target_mc.createEmptyMovieClip(name, depth);
        __config = config;
        __grid0_mc = grid0_mc;
        __type = __config.type;
        __min = min;
        __max = max;
        __step = step;
        __min_real = min_real;
        __alpha = __config.grid.value.alpha;
        __color = __config.grid.value.color;
        __dashed = __config.grid.value.dashed;
        __dash_length = __config.grid.value.dash_length;
        __fill_alpha = __config.grid.value.fill_alpha;
        __fill_color = __config.grid.value.fill_color;
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
        __grid0_mc._x = __config.plot_area.margins.left;
        __grid0_mc._y = __config.height - __config.plot_area.margins.bottom;
        this.__init();
    } // End of the function
    function __init()
    {
        var _loc12 = Math.round((__max - __min) / __step) + 1;
        var _loc13 = __height / (_loc12 - 1);
        var _loc15 = 1;
        var _loc14 = 0;
        var _loc6 = 1;
        if (__config.axes.value.logarithmic == true)
        {
            var _loc17 = Math.log(__max) * 4.342945E-001 - Math.log(__min_real) * 4.342945E-001;
            _loc13 = __height / _loc17;
            if (_loc17 > 2)
            {
                var _loc16 = true;
                _loc12 = _loc17;
                _loc14 = Math.log(__min_real) * 4.342945E-001;
                if (_loc12 > __config.grid.value.approx_count)
                {
                    _loc15 = Math.ceil(_loc12 / __config.grid.value.approx_count);
                } // end if
            } // end if
        } // end if
        for (var _loc3 = _loc14; _loc3 < _loc12; _loc3 = _loc3 + _loc15)
        {
            if (__config.values.value.reverse == true)
            {
                var _loc4 = com.amcharts.Utils.fixedMath(__min, (_loc12 - _loc3 - 1) * __step, "plus");
            }
            else
            {
                _loc4 = com.amcharts.Utils.fixedMath(__min, _loc3 * __step, "plus");
            } // end else if
            if (__config.axes.value.logarithmic == true)
            {
                if (_loc4 == 0)
                {
                    _loc4 = __min_real;
                } // end if
                if (_loc16 == true)
                {
                    _loc4 = Math.pow(10, _loc3);
                } // end if
                var _loc10 = Math.log(_loc4) * 4.342945E-001 - Math.log(__min_real) * 4.342945E-001;
                var _loc2 = _loc13 * _loc10;
                if (__config.values.value.reverse == true)
                {
                    _loc2 = __height - _loc2;
                } // end if
                if (_loc4 > __max)
                {
                    break;
                } // end if
                if (_loc4 < __min_real)
                {
                    continue;
                } // end if
            }
            else
            {
                _loc2 = _loc13 * _loc3;
            } // end else if
            if (_loc4 == 0)
            {
                var _loc5 = __alpha * 4;
                if (__dx != 0 && __dy != 0 && __min < 0 && __max >= 0)
                {
                    if (__type == "bar")
                    {
                        var _loc8 = new com.amcharts.Line(__grid0_mc, "grid0_mc", 0, [_loc2, _loc2, _loc2 + __dx], [0, -__width, -__width + __dy], 0, __color);
                    }
                    else
                    {
                        _loc8 = new com.amcharts.Line(__grid0_mc, "grid0_mc", 0, [0, __width, __width + __dx], [-_loc2, -_loc2, -_loc2 + __dy], 0, __color);
                    } // end if
                } // end else if
                _loc8.mc._alpha = _loc5 + 20;
            }
            else
            {
                _loc5 = __alpha;
            } // end else if
            if (__dashed == true && _loc4 != 0)
            {
                if (__type == "bar")
                {
                    var _loc7 = new com.amcharts.DashedLine(__mc, "grid_mc" + _loc3, __mc.getNextHighestDepth(), [_loc2, _loc2], [0, -__width], 0, __dash_length, __color);
                }
                else
                {
                    _loc7 = new com.amcharts.DashedLine(__mc, "grid_mc" + _loc3, __mc.getNextHighestDepth(), [0, __width], [-_loc2, -_loc2], 0, __dash_length, __color);
                } // end else if
            }
            else if (__type == "bar")
            {
                _loc7 = new com.amcharts.Line(__mc, "grid_mc" + _loc3, __mc.getNextHighestDepth(), [_loc2, _loc2], [0, -__width], 0, __color);
            }
            else
            {
                _loc7 = new com.amcharts.Line(__mc, "grid_mc" + _loc3, __mc.getNextHighestDepth(), [0, __width], [-_loc2, -_loc2], 0, __color);
            } // end else if
            _loc7.mc._alpha = _loc5;
            if (_loc6 == 1 && __fill_alpha > 0)
            {
                if (__type == "bar")
                {
                    var _loc11 = new com.amcharts.Rectangle(__mc, "fill_mc" + _loc3, __mc.getNextHighestDepth(), previous_pos - _loc2, -__width, __fill_color, 0, 0, 0, __fill_alpha, 0);
                    _loc11.mc._x = _loc2;
                }
                else
                {
                    _loc11 = new com.amcharts.Rectangle(__mc, "fill_mc" + _loc3, __mc.getNextHighestDepth(), __width, _loc2 - previous_pos, __fill_color, 0, 0, 0, __fill_alpha, 0);
                    _loc11.mc._y = -_loc2;
                } // end else if
                _loc6 = 0;
            }
            else
            {
                ++_loc6;
            } // end else if
            var previous_pos = _loc2;
            if (__dx != 0 || __dy != 0)
            {
                if (__dashed == true && _loc4 != 0)
                {
                    if (__type == "bar")
                    {
                        var _loc9 = new com.amcharts.DashedLine(__mc, "grid3d_mc" + _loc3, __mc.getNextHighestDepth(), [_loc2 - __dx, _loc2], [-__dy, 0], 0, __dash_length, __color);
                    }
                    else
                    {
                        _loc9 = new com.amcharts.DashedLine(__mc, "grid3d_mc" + _loc3, __mc.getNextHighestDepth(), [-__dx, 0], [-_loc2 - __dy, -_loc2], 0, __dash_length, __color);
                    } // end else if
                }
                else if (__type == "bar")
                {
                    _loc9 = new com.amcharts.Line(__mc, "grid3d_mc" + _loc3, __mc.getNextHighestDepth(), [_loc2 - __dx, _loc2], [-__dy, 0], 0, __color);
                }
                else
                {
                    _loc9 = new com.amcharts.Line(__mc, "grid3d_mc" + _loc3, __mc.getNextHighestDepth(), [-__dx, 0], [-_loc2 - __dy, -_loc2], 0, __color);
                } // end else if
                _loc9.mc._alpha = _loc5;
            } // end if
        } // end of for
    } // End of the function
} // End of Class
