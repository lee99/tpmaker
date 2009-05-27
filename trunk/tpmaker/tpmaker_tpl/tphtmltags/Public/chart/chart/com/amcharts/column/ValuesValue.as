class com.amcharts.column.ValuesValue
{
    var __config, __type, __mc, __values_mc, __ticks_mc, __max, __min, __step, __min_real, __height, __freq, __text_width, __text_color, __text_size, __grid_count, __grid_interval, __tick_length, __tick_color, __tick_alpha, __duration, __start_count, __end_count, __widest_value, __get__mc, __get__widest;
    function ValuesValue(target_mc, name, depth, min, max, step, min_real, config)
    {
        __config = config;
        __type = __config.type;
        __mc = target_mc.createEmptyMovieClip(name, depth);
        __mc._y = __config.height - __config.plot_area.margins.bottom;
        __values_mc = __mc.createEmptyMovieClip("values_mc", 0);
        __ticks_mc = __mc.createEmptyMovieClip("ticks_mc", 1);
        __max = max;
        __min = min;
        __step = step;
        __min_real = min_real;
        __height = __config.plot_area.height;
        if (__type == "bar")
        {
            __height = __config.plot_area.width;
        } // end if
        __freq = __config.values.value.frequency;
        __text_width = __config.plot_area.margins.left - __config.axes.value.tick_length - __config.axes.value.width + 1;
        __text_color = __config.values.value.color;
        __text_size = __config.values.value.text_size;
        __grid_count = Math.round((__max - __min) / __step) + 1;
        __grid_interval = __height / (__grid_count - 1);
        __tick_length = __config.axes.value.tick_length;
        __tick_color = __config.axes.value.color;
        __tick_alpha = __config.axes.value.alpha;
        __duration = __config.values.value.duration;
        if (__config.values.value.skip_first == true)
        {
            __start_count = 1;
        }
        else
        {
            __start_count = 0;
        } // end else if
        if (__config.values.value.skip_last == true)
        {
            __end_count = __grid_count - 1;
        }
        else
        {
            __end_count = __grid_count;
        } // end else if
        __widest_value = 0;
        this.__init();
    } // End of the function
    function __init()
    {
        var _loc5 = 0;
        var _loc11 = false;
        for (var _loc2 = __start_count; _loc2 < __end_count; _loc2 = _loc2 + __freq)
        {
            var _loc6 = com.amcharts.Utils.fixedMath(__min, _loc2 * __step, "plus");
            if (__config.values.value.integers_only == false)
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
                _loc11 = true;
            } // end if
        } // end of for
        if (__config.axes.value.logarithmic == true)
        {
            var _loc15 = Math.log(__max) * 4.342945E-001 - Math.log(__min_real) * 4.342945E-001;
            if (_loc15 > 2)
            {
                var _loc14 = true;
                __start_count = Math.log(__min_real) * 4.342945E-001;
                __end_count = _loc15;
                if (__end_count - __start_count > __config.grid.value.approx_count)
                {
                    __freq = __freq * Math.ceil((__end_count - __start_count) / __config.grid.value.approx_count);
                } // end if
                if (__config.values.value.skip_first == true)
                {
                    __start_count = __start_count + __freq;
                } // end if
                if (__config.values.value.skip_last == true)
                {
                    __end_count = __end_count - __freq;
                } // end if
            } // end if
            __grid_interval = __height / _loc15;
        } // end if
        if (__duration != undefined)
        {
            var _loc12 = com.amcharts.Durations.getMaxInterval(__max, __duration);
        } // end if
        var _loc13 = 0;
        for (var _loc2 = __start_count; _loc2 < __end_count; _loc2 = _loc2 + __freq)
        {
            ++_loc13;
            if (__config.values.value.reverse == true)
            {
                var _loc3 = com.amcharts.Utils.fixedMath(__min, (__grid_count - _loc2 - 1) * __step, "plus");
            }
            else
            {
                _loc3 = com.amcharts.Utils.fixedMath(__min, _loc2 * __step, "plus");
            } // end else if
            if (__config.values.value.integers_only == true && _loc3 != int(_loc3))
            {
                continue;
            } // end if
            if (__config.axes.value.logarithmic == true)
            {
                if (_loc3 == 0)
                {
                    _loc3 = __min_real;
                } // end if
                if (_loc14 == true)
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
                var _loc9 = Math.log(_loc3) * 4.342945E-001 - Math.log(__min_real) * 4.342945E-001;
                var _loc10 = __grid_interval * _loc9;
                if (__config.values.value.reverse == true)
                {
                    _loc10 = __height - _loc10;
                } // end if
            }
            else
            {
                _loc10 = __grid_interval * _loc2;
            } // end else if
            if (__duration != undefined)
            {
                var _loc4 = com.amcharts.Durations.formatDuration(_loc3, __duration, "", __config.strings, _loc12, __config.decimals_separator, __config.thousands_separator, _loc5);
            }
            else
            {
                _loc4 = com.amcharts.Utils.formatNumber(_loc3, __config.decimals_separator, __config.thousands_separator, _loc5, false, false, undefined, _loc11);
            } // end else if
            if (__config.values.value.unit_position == "left")
            {
                _loc4 = __config.values.value.unit + _loc4;
            }
            else
            {
                _loc4 = _loc4 + __config.values.value.unit;
            } // end else if
            var _loc8 = new com.amcharts.column.Value(__values_mc, "value_mc" + _loc2, _loc2, __config, _loc10, undefined, _loc4, __config.values.value.color, __config.values.value.text_size, __config.values.value.inside, __config.values.value.rotate, false, __config.axes.value.tick_length);
            if (_loc8.textWidth > __widest_value)
            {
                __widest_value = _loc8.textWidth;
            } // end if
        } // end of for
    } // End of the function
    function get widest()
    {
        return (__widest_value);
    } // End of the function
    function get mc()
    {
        return (__mc);
    } // End of the function
} // End of Class
