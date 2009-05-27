class com.amcharts.column.Clustered
{
    var __config, __data, __type, __tween_array, __interval, __mc, __min, __max, __min_real, __height, __width, __base_val, __step, __cell_width, __graph_count, __column_spacing, __column_width, url, useHandCursor, index, graph_index;
    function Clustered(target_mc, name, depth, config, data)
    {
        AsBroadcaster.initialize(this);
        __config = config;
        __data = data;
        __type = __config.type;
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
        __column_spacing = __config.column.spacing;
        var _loc2 = __cell_width * __config.column.width / 100 - __config.column_count;
        if (__column_spacing > _loc2)
        {
            __column_spacing = _loc2;
        } // end if
        if (__config.column.type == "3d column")
        {
            __column_width = __cell_width * __config.column.width / 100;
        }
        else
        {
            __column_width = (__cell_width * __config.column.width / 100 - __column_spacing * (__config.column_count - 1)) / __config.column_count;
            if (__column_width < 1)
            {
                __column_width = 1;
            } // end if
        } // end else if
        if (__config.axes.value.logarithmic == true)
        {
            __base_val = __min_real;
            var _loc3 = Math.log(__max) * 4.342945E-001 - Math.log(__base_val) * 4.342945E-001;
            __step = __height / _loc3;
        } // end if
        this.__init();
    } // End of the function
    function __init()
    {
        for (var _loc4 = 0; _loc4 < __data.series.length; ++_loc4)
        {
            __interval[_loc4] = new Array();
            var _loc7 = __mc.createEmptyMovieClip("columns_mc" + _loc4, _loc4);
            if (__type == "bar")
            {
                _loc7._y = -_loc4 * __cell_width - (__cell_width - __cell_width * __config.column.width / 100) / 2;
            }
            else
            {
                _loc7._x = _loc4 * __cell_width + (__cell_width - __cell_width * __config.column.width / 100) / 2;
            } // end else if
            var _loc10 = 0;
            for (var _loc2 = 0; _loc2 < __graph_count; ++_loc2)
            {
                if (__config.graphs.graph[_loc2].type == "column")
                {
                    var _loc9 = __data.graphs.graph[_loc2].values[_loc4].start;
                    if (_loc9 != undefined)
                    {
                        var _loc24 = __data.graphs.graph[_loc2].values[_loc4].start;
                    }
                    else
                    {
                        _loc24 = __base_val;
                    } // end else if
                    var _loc27 = __data.graphs.graph[_loc2].values[_loc4].value;
                    if (__config.axes.value.logarithmic == true)
                    {
                        _loc24 = Math.log(_loc24) * 4.342945E-001 - Math.log(__base_val) * 4.342945E-001;
                        _loc27 = Math.log(_loc27) * 4.342945E-001 - Math.log(__base_val) * 4.342945E-001;
                    } // end if
                    var _loc5 = __step * (_loc27 - _loc24);
                    if (_loc5 == 0)
                    {
                        _loc5 = 1.000000E-002;
                    } // end if
                    if (__config.values.value.reverse == true)
                    {
                        _loc5 = -_loc5;
                    } // end if
                    var _loc21;
                    var _loc17;
                    if (isNaN(_loc5) == false && _loc5 != 0)
                    {
                        if (__data.graphs.graph[_loc2].values[_loc4].color != undefined)
                        {
                            var _loc18 = __data.graphs.graph[_loc2].values[_loc4].color;
                        }
                        else
                        {
                            _loc18 = __config.graphs.graph[_loc2].color;
                        } // end else if
                        if (__config.graphs.graph[_loc2].gradient_fill_colors != undefined)
                        {
                            _loc18 = __config.graphs.graph[_loc2].gradient_fill_colors;
                        } // end if
                        if (__data.graphs.graph[_loc2].values[_loc4].gradient_fill_colors != undefined)
                        {
                            _loc18 = __data.graphs.graph[_loc2].values[_loc4].gradient_fill_colors;
                        } // end if
                        var _loc15 = _loc2;
                        if (__config.column.type == "3d column")
                        {
                            _loc15 = __graph_count + 10 - _loc2;
                        } // end if
                        if (__type == "bar")
                        {
                            var _loc3 = new com.amcharts.Cuboid(_loc7, "column" + _loc2, _loc15, _loc5, __column_width, __config.angle, __config.depth, _loc18, __config.graphs.graph[_loc2].alpha, 0, __config.column.border_color, __config.column.border_alpha, __config.column.gradient);
                            _loc21 = _loc5;
                            _loc17 = -__column_width;
                            if (__config.column.type != "3d column")
                            {
                                _loc3.mc._y = -_loc10 * (__column_width + __column_spacing);
                            }
                            else
                            {
                                _loc3.mc._x = _loc10 * __config.dx / __graph_count;
                                _loc3.mc._y = _loc10 * __config.dy / __graph_count;
                            } // end else if
                            if (_loc9 != undefined)
                            {
                                var _loc13 = _loc9 - __base_val;
                                if (__config.axes.value.logarithmic == true)
                                {
                                    _loc13 = Math.log(_loc9) * 4.342945E-001 - Math.log(__base_val) * 4.342945E-001;
                                } // end if
                                if (__config.values.value.reverse == true)
                                {
                                    _loc13 = -_loc13;
                                } // end if
                                _loc3.mc._x = __step * _loc13;
                            } // end if
                            if (__config.column.grow_time > 0)
                            {
                                if (__config.column.sequenced_grow == false)
                                {
                                    this.__grow(_loc3, "width", _loc5);
                                }
                                else
                                {
                                    _loc3.width = 0;
                                    var _loc23 = __config.column.grow_time / __data.series.length;
                                    __interval[_loc4][_loc2] = setInterval(this, "__grow", _loc23 * _loc4 * 1000, _loc3, "width", _loc5, _loc4, _loc2);
                                } // end if
                            } // end else if
                        }
                        else
                        {
                            _loc3 = new com.amcharts.Cuboid(_loc7, "column" + _loc2, _loc15, __column_width, _loc5, __config.angle, __config.depth, _loc18, __config.graphs.graph[_loc2].alpha, 0, __config.column.border_color, __config.column.border_alpha, __config.column.gradient);
                            _loc21 = __column_width;
                            _loc17 = -_loc5;
                            if (__config.column.type != "3d column")
                            {
                                _loc3.mc._x = _loc10 * (__column_width + __column_spacing);
                            }
                            else
                            {
                                _loc3.mc._x = _loc10 * __config.dx / __graph_count;
                                _loc3.mc._y = _loc10 * __config.dy / __graph_count;
                            } // end else if
                            if (_loc9 != undefined)
                            {
                                _loc13 = -(_loc9 - __base_val);
                                if (__config.axes.value.logarithmic == true)
                                {
                                    _loc13 = -(Math.log(_loc9) * 4.342945E-001 - Math.log(__base_val) * 4.342945E-001);
                                } // end if
                                if (__config.values.value.reverse == true)
                                {
                                    _loc13 = -_loc13;
                                } // end if
                                _loc3.mc._y = __step * _loc13;
                            } // end if
                            if (__config.column.grow_time > 0)
                            {
                                _loc3.mc._visible = false;
                                if (__config.column.sequenced_grow == false)
                                {
                                    this.__grow(_loc3, "height", _loc5);
                                }
                                else
                                {
                                    _loc3.height = 0;
                                    _loc23 = __config.column.grow_time / __data.series.length;
                                    __interval[_loc4][_loc2] = setInterval(this, "__grow", _loc23 * _loc4 * 1000, _loc3, "height", _loc5, _loc4, _loc2);
                                } // end if
                            } // end else if
                        } // end else if
                        var _loc22 = __data.graphs.graph[_loc2].values[_loc4].pattern;
                        if (_loc22 != undefined)
                        {
                            var _loc14 = _loc3.mc.createEmptyMovieClip("pattern_mc", _loc3.mc.getNextHighestDepth());
                            var _loc25 = _loc14.createEmptyMovieClip("pattern_loader_mc", 0);
                            var _loc20 = new com.amcharts.Rectangle(_loc3.mc, "mask_mc", _loc3.mc.getNextHighestDepth(), _loc21, _loc17, 0, 0, 0, 0, 100).__get__mc();
                            _loc20._alpha = 0;
                            _loc14.setMask(_loc20);
                            if (__data.graphs.graph[_loc2].values[_loc4].pattern_color != undefined)
                            {
                                var _loc26 = new Color(_loc14);
                                _loc26.setRGB(__data.graphs.graph[_loc2].values[_loc4].pattern_color);
                            } // end if
                            var _loc32 = new com.amcharts.Load();
                            _loc32.loadClip(__config.path + _loc22, _loc25);
                        } // end if
                        _loc3.mc.index = _loc4;
                        _loc3.mc.graph_index = _loc2;
                        _loc3.mc.url = __data.graphs.graph[_loc2].values[_loc4].url;
                        if (__config.graphs.graph[_loc2].data_labels != undefined)
                        {
                            var _loc11 = com.amcharts.column.Custom.formatText(__config, __config.graphs.graph[_loc2].data_labels, __config.graphs.graph[_loc2].title, __data.graphs.graph[_loc2].values[_loc4].value, __data.graphs.graph[_loc2].values[_loc4].percent, __data.series[_loc4].value, __data.graphs.graph[_loc2].values[_loc4].description, __data.graphs.graph[_loc2].values[_loc4].start, __data.series[_loc4].total, __data.graphs.graph[_loc2].values[_loc4].duration);
                            if (_loc11 != "" && _loc11 != undefined)
                            {
                                if (__type == "bar")
                                {
                                    var _loc31 = _loc3.mc._x;
                                    if (_loc5 > 0)
                                    {
                                        var _loc29 = "left";
                                        var _loc19 = 4;
                                    }
                                    else
                                    {
                                        _loc29 = "right";
                                        _loc19 = -5;
                                    } // end else if
                                    _loc31 = _loc31 + _loc19;
                                    var _loc30 = _loc3.mc._y - (__config.column.data_labels_text_size + 7 + __column_width) / 2;
                                    if (__config.column.data_labels_position == "outside")
                                    {
                                        _loc31 = _loc3.mc._x + _loc5 + _loc19;
                                    } // end if
                                    if (__config.column.data_labels_position == "above")
                                    {
                                        _loc30 = _loc3.mc._y - __config.column.data_labels_text_size - 7 - __column_width;
                                    } // end if
                                    var _loc6 = new com.amcharts.Text(_loc7, "label" + _loc2, _loc2 + __graph_count + 1000, _loc31, _loc30, undefined, _loc5, _loc29, __config);
                                    _loc6.size = __config.column.data_labels_text_size;
                                    _loc6.color = __config.column.data_labels_text_color;
                                    _loc6.htmlTxt = _loc11;
                                }
                                else
                                {
                                    _loc6 = new com.amcharts.Text(_loc7, "label" + _loc2, _loc2 + __graph_count + 1000, _loc3.mc._x + __column_width / 2, _loc3.mc._y - _loc5, undefined, _loc5, "center", __config);
                                    _loc6.size = __config.column.data_labels_text_size;
                                    _loc6.color = __config.column.data_labels_text_color;
                                    _loc6.htmlTxt = _loc11;
                                    if (__config.column.data_labels_position == "inside")
                                    {
                                        _loc6.y = _loc3.mc._y - _loc5 / 2 - __config.column.data_labels_text_size / 2 - 2;
                                        if (__config.column.data_labels_always_on == false)
                                        {
                                            if (Math.abs(_loc5) < _loc6.textHeight + 2)
                                            {
                                                _loc7["label" + _loc2]._visible = false;
                                            } // end if
                                            if (_loc6.textWidth > __column_width)
                                            {
                                                _loc7["label" + _loc2]._visible = false;
                                            } // end if
                                        } // end if
                                    } // end if
                                    if (__config.column.data_labels_position == "outside")
                                    {
                                        if (_loc5 > 0)
                                        {
                                            _loc6.y = _loc6.y - (_loc6.textHeight + 5);
                                        }
                                        else
                                        {
                                            _loc6.y = _loc6.y + 2;
                                        } // end if
                                    } // end else if
                                    if (__config.column.data_labels_position == "above")
                                    {
                                        var _loc12 = com.amcharts.Utils.rotateText(_loc6.field, __config.background.color, _loc7, "copy" + _loc2, _loc2 + __graph_count * 5);
                                        if (_loc5 > 0)
                                        {
                                            _loc12._y = _loc3.mc._y - 5;
                                        }
                                        else
                                        {
                                            _loc12._y = _loc3.mc._y - _loc5 - 5;
                                        } // end else if
                                        _loc12._x = _loc12._x - _loc12._width / 2;
                                    } // end if
                                } // end if
                            } // end if
                        } // end else if
                        if (__type == "bar")
                        {
                            var _loc28 = _loc3.mc._x + _loc5;
                            var _loc16 = _loc3.mc._y - __column_width / 2;
                            if (__data.graphs.graph[_loc2].values[_loc4].value >= 0)
                            {
                                _loc28 = _loc28 + __config.column.bullet_offset;
                            }
                            else
                            {
                                _loc28 = _loc28 - __config.column.bullet_offset;
                            } // end else if
                        }
                        else
                        {
                            _loc28 = _loc3.mc._x + __column_width / 2;
                            _loc16 = _loc3.mc._y - _loc5;
                            if (__data.graphs.graph[_loc2].values[_loc4].value >= 0)
                            {
                                _loc16 = _loc16 - __config.column.bullet_offset;
                            }
                            else
                            {
                                _loc16 = _loc16 + __config.column.bullet_offset;
                            } // end else if
                        } // end else if
                        var _loc8 = new com.amcharts.column.Bullet(_loc7, "bullet_mc" + _loc2, _loc2 + __graph_count + 10000, _loc28, _loc16, __data.graphs.graph[_loc2].values[_loc4], __config.graphs.graph[_loc2], __config);
                        _loc8.mc.graph_index = _loc2;
                        _loc8.mc.index = _loc4;
                        _loc8.mc.url = __data.graphs.graph[_loc2].values[_loc4].url;
                        var main_obj = this;
                        _loc3.mc.tabEnabled = false;
                        _loc8.mc.tabEnabled = false;
                        _loc3.mc.onRollOver = _loc8.mc.onRollOver = function ()
                        {
                            if (url == undefined)
                            {
                                useHandCursor = false;
                            } // end if
                            main_obj.broadcastMessage("onRollOver", graph_index, index);
                            if (main_obj.__config.column.hover_brightness != 0)
                            {
                                new com.amcharts.Brightness(this, main_obj.__config.column.hover_brightness);
                            } // end if
                        };
                        _loc3.mc.onRollOut = _loc3.mc.onReleaseOutside = _loc8.mc.onRollOut = _loc8.mc.onReleaseOutside = function ()
                        {
                            main_obj.broadcastMessage("onRollOut");
                            new com.amcharts.Brightness(this, 0);
                        };
                        _loc3.mc.onRelease = _loc8.mc.onRelease = function ()
                        {
                            main_obj.broadcastMessage("onRelease", graph_index, index);
                            if (url != undefined)
                            {
                                getURL(url, main_obj.__config.column.link_target);
                            } // end if
                        };
                    } // end if
                    ++_loc10;
                } // end if
            } // end of for
        } // end of for
    } // End of the function
    function __grow(column, side, height, i, j)
    {
        clearInterval(__interval[i][j]);
        __tween_array.push(new com.amcharts.Tween(column, side, __config.column.grow_effect, 0, height, __config.column.grow_time, true));
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
