class com.amcharts.line.Events
{
    var __target_mc, __config, __data, __popup_depth, __mc, __events_mc, __height, __width, __start, __end, index;
    function Events(target_mc, name, depth, config, data, start, end, popup_depth)
    {
        __target_mc = target_mc;
        __config = config;
        __data = data;
        __popup_depth = popup_depth;
        __mc = target_mc.createEmptyMovieClip(name, depth);
        __mc._x = __config.plot_area.margins.left;
        __mc._y = __config.plot_area.margins.top;
        __events_mc = __mc.createEmptyMovieClip("events_mc", 0);
        __height = __config.plot_area.height;
        __width = __config.plot_area.width;
        __start = start;
        __end = end;
        var _loc3 = new com.amcharts.Rectangle(__mc, "mask_mc", 1, __width, __height, 0);
        var _loc2 = _loc3.mc;
        _loc2._alpha = 0;
        __events_mc.setMask(_loc2);
        this.__init();
    } // End of the function
    function __init()
    {
        if (__config.start_on_axis == true)
        {
            var _loc6 = __width / (__end - __start - 1);
        }
        else
        {
            _loc6 = __width / (__end - __start);
            __mc._x = __mc._x + _loc6 / 2;
        } // end else if
        var _loc8 = new Object();
        var _loc7 = 0;
        for (var _loc3 = 0; _loc3 < __data.series.length; ++_loc3)
        {
            if (__data.series[_loc3].event_start != undefined)
            {
                var _loc4 = new com.amcharts.Rectangle(__events_mc, "event_mc" + _loc7, _loc7, _loc6 * (__data.series.length - _loc3 - 1), __height, __data.series[_loc3].event_color, 0, 0, 0, __data.series[_loc3].event_alpha, 0);
                _loc4.mc._x = _loc6 * (_loc3 - __start);
                _loc4.mc.index = _loc3;
                _loc8[__data.series[_loc3].event_start] = _loc4.mc;
                var main_obj = this;
                if (__data.series[_loc3].event_description != undefined)
                {
                    _loc4.mc.onPress = function ()
                    {
                        main_obj.__showDescription(index);
                    };
                    _loc4.mc.onRollOver = function ()
                    {
                        _root.showIndicator = true;
                    };
                } // end if
                ++_loc7;
            } // end if
            if (__data.series[_loc3].event_end != undefined)
            {
                var _loc5 = _loc8[__data.series[_loc3].event_end]._width - (__data.series.length - _loc3 - 1) * _loc6;
                if (_loc5 < 1)
                {
                    _loc5 = 1;
                } // end if
                _loc8[__data.series[_loc3].event_end]._width = _loc5;
            } // end if
        } // end of for
    } // End of the function
    function __showDescription(index)
    {
        new com.amcharts.PopUp(__target_mc, "popup_mc", __popup_depth, __data.series[index].event_description, 20 + __config.plot_area.margins.left, 20 + __config.plot_area.margins.top, __width - 40, __data.series[index].event_color, __data.series[index].event_text_color, "left");
    } // End of the function
} // End of Class
