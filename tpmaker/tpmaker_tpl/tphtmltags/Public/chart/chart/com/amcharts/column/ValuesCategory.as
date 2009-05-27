class com.amcharts.column.ValuesCategory
{
    var __config, __data, __type, __mc, __values_mc, __ticks_mc, __width, __value_count, __freq, __grid_interval, __text_width, __text_color, __text_size, __widest_value, __get__mc, __get__widest;
    function ValuesCategory(target_mc, name, depth, config, data)
    {
        __config = config;
        __data = data;
        __type = __config.type;
        __mc = target_mc.createEmptyMovieClip(name, depth);
        __mc._x = __config.plot_area.margins.left;
        __mc._y = __config.height - __config.plot_area.margins.bottom;
        __values_mc = __mc.createEmptyMovieClip("values_mc", 0);
        __ticks_mc = __mc.createEmptyMovieClip("ticks_mc", 1);
        __width = __config.plot_area.width;
        if (__type == "bar")
        {
            __width = __config.plot_area.height;
        } // end if
        __value_count = __data.series.length;
        __freq = __config.values.category.frequency;
        __grid_interval = __width / __value_count;
        __text_width = __width * __freq / __value_count;
        __text_color = __config.values.category.color;
        __text_size = __config.values.category.text_size;
        __widest_value = 0;
        this.__init();
    } // End of the function
    function __init()
    {
        for (var _loc2 = __config.values.category.start_from - 1; _loc2 < __value_count; ++_loc2)
        {
            if ((_loc2 - __config.values.category.start_from + 1) / __freq == int((_loc2 - __config.values.category.start_from + 1) / __freq) || __data.series[_loc2].show == true)
            {
                if (__data.series[_loc2].value != undefined)
                {
                    if (__type == "bar")
                    {
                        var _loc3 = new com.amcharts.Text(__values_mc, "value" + _loc2, _loc2, -__config.plot_area.margins.left, -__text_width / __freq * (_loc2 + 5.000000E-001), __config.plot_area.margins.left - __config.axes.category.width - 3, __config.height, "left", __config);
                        _loc3.__set__color(__text_color);
                        _loc3.__set__size(__text_size);
                        _loc3.__set__align("right");
                        _loc3.__set__htmlTxt(__data.series[_loc2].value);
                        if (__config.values.category.inside == true)
                        {
                            _loc3.__set__align("left");
                            _loc3.__set__width(__config.plot_area.width);
                            _loc3.__set__x(2);
                        } // end if
                        _loc3.__set__y(_loc3.__get__y() - _loc3.__get__textHeight() / 2 - 2);
                        var _loc4 = new com.amcharts.Line(__ticks_mc, "tick_mc" + _loc2, _loc2, [0, -__config.axes.category.tick_length], [0, 0], 0, __config.axes.category.color);
                        _loc4.mc._y = -__grid_interval * (_loc2 + 5.000000E-001);
                        _loc4.mc._x = -__config.axes.category.width + 1;
                    }
                    else
                    {
                        _loc3 = new com.amcharts.Text(__values_mc, "value" + _loc2, _loc2, __width / __value_count * (_loc2 + 5.000000E-001), __config.axes.category.width - 2 + __config.axes.category.tick_length, __text_width, __config.plot_area.margins.bottom, "center", __config);
                        _loc3.__set__color(__text_color);
                        _loc3.__set__size(__text_size);
                        _loc3.__set__align("center");
                        _loc3.__set__htmlTxt(__data.series[_loc2].value);
                        _loc3.x = _loc3.x - _loc3.__get__width() / 2;
                        if (__config.values.category.inside == true)
                        {
                            _loc3.__set__y(-_loc3.__get__textHeight() - 4);
                        } // end if
                        _loc4 = new com.amcharts.Line(__ticks_mc, "tick_mc" + _loc2, _loc2, [0, 0], [0, __config.axes.category.tick_length], 0, __config.axes.category.color);
                        _loc4.mc._x = __grid_interval * (_loc2 + 5.000000E-001);
                        _loc4.mc._y = __config.axes.category.width;
                    } // end else if
                    _loc4.mc._alpha = __config.axes.category.alpha;
                    if (_loc3.__get__textWidth() > __widest_value)
                    {
                        __widest_value = _loc3.textWidth;
                    } // end if
                    if (__config.values.category.rotate == 90)
                    {
                        var _loc5 = com.amcharts.Utils.rotateText(__values_mc["value" + _loc2], __config.background.color, __values_mc, "copy" + _loc2, _loc2 + __value_count);
                        if (__type == "bar")
                        {
                            _loc5._x = -_loc5._width - __config.axes.category.width - __config.axes.category.tick_length;
                            _loc5._y = -__text_width / __freq * (_loc2 + 5.000000E-001) + _loc5._height / 2;
                            if (__config.values.category.inside == true)
                            {
                                _loc5._x = 0;
                            } // end if
                        }
                        else
                        {
                            _loc5._x = __text_width / __freq * (_loc2 + 5.000000E-001) + 1 - _loc5._width / 2;
                            _loc5._y = _loc5._height + __config.axes.category.width + __config.axes.category.tick_length;
                            if (__config.values.category.inside == true)
                            {
                                _loc5._y = -3;
                            } // end if
                        } // end else if
                        continue;
                    } // end if
                    if (__config.values.category.rotate > 0)
                    {
                        _loc5 = __values_mc.createEmptyMovieClip("rotated_mc" + _loc2, _loc2);
                        var _loc6 = new com.amcharts.Load();
                        _loc6.loadClip(__config.path + "fonts/" + __config.font.toLowerCase() + ".swf", _loc5, this, "__rotateText", undefined, [_loc2]);
                    } // end if
                } // end if
            } // end if
        } // end of for
    } // End of the function
    function __rotateText(movie_mc, params)
    {
        var _loc3 = params[0];
        movie_mc._rotation = -__config.values.category.rotate;
        movie_mc.tf_mc.txt.htmlText = __data.series[_loc3].value;
        movie_mc.tf_mc.txt.textColor = __text_color;
        var _loc4 = new TextFormat();
        _loc4.size = __text_size;
        movie_mc.tf_mc.txt.setTextFormat(_loc4);
        movie_mc.tf_mc._x = 0;
        movie_mc.tf_mc._y = 0;
        if (__type == "bar")
        {
            movie_mc._y = -__grid_interval * (_loc3 + 5.000000E-001) - movie_mc.tf_mc.txt.textHeight / 2 - 2;
            movie_mc._x = -(__config.axes.category.width + __config.axes.category.tick_length) - movie_mc.tf_mc.txt.textHeight * Math.sin(__config.values.category.rotate * 3.141593E+000 / 180);
        }
        else
        {
            movie_mc._x = __grid_interval * (_loc3 + 5.000000E-001) - movie_mc.tf_mc.txt.textHeight / 2 * Math.sin(__config.values.category.rotate * 3.141593E+000 / 180);
            movie_mc._y = __config.axes.category.width + __config.axes.category.tick_length;
        } // end else if
    } // End of the function
    function get mc()
    {
        return (__mc);
    } // End of the function
    function get widest()
    {
        return (__widest_value);
    } // End of the function
} // End of Class
