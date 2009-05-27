class com.amcharts.column.Stacked
{
    var __config, __type, __data, __tween_array, __interval, __mc, __min, __max, __min_real, __height, __width, __base_val, __step, __cell_width, __graph_count, __column_width, url, useHandCursor, index, graph_index;
    function Stacked(target_mc, name, depth, config, data)
    {
        AsBroadcaster.initialize(this);
        __config = config;
        __type = __config.type;
        __data = data;
        __tween_array = new Array();
        __interval = new Array();
        __mc = target_mc.createEmptyMovieClip(name, depth);
        __mc._x = __config.plot_area.margins.left;
        __min = __config.min;
        __max = __config.max;
        __min_real = __config.min_real;
        __height = __config.plot_area.height;
        __width = __config.plot_area.width;
        if (__type == "bar")
        {
            __width = __config.plot_area.height;
            __height = __config.plot_area.width;
        } // end if
        __base_val = 0;
        if (__min > 0 && __max > 0)
        {
            __base_val = __min;
        } // end if
        if (__min < 0 && __max < 0)
        {
            __base_val = __max;
        } // end if
        __step = __height / (__max - __min);
        if (__type == "bar")
        {
            if (__config.values.value.reverse == true)
            {
                __mc._x = __config.plot_area.margins.left + __height - (__base_val - __min) * __step;
            }
            else
            {
                __mc._x = __config.plot_area.margins.left - (__min - __base_val) * __step;
            } // end else if
            __mc._y = __config.height - __config.plot_area.margins.bottom;
        }
        else if (__config.values.value.reverse == true)
        {
            __mc._y = __config.plot_area.margins.top + (__base_val - __min) * __step;
        }
        else
        {
            __mc._y = __config.height - __config.plot_area.margins.bottom + (__min - __base_val) * __step;
        } // end else if
        __cell_width = __width / __data.series.length;
        __graph_count = __data.graphs.graph.length;
        __column_width = __cell_width * __config.column.width / 100;
        if (__config.axes.value.logarithmic == true)
        {
            __base_val = __min_real;
            var _loc2 = Math.log(__max) * 4.342945E-001 - Math.log(__base_val) * 4.342945E-001;
            __step = __height / _loc2;
        } // end if
        this.__init();
    } // End of the function
    function __init()
    {
        for (var _loc5 = 0; _loc5 < __data.series.length; ++_loc5)
        {
            __interval[_loc5] = new Array();
            var _loc6 = __mc.createEmptyMovieClip("columns_mc" + _loc5, _loc5);
            if (__type == "bar")
            {
                _loc6._y = -_loc5 * __cell_width - (__cell_width - __cell_width * __config.column.width / 100) / 2;
            }
            else
            {
                _loc6._x = _loc5 * __cell_width + (__cell_width - __cell_width * __config.column.width / 100) / 2;
            } // end else if
            var _loc16 = 0;
            var _loc18 = 0;
            var _loc15 = 0;
            var _loc17 = 0;
            var _loc19 = 0;
            var _loc28 = 0;
            var _loc26 = 0;
            var _loc32 = 0;
            for (var _loc2 = 0; _loc2 < __graph_count; ++_loc2)
            {
                if (__config.graphs.graph[_loc2].type == "column")
                {
                    var _loc25 = __base_val;
                    if (__config.column.type == "stacked")
                    {
                        var _loc13 = __data.graphs.graph[_loc2].values[_loc5].value;
                    }
                    else
                    {
                        _loc13 = __data.graphs.graph[_loc2].values[_loc5].percent;
                    } // end else if
                    var _loc23 = false;
                    if (_loc13 == undefined)
                    {
                        _loc13 = _loc25;
                        _loc23 = true;
                    } // end if
                    if (__config.axes.value.logarithmic != true && _loc2 > 0)
                    {
                        if (_loc13 < 0)
                        {
                            _loc25 = _loc26;
                            _loc13 = _loc13 + _loc25;
                            _loc26 = _loc13;
                        }
                        else
                        {
                            _loc25 = _loc32;
                            _loc13 = _loc13 + _loc25;
                            _loc32 = _loc13;
                        } // end if
                    } // end else if
                    if (__config.axes.value.logarithmic == true)
                    {
                        if (_loc28 > 0)
                        {
                            _loc25 = _loc19;
                            _loc13 = _loc13 + _loc19;
                        } // end if
                        _loc19 = _loc13;
                        _loc25 = Math.log(_loc25) * 4.342945E-001 - Math.log(__base_val) * 4.342945E-001;
                        _loc13 = Math.log(_loc13) * 4.342945E-001 - Math.log(__base_val) * 4.342945E-001;
                    } // end if
                    ++_loc28;
                    var _loc4 = __step * (_loc13 - _loc25);
                    if (_loc4 == 0)
                    {
                        _loc4 = 1.000000E-002;
                    } // end if
                    if (__config.values.value.reverse == true)
                    {
                        _loc4 = -_loc4;
                    } // end if
                    if (__data.graphs.graph[_loc2].values[_loc5].color != undefined)
                    {
                        var _loc10 = __data.graphs.graph[_loc2].values[_loc5].color;
                    }
                    else
                    {
                        _loc10 = __config.graphs.graph[_loc2].color;
                    } // end else if
                    if (__config.graphs.graph[_loc2].gradient_fill_colors != undefined)
                    {
                        _loc10 = __config.graphs.graph[_loc2].gradient_fill_colors;
                    } // end if
                    if (__data.graphs.graph[_loc2].values[_loc5].gradient_fill_colors != undefined)
                    {
                        _loc10 = __data.graphs.graph[_loc2].values[_loc5].gradient_fill_colors;
                    } // end if
                    var _loc12;
                    var _loc11;
                    if (isNaN(_loc4) == false && _loc4 != 0)
                    {
                        if (_loc13 >= 0)
                        {
                            if (__config.values.value.reverse == true)
                            {
                                var _loc21 = 10000 - _loc2;
                            }
                            else
                            {
                                _loc21 = 10000 + _loc2;
                            } // end else if
                            if (__type == "bar")
                            {
                                var _loc3 = new com.amcharts.Cuboid(_loc6, "column" + _loc2, _loc21, _loc4, __column_width, __config.angle, __config.depth, _loc10, __config.graphs.graph[_loc2].alpha, 0, __config.column.border_color, __config.column.border_alpha, __config.column.gradient);
                                if (_loc2 > 0)
                                {
                                    _loc3.mc._x = _loc16 + _loc18;
                                } // end if
                                _loc16 = _loc3.mc._x;
                                _loc18 = _loc4;
                                _loc12 = _loc4;
                                _loc11 = -__column_width;
                            }
                            else
                            {
                                _loc3 = new com.amcharts.Cuboid(_loc6, "column" + _loc2, _loc21, __column_width, _loc4, __config.angle, __config.depth, _loc10, __config.graphs.graph[_loc2].alpha, 0, __config.column.border_color, __config.column.border_alpha, __config.column.gradient);
                                if (_loc2 > 0)
                                {
                                    _loc3.mc._y = _loc16 - _loc18;
                                } // end if
                                _loc16 = _loc3.mc._y;
                                _loc18 = _loc4;
                                _loc12 = __column_width;
                                _loc11 = -_loc4;
                            } // end else if
                        }
                        else
                        {
                            if (__config.values.value.reverse == true)
                            {
                                _loc21 = 10000 + _loc2;
                            }
                            else
                            {
                                _loc21 = 10000 - _loc2;
                            } // end else if
                            if (__type == "bar")
                            {
                                _loc3 = new com.amcharts.Cuboid(_loc6, "column" + _loc2, _loc21, _loc4, __column_width, __config.angle, __config.depth, _loc10, __config.graphs.graph[_loc2].alpha, 0, __config.column.border_color, __config.column.border_alpha, __config.column.gradient);
                                if (_loc2 > 0)
                                {
                                    _loc3.mc._x = _loc15 + _loc17;
                                } // end if
                                _loc15 = _loc3.mc._x;
                                _loc17 = _loc4;
                                _loc12 = _loc4;
                                _loc11 = -__column_width;
                            }
                            else
                            {
                                _loc3 = new com.amcharts.Cuboid(_loc6, "column" + _loc2, _loc21, __column_width, _loc4, __config.angle, __config.depth, _loc10, __config.graphs.graph[_loc2].alpha, 0, __config.column.border_color, __config.column.border_alpha, __config.column.gradient);
                                if (_loc2 > 0)
                                {
                                    _loc3.mc._y = _loc15 - _loc17;
                                } // end if
                                _loc15 = _loc3.mc._y;
                                _loc17 = _loc4;
                                _loc12 = __column_width;
                                _loc11 = -_loc4;
                            } // end else if
                        } // end else if
                        var _loc22 = __data.graphs.graph[_loc2].values[_loc5].pattern;
                        if (_loc22 != undefined)
                        {
                            var _loc14 = _loc3.mc.createEmptyMovieClip("pattern_mc", _loc3.mc.getNextHighestDepth());
                            var _loc27 = _loc14.createEmptyMovieClip("pattern_loader_mc", 0);
                            var _loc20 = new com.amcharts.Rectangle(_loc3.mc, "mask_mc", _loc3.mc.getNextHighestDepth(), _loc12, _loc11, 0, 0, 0, 0, 100).__get__mc();
                            _loc20._alpha = 0;
                            _loc14.setMask(_loc20);
                            if (__data.graphs.graph[_loc2].values[_loc5].pattern_color != undefined)
                            {
                                var _loc29 = new Color(_loc14);
                                _loc29.setRGB(__data.graphs.graph[_loc2].values[_loc5].pattern_color);
                            } // end if
                            var _loc33 = new com.amcharts.Load();
                            _loc33.loadClip(__config.path + _loc22, _loc27);
                        } // end if
                        if (__config.column.grow_time > 0)
                        {
                            _loc3.mc._visible = false;
                            if (__type == "bar")
                            {
                                if (__config.column.sequenced_grow == false)
                                {
                                    this.__grow(_loc3, "width", _loc4);
                                }
                                else
                                {
                                    _loc3.width = 0;
                                    var _loc24 = __config.column.grow_time / __data.series.length;
                                    __interval[_loc5][_loc2] = setInterval(this, "__grow", _loc24 * _loc5 * 1000, _loc3, "width", _loc4, _loc5, _loc2);
                                } // end else if
                            }
                            else if (__config.column.sequenced_grow == false)
                            {
                                this.__grow(_loc3, "height", _loc4);
                            }
                            else
                            {
                                _loc3.height = 0;
                                _loc24 = __config.column.grow_time / __data.series.length;
                                __interval[_loc5][_loc2] = setInterval(this, "__grow", _loc24 * _loc5 * 1000, _loc3, "height", _loc4, _loc5, _loc2);
                            } // end else if
                        } // end else if
                        _loc3.mc.index = _loc5;
                        _loc3.mc.graph_index = _loc2;
                        _loc3.mc.url = __data.graphs.graph[_loc2].values[_loc5].url;
                        if (__config.graphs.graph[_loc2].data_labels != undefined)
                        {
                            if (__config.column.type == "100% stacked")
                            {
                                _loc13 = com.amcharts.Utils.roundTo(_loc13, __config.precision);
                            } // end if
                            var _loc9 = com.amcharts.column.Custom.formatText(__config, __config.graphs.graph[_loc2].data_labels, __config.graphs.graph[_loc2].title, __data.graphs.graph[_loc2].values[_loc5].value, __data.graphs.graph[_loc2].values[_loc5].percent, __data.series[_loc5].value, __data.graphs.graph[_loc2].values[_loc5].description, __data.graphs.graph[_loc2].values[_loc5].start, __data.series[_loc5].total, __data.graphs.graph[_loc2].values[_loc5].duration);
                            if (_loc9 != "" && _loc9 != undefined)
                            {
                                if (__type == "bar")
                                {
                                    var _loc8 = new com.amcharts.Text(_loc6, "label" + _loc2, _loc2 + __graph_count + 20000, _loc3.mc._x + _loc4 / 2, _loc3.mc._y - __column_width / 2, undefined, _loc4, "center", __config);
                                    _loc8.size = __config.column.data_labels_text_size;
                                    _loc8.color = __config.column.data_labels_text_color;
                                    _loc8.htmlTxt = _loc9;
                                    _loc8.y = _loc8.y + (-_loc8.textHeight / 2 - 4);
                                    if (__config.column.data_labels_always_on == false)
                                    {
                                        if (_loc8.textWidth > Math.abs(_loc4))
                                        {
                                            _loc6["label" + _loc2]._visible = false;
                                        } // end if
                                        if (__column_width < _loc8.textHeight + 2)
                                        {
                                            _loc6["label" + _loc2]._visible = false;
                                        } // end if
                                    } // end if
                                }
                                else
                                {
                                    _loc8 = new com.amcharts.Text(_loc6, "label" + _loc2, _loc2 + __graph_count + 20000, _loc3.mc._x + __column_width / 2, _loc3.mc._y - _loc4 / 2, undefined, _loc4, "center", __config);
                                    _loc8.size = __config.column.data_labels_text_size;
                                    _loc8.color = __config.column.data_labels_text_color;
                                    _loc8.htmlTxt = _loc9;
                                    _loc8.y = _loc8.y - (_loc8.textHeight / 2 + 2);
                                    if (__config.column.data_labels_always_on == false)
                                    {
                                        if (Math.abs(_loc4) < _loc8.textHeight + 2)
                                        {
                                            _loc6["label" + _loc2]._visible = false;
                                        } // end if
                                        if (_loc8.textWidth > __column_width)
                                        {
                                            _loc6["label" + _loc2]._visible = false;
                                        } // end if
                                    } // end if
                                } // end if
                            } // end if
                        } // end else if
                        if (__type == "bar")
                        {
                            var _loc31 = _loc3.mc._x + _loc4 / 2;
                            var _loc30 = _loc3.mc._y - __column_width / 2;
                        }
                        else
                        {
                            _loc31 = _loc3.mc._x + __column_width / 2;
                            _loc30 = _loc3.mc._y - _loc4 / 2;
                        } // end else if
                        var _loc7 = new com.amcharts.column.Bullet(_loc6, "bullet_mc" + _loc2, _loc2 + __graph_count + 10000, _loc31, _loc30, __data.graphs.graph[_loc2].values[_loc5], __config.graphs.graph[_loc2], __config);
                        _loc7.mc.graph_index = _loc2;
                        _loc7.mc.index = _loc5;
                        _loc7.mc.url = __data.graphs.graph[_loc2].values[_loc5].url;
                        var main_obj = this;
                        _loc3.mc.tabEnabled = false;
                        _loc7.mc.tabEnabled = false;
                        _loc3.mc.onRollOver = _loc7.mc.onRollOver = function ()
                        {
                            if (url == undefined)
                            {
                                useHandCursor = false;
                            } // end if
                            if (main_obj.__config.column.hover_brightness != 0)
                            {
                                new com.amcharts.Brightness(this, main_obj.__config.column.hover_brightness);
                            } // end if
                            main_obj.broadcastMessage("onRollOver", graph_index, index);
                        };
                        _loc3.mc.onRollOut = _loc3.mc.onReleaseOutside = _loc7.mc.onRollOut = _loc7.mc.onReleaseOutside = function ()
                        {
                            main_obj.broadcastMessage("onRollOut");
                            new com.amcharts.Brightness(this, 0);
                        };
                        _loc3.mc.onRelease = _loc7.mc.onRelease = function ()
                        {
                            main_obj.broadcastMessage("onRelease", graph_index, index);
                            if (url != undefined)
                            {
                                getURL(url, main_obj.__config.column.link_target);
                            } // end if
                        };
                        if (_loc23 == true)
                        {
                            removeMovieClip (_loc3.mc);
                            _loc8.field._visible = false;
                            _loc7.mc._visible = false;
                        } // end if
                    } // end if
                } // end if
            } // end of for
        } // end of for
    } // End of the function
    function __grow(column, side, height, i, j)
    {
        clearInterval(__interval[i][j]);
        __tween_array.push(new com.amcharts.Tween(column, side, __config.column.grow_effect, 0, height, __config.column.grow_time));
        column.mc._visible = true;
    } // End of the function
    function die()
    {
        for (var _loc3 = 0; _loc3 < __tween_array.length; ++_loc3)
        {
            __tween_array[_loc3].die();
            __tween_array[_loc3] = null;
        } // end of for
        for (var _loc3 = 0; _loc3 < __interval.length; ++_loc3)
        {
            for (var _loc2 = 0; _loc2 < __interval[_loc3].length; ++_loc2)
            {
                clearInterval(__interval[_loc3][_loc2]);
            } // end of for
        } // end of for
    } // End of the function
} // End of Class
