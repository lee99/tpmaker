class com.amcharts.line.GridX
{
    var __config, __data, __mc, __grid_mc, __ticks_mc, __values_mc, __height, __width, __grid_interval, __get__mc;
    function GridX(target_mc, name, depth, config, data)
    {
        __config = config;
        __data = data;
        __mc = target_mc.createEmptyMovieClip(name, depth);
        __mc._x = __config.plot_area.margins.left;
        __mc._y = __config.height - __config.plot_area.margins.bottom;
        __grid_mc = __mc.createEmptyMovieClip("grid_mc", 0);
        __ticks_mc = __mc.createEmptyMovieClip("ticks_mc", 1);
        __values_mc = __mc.createEmptyMovieClip("values_mc", 2);
        __height = __config.plot_area.height;
        __width = __config.plot_area.width;
        this.__init();
    } // End of the function
    function __init()
    {
        var _loc11 = __config.grid.x.approx_count;
        var _loc8 = __config.end - __config.start;
        if (_loc8 < _loc11)
        {
            _loc11 = _loc8;
        } // end if
        var _loc4 = Math.floor(_loc8 / _loc11);
        if (__config.start_on_axis == true)
        {
            __grid_interval = __width / (_loc8 - 1);
        }
        else
        {
            __grid_interval = __width / _loc8;
            __mc._x = __mc._x + __grid_interval / 2;
        } // end else if
        if (__config.grid.x.enabled == true)
        {
            for (var _loc2 = 0; _loc2 < _loc8; _loc2 = _loc2 + _loc4)
            {
                this.__drawGrid(_loc2, _loc2);
            } // end of for
        } // end if
        if (__config.values.x.skip_first == true)
        {
            var _loc10 = _loc4;
        }
        else
        {
            _loc10 = 0;
        } // end else if
        if (__config.values.x.skip_last == true)
        {
            var _loc9 = _loc8 - _loc4;
        }
        else
        {
            _loc9 = _loc8;
        } // end else if
        for (var _loc2 = _loc10; _loc2 < _loc9; ++_loc2)
        {
            if (__data.series[_loc2 + __config.start].value != undefined)
            {
                if (_loc2 / (_loc4 * __config.values.x.frequency) == int(_loc2 / (_loc4 * __config.values.x.frequency)) && __config.values.x.enabled == true || __data.series[_loc2 + __config.start].show == true)
                {
                    var _loc3 = new com.amcharts.Text(__values_mc, "value" + _loc2, _loc2, __grid_interval * _loc2, __config.axes.x.tick_length + 2 + __config.axes.x.width, __grid_interval * _loc4 * __config.values.x.frequency, undefined, "left", __config);
                    _loc3.__set__size(__config.values.x.text_size);
                    _loc3.__set__color(__config.values.x.color);
                    _loc3.__set__htmlTxt(__data.series[_loc2 + __config.start].value);
                    _loc3.__set__x(Math.round(_loc3.__get__x()) - _loc3.__get__textWidth() / 2 - 2);
                    if (__config.values.x.inside == true && __config.values.x.rotate == 0)
                    {
                        _loc3.__set__y(-_loc3.__get__textHeight() - 2);
                    } // end if
                    if (__config.values.x.rotate == 90)
                    {
                        var _loc6 = com.amcharts.Utils.rotateText(__values_mc["value" + _loc2], __config.background.color, __values_mc, "copy" + _loc2, _loc2 + _loc9);
                        _loc6._x = __grid_interval * _loc2 - _loc6._width / 2;
                        _loc6._y = _loc6._height + __config.axes.x.width + __config.axes.x.tick_length;
                        if (__config.values.x.inside == true)
                        {
                            _loc6._y = -1;
                            _loc6._x = _loc6._x + (_loc6._width / 2 - 2);
                        } // end if
                    }
                    else if (__config.values.x.rotate > 0)
                    {
                        _loc6 = __values_mc.createEmptyMovieClip("rotated_mc" + _loc2, _loc2);
                        var _loc7 = new com.amcharts.Load();
                        _loc7.loadClip(__config.path + "fonts/" + __config.font.toLowerCase() + ".swf", _loc6, this, "__rotateText", undefined, [_loc2]);
                    } // end else if
                    if (__config.axes.x.tick_length > 0 && __config.axes.x.alpha > 0)
                    {
                        var _loc5 = new com.amcharts.Line(__ticks_mc, "tick_mc" + _loc2, _loc2, [0, 0], [0, __config.axes.x.tick_length], 0, __config.axes.x.color, __config.axes.x.alpha);
                        _loc5.mc._x = __grid_interval * _loc2;
                        _loc5.mc._y = __config.axes.x.width;
                    } // end if
                    if (__data.series[_loc2 + __config.start].show == true)
                    {
                        this.__drawGrid(_loc2, __grid_mc.getNextHighestDepth());
                    } // end if
                } // end if
            } // end if
        } // end of for
    } // End of the function
    function __drawGrid(i, depth)
    {
        if (__config.grid.x.dashed == true)
        {
            var _loc4 = new com.amcharts.DashedLine(__grid_mc, "grid_mc" + depth, depth, [__grid_interval * i, __grid_interval * i], [0, -__height], 0, __config.grid.x.dash_length, __config.grid.x.color);
        }
        else
        {
            _loc4 = new com.amcharts.Line(__grid_mc, "grid_mc" + depth, depth, [__grid_interval * i, __grid_interval * i], [0, -__height], 0, __config.grid.x.color);
        } // end else if
        _loc4.mc._alpha = __config.grid.x.alpha;
    } // End of the function
    function __rotateText(movie_mc, params)
    {
        var _loc4 = params[0];
        movie_mc._rotation = -__config.values.x.rotate;
        movie_mc.tf_mc.txt.htmlText = __data.series[_loc4 + __config.start].value;
        movie_mc.tf_mc.txt.textColor = __config.values.x.color;
        var _loc3 = new TextFormat();
        _loc3.size = __config.values.x.text_size;
        movie_mc.tf_mc.txt.setTextFormat(_loc3);
        movie_mc.tf_mc._x = 0;
        movie_mc.tf_mc._y = 0;
        movie_mc._x = __grid_interval * _loc4 - movie_mc.tf_mc.txt.textHeight / 2 * Math.cos(__config.values.x.rotate * 3.141593E+000 / 180);
        movie_mc._y = __config.axes.x.width + __config.axes.x.tick_length;
    } // End of the function
    function get mc()
    {
        return (__mc);
    } // End of the function
} // End of Class
