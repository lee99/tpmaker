class com.amcharts.line.Values
{
    var __config, __axis, __max, __min, __step, __min_real, __values_mc, __ticks_mc, __height, __freq, __reverse, __duration, __grid_count, __grid_interval, __start_count, __end_count;
    function Values(target_mc, name, depth, axis, min, max, step, min_real, config, ticks_depth)
    {
        __config = config;
        __axis = axis;
        __max = max;
        __min = min;
        __step = step;
        __min_real = min_real;
        __values_mc = target_mc.createEmptyMovieClip(name, depth);
        __values_mc._y = __config.height - __config.plot_area.margins.bottom;
        __ticks_mc = target_mc.createEmptyMovieClip("ticks" + axis, ticks_depth);
        __ticks_mc._y = __config.height - __config.plot_area.margins.bottom;
        __height = __config.plot_area.height;
        __freq = __config.values[__axis].frequency;
        __reverse = __config.values[__axis].reverse;
        __duration = __config.values[__axis].duration;
        if (__duration != "ss" && __duration != "mm" && __duration != "hh" && __duration != "DD")
        {
            __duration = undefined;
        } // end if
        __grid_count = Math.round((__max - __min) / __step) + 1;
        __grid_interval = __height / (__grid_count - 1);
        if (__config.values[__axis].skip_first == true)
        {
            __start_count = 1;
        }
        else
        {
            __start_count = 0;
        } // end else if
        if (__config.values[__axis].skip_last == true)
        {
            __end_count = __grid_count - 1;
        }
        else
        {
            __end_count = __grid_count;
        } // end else if
        this.__init();
    } // End of the function
    function __init()
    {
        var _loc5 = 0;
        var _loc10 = false;
        for (var _loc2 = __start_count; _loc2 < __end_count; _loc2 = _loc2 + __freq)
        {
            var _loc6 = com.amcharts.Utils.fixedMath(__min, _loc2 * __step, "plus");
            if (__config.values[__axis].integers_only == false)
            {
                var _loc7 = _loc6.toString().split(".")[1].length;
                if (_loc7 > _loc5)
                {
                    _loc5 = _loc7;
                } // end if
                if (_loc7 > 0 && _loc5 < __config.digits_after_decimal)
                {
                    _loc5 = __config.digits_after_decimal;
                } // end if
            } // end if
            if ((Math.abs(_loc6) <= __config.scientific_min || Math.abs(_loc6) >= __config.scientific_max) && _loc6 != 0)
            {
                _loc10 = true;
            } // end if
        } // end of for
        if (__config.axes[__axis].logarithmic == true)
        {
            var _loc14 = Math.log(__max) * 4.342945E-001 - Math.log(__min_real) * 4.342945E-001;
            if (_loc14 > 2)
            {
                var _loc13 = true;
                __start_count = Math.log(__min_real) * 4.342945E-001;
                __end_count = _loc14;
                if (__end_count - __start_count > __config.grid[__axis].approx_count)
                {
                    __freq = __freq * Math.ceil((__end_count - __start_count) / __config.grid[__axis].approx_count);
                } // end if
                if (__config.values[__axis].skip_first == true)
                {
                    __start_count = __start_count + __freq;
                } // end if
                if (__config.values[__axis].skip_last == true)
                {
                    __end_count = __end_count - __freq;
                } // end if
            } // end if
            __grid_interval = __height / _loc14;
        } // end if
        var _loc12 = 0;
        if (__duration != undefined)
        {
            var _loc11 = com.amcharts.Durations.getMaxInterval(__max, __duration);
        } // end if
        for (var _loc2 = __start_count; _loc2 < __end_count; _loc2 = _loc2 + __freq)
        {
            ++_loc12;
            if (__reverse == true)
            {
                var _loc3 = com.amcharts.Utils.fixedMath(__min, (__grid_count - _loc2 - 1) * __step, "plus");
            }
            else
            {
                _loc3 = com.amcharts.Utils.fixedMath(__min, _loc2 * __step, "plus");
            } // end else if
            if (__config.values[__axis].integers_only == true && _loc3 != int(_loc3))
            {
                continue;
            } // end if
            if (__config.axes[__axis].logarithmic == true)
            {
                if (_loc3 == 0)
                {
                    _loc3 = __min_real;
                } // end if
                if (_loc13 == true)
                {
                    _loc3 = Math.pow(10, _loc2);
                } // end if
                if (_loc3 > __max)
                {
                    break;
                } // end if
                if (_loc3 < __min_real)
                {
                    continue;
                } // end if
                var _loc8 = Math.log(_loc3) * 4.342945E-001 - Math.log(__min_real) * 4.342945E-001;
                var _loc9 = __grid_interval * _loc8;
                if (__config.values[__axis].reverse == true)
                {
                    _loc9 = __height - _loc9;
                } // end if
            }
            else
            {
                _loc9 = __grid_interval * _loc2;
            } // end else if
            if (__duration != undefined)
            {
                var _loc4 = com.amcharts.Durations.formatDuration(_loc3, __duration, "", __config.strings, _loc11, __config.decimals_separator, __config.thousands_separator, _loc5);
            }
            else
            {
                _loc4 = com.amcharts.Utils.formatNumber(_loc3, __config.decimals_separator, __config.thousands_separator, _loc5, false, false, undefined, _loc10);
            } // end else if
            if (__config.values[__axis].unit_position == "left")
            {
                _loc4 = __config.values[__axis].unit + _loc4;
            }
            else
            {
                _loc4 = _loc4 + __config.values[__axis].unit;
            } // end else if
            new com.amcharts.line.Value(__values_mc, "value_mc" + _loc2, _loc2, __config, __axis, -_loc9, undefined, _loc4, __config.values[__axis].color, __config.values[__axis].text_size, __config.values[__axis].inside, __config.values[__axis].rotate, false, __config.axes[__axis].tick_length);
        } // end of for
    } // End of the function
} // End of Class
