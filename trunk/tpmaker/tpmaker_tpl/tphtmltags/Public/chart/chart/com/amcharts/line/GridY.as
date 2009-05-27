class com.amcharts.line.GridY
{
    var __config, __axis, __mc, __min, __max, __step, __min_real, __alpha, __color, __dashed, __dash_length, __fill_alpha, __fill_color, __height, __width;
    function GridY(target_mc, name, depth, axis, config, min, max, step, min_real)
    {
        __config = config;
        __axis = axis;
        __mc = target_mc.createEmptyMovieClip(name, depth);
        __mc._x = __config.plot_area.margins.left;
        __mc._y = __config.height - __config.plot_area.margins.bottom;
        __min = min;
        __max = max;
        __step = step;
        __min_real = min_real;
        __alpha = __config.grid[axis].alpha;
        __color = __config.grid[axis].color;
        __dashed = __config.grid[axis].dashed;
        __dash_length = __config.grid[axis].dash_length;
        __fill_alpha = __config.grid[axis].fill_alpha;
        __fill_color = __config.grid[axis].fill_color;
        __height = __config.plot_area.height;
        __width = __config.plot_area.width;
        if (__config.grid[axis].enabled == true)
        {
            this.__init();
        } // end if
    } // End of the function
    function __init()
    {
        var _loc10 = Math.round((__max - __min) / __step) + 1;
        var _loc11 = __height / (_loc10 - 1);
        var _loc13 = 1;
        var _loc12 = 0;
        var _loc14 = 0;
        var _loc5 = 1;
        if (__config.axes[__axis].logarithmic == true)
        {
            var _loc16 = Math.log(__max) * 4.342945E-001 - Math.log(__min_real) * 4.342945E-001;
            _loc11 = __height / _loc16;
            if (_loc16 > 2)
            {
                var _loc15 = true;
                _loc10 = _loc16;
                _loc12 = Math.log(__min_real) * 4.342945E-001;
                if (_loc10 > __config.grid[__axis].approx_count)
                {
                    _loc13 = Math.ceil(_loc10 / __config.grid[__axis].approx_count);
                } // end if
            } // end if
        } // end if
        for (var _loc2 = _loc12; _loc2 < _loc10; _loc2 = _loc2 + _loc13)
        {
            ++_loc14;
            if (__config.values[__axis].reverse == true)
            {
                var _loc4 = __min + (_loc10 - _loc2 - 1) * __step;
            }
            else
            {
                _loc4 = __min + _loc2 * __step;
            } // end else if
            if (__config.axes[__axis].logarithmic == true)
            {
                if (_loc4 == 0)
                {
                    _loc4 = __min_real;
                } // end if
                if (_loc15 == true)
                {
                    _loc4 = Math.pow(10, _loc2);
                } // end if
                var _loc7 = Math.log(_loc4) * 4.342945E-001 - Math.log(__min_real) * 4.342945E-001;
                var _loc3 = _loc11 * _loc7;
                if (__config.values[__axis].reverse == true)
                {
                    _loc3 = __height - _loc3;
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
                _loc3 = _loc11 * _loc2;
            } // end else if
            if (_loc4 == 0)
            {
                var _loc8 = __alpha * 4;
            }
            else
            {
                _loc8 = __alpha;
            } // end else if
            if (__dashed == true && _loc4 != 0)
            {
                var _loc6 = new com.amcharts.DashedLine(__mc, "grid_mc" + _loc2, __mc.getNextHighestDepth(), [0, __width], [-_loc3, -_loc3], 0, __dash_length, __color);
            }
            else
            {
                _loc6 = new com.amcharts.Line(__mc, "grid_mc" + _loc2, __mc.getNextHighestDepth(), [0, __width], [-_loc3, -_loc3], 0, __color);
            } // end else if
            _loc6.mc._alpha = _loc8;
            if (_loc5 == 1 && __fill_alpha > 0)
            {
                var _loc9 = new com.amcharts.Rectangle(__mc, "fill_mc" + _loc2, __mc.getNextHighestDepth(), __width, _loc3 - previous_pos, __fill_color, 0, 0, 0, __fill_alpha, 0);
                _loc9.mc._y = -_loc3;
                _loc5 = 0;
            }
            else
            {
                ++_loc5;
            } // end else if
            var previous_pos = _loc3;
        } // end of for
    } // End of the function
} // End of Class
