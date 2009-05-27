class com.amcharts.column.Lines
{
    var __config, __data, __type, __mc, __min, __max, __min_real, __height, __width, __base_val, __step_height, __cell_count, __step_width, __graph_count, url, useHandCursor, index, graph_index;
    function Lines(target_mc, name, depth, min, max, min_real, config, data)
    {
        AsBroadcaster.initialize(this);
        __config = config;
        __data = data;
        __type = __config.type;
        __mc = target_mc.createEmptyMovieClip(name, depth);
        __mc._x = __config.plot_area.margins.left;
        __min = min;
        __max = max;
        __min_real = min_real;
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
        __step_height = __height / (__max - __min);
        if (__type == "bar")
        {
            if (__config.values.value.reverse == true)
            {
                __mc._x = __config.plot_area.margins.left + __height - (__base_val - __min) * __step_height;
            }
            else
            {
                __mc._x = __config.plot_area.margins.left - (__min - __base_val) * __step_height;
            } // end else if
            __mc._y = __config.height - __config.plot_area.margins.bottom;
        }
        else if (__config.values.value.reverse == true)
        {
            __mc._y = __config.plot_area.margins.top + (__base_val - __min) * __step_height;
        }
        else
        {
            __mc._y = __config.height - __config.plot_area.margins.bottom + (__min - __base_val) * __step_height;
        } // end else if
        __cell_count = data.series.length;
        __step_width = __width / __cell_count;
        __graph_count = __data.graphs.graph.length;
        if (__config.axes.value.logarithmic == true)
        {
            __base_val = __min_real;
            var _loc2 = Math.log(__max) * 4.342945E-001 - Math.log(__base_val) * 4.342945E-001;
            __step_height = __height / _loc2;
        } // end if
        this.__init();
    } // End of the function
    function __init()
    {
        for (var _loc8 = 0; _loc8 < __graph_count; ++_loc8)
        {
            var _loc7 = __config.graphs.graph[_loc8];
            var graph_data = __data.graphs.graph[_loc8];
            if (_loc7.type == "line")
            {
                var _loc16 = __mc.createEmptyMovieClip("line_mc" + _loc8, _loc8);
                var _loc15 = __mc.createEmptyMovieClip("labels_mc" + _loc8, _loc8 + __graph_count * 6);
                var _loc17 = __mc.createEmptyMovieClip("bullets_mc" + _loc8, _loc8 + __graph_count * 3);
                var _loc13 = new Array();
                var _loc14 = new Array();
                var i = 0;
                while (i < __cell_count)
                {
                    var _loc2 = graph_data.values[i].value;
                    var _loc5;
                    var _loc4;
                    if (__config.type == "bar")
                    {
                        _loc4 = -(i + 5.000000E-001) * __step_width;
                        if (_loc2 == null)
                        {
                            _loc5 = null;
                        }
                        else if (__config.values.value.reverse == true)
                        {
                            _loc5 = (__base_val - _loc2) * __step_height;
                        }
                        else
                        {
                            _loc5 = (_loc2 - __base_val) * __step_height;
                        } // end else if
                    }
                    else
                    {
                        _loc5 = (i + 5.000000E-001) * __step_width;
                        if (_loc2 == null)
                        {
                            _loc4 = null;
                        }
                        else if (__config.values.value.reverse == true)
                        {
                            _loc4 = (_loc2 - __base_val) * __step_height;
                        }
                        else
                        {
                            _loc4 = (__base_val - _loc2) * __step_height;
                        } // end else if
                    } // end else if
                    if (__config.axes.value.logarithmic == true)
                    {
                        var _loc11 = Math.log(_loc2) * 4.342945E-001 - Math.log(__base_val) * 4.342945E-001;
                        if (__config.type == "bar")
                        {
                            _loc5 = __step_height * _loc11;
                            if (__config.values.value.reverse == true)
                            {
                                _loc5 = -_loc5;
                            } // end if
                        }
                        else
                        {
                            _loc4 = -__step_height * _loc11;
                            if (__config.values.value.reverse == true)
                            {
                                _loc4 = -_loc4;
                            } // end if
                        } // end if
                    } // end else if
                    _loc13.push(_loc4);
                    _loc14.push(_loc5);
                    if (_loc2 != null)
                    {
                        var _loc10 = new com.amcharts.column.Bullet(_loc17, "bullet_mc" + i, i, _loc5, _loc4, graph_data.values[i], _loc7, __config);
                        var _loc6 = _loc10.mc;
                        _loc6.url = graph_data.values[i].url;
                        _loc6.index = i;
                        _loc6.graph_index = _loc8;
                        var _loc12 = _loc10.size;
                        var main_obj = this;
                        _loc10.mc.tabEnabled = false;
                        _loc6.onRollOver = function ()
                        {
                            if (url == undefined)
                            {
                                useHandCursor = false;
                            } // end if
                            main_obj.broadcastMessage("onRollOver", graph_index, index);
                        };
                        _loc6.onRollOut = _loc6.onReleaseOutside = function ()
                        {
                            main_obj.broadcastMessage("onRollOut");
                        };
                        _loc6.url = graph_data.values[i].url;
                        _loc6.onRelease = function ()
                        {
                            main_obj.broadcastMessage("onRelease", graph_index, index);
                            if (graph_data.values[i].url != undefined)
                            {
                                getURL(url, main_obj.__config.line.link_target);
                            } // end if
                        };
                        if (_loc7.data_labels != undefined)
                        {
                            var _loc9 = com.amcharts.column.Custom.formatText(__config, _loc7.data_labels, _loc7.title, _loc2, graph_data.values[i].percent, __data.series[i].value, graph_data.values[i].description, graph_data.values[i].start, __data.series[i].total, graph_data.values[i].duration);
                            if (_loc9 != "" && _loc9 != undefined)
                            {
                                var _loc3 = new com.amcharts.Text(_loc15, "label" + i, i, _loc14[i], _loc13[i], undefined, 100, "center", __config);
                                _loc3.size = __config.line.data_labels_text_size;
                                _loc3.color = __config.line.data_labels_text_color;
                                _loc3.htmlTxt = _loc9;
                                if (__config.type == "bar")
                                {
                                    _loc3.autoSize = "left";
                                    _loc3.x = _loc3.x + (_loc12 / 2 + 2);
                                    _loc3.y = _loc3.y + -_loc3.textHeight / 2;
                                }
                                else
                                {
                                    _loc3.y = _loc3.y + (-_loc3.textHeight - _loc7.width / 2 - _loc12 / 2 - 2);
                                } // end if
                            } // end if
                        } // end if
                    } // end else if
                    ++i;
                } // end while
                new com.amcharts.column.GraphLine(_loc16, "line_mc", 20, _loc14, _loc13, _loc7.width, _loc7.color, __config.line.connect, _loc7.alpha);
                if (_loc7.fill_alpha > 0)
                {
                    var _loc18 = new com.amcharts.column.GraphLine(_loc16, "fill_mc", 10, _loc14, _loc13, 0, _loc7.color, __config.line.connect, 0, _loc7.fill_alpha, 0, __config.type);
                } // end if
            } // end if
        } // end of for
    } // End of the function
} // End of Class
