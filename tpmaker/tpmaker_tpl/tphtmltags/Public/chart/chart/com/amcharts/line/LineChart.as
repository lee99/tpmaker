class com.amcharts.line.LineChart
{
    var __config, __data, __config_original, __data_original, __target_mc, __start, __end, __series_count, __mc, __left_margin, __top_margin, __right_margin, __bottom_margin, __legend, __plugins_mc, __plugins_above_mc, __plugins_behind_mc, __bg_mc, __chart_inited, __zoom_out_mc, __graphs, __indicator, __scroller, __inited_interval, __chart_completed, __completed_interval, __stage_listener, __resize_interval, __popup, __get__completed, __get__start, __get__end, __set__completed, __set__end, __set__start;
    function LineChart(target_mc, name, depth, config, data, config_original, data_original, start, end, resize_on_init)
    {
        __config = config;
        __data = data;
        __config_original = config_original;
        __data_original = data_original;
        __target_mc = target_mc;
        __config.root_mc = __target_mc;
        __start = start;
        __end = end;
        this.__resetMargins();
        __series_count = __data.series.length;
        if (__start == undefined || __start < 0)
        {
            __start = 0;
        } // end if
        if (__end == undefined || __end > __series_count)
        {
            __end = __series_count;
        } // end if
        this.__formatDurations("left");
        this.__formatDurations("right");
        __mc = target_mc.createEmptyMovieClip(name, depth);
        this.__countGraphs();
        if (__config.redraw == true)
        {
            this.__stageListener();
        } // end if
        if (resize_on_init == true)
        {
            __resize_time = 2;
            this.__countResizeTime();
        }
        else
        {
            this.__init();
        } // end else if
    } // End of the function
    function __init()
    {
        var main_obj = this;
        __left_margin = __config.plot_area.margins.left;
        __top_margin = __config.plot_area.margins.top;
        __right_margin = __config.plot_area.margins.right;
        __bottom_margin = __config.plot_area.margins.bottom;
        __config.plot_area.width = __config.width - __left_margin - __right_margin;
        __config.plot_area.height = __config.height - __top_margin - __bottom_margin;
        if (__config.legend.x == undefined)
        {
            __config.legend.x = __left_margin;
        } // end if
        if (__config.legend.y == undefined || __config.legend.redraw_y == true)
        {
            __config.legend.y = __config.height - __bottom_margin + 18 + __config.values.x.text_size + __config.axes.x.width + __config.axes.x.tick_length;
            var _loc6 = 0;
            if (__config.values.x.rotate != 0)
            {
                var _loc7 = new com.amcharts.Text(__mc, "test_value", __values_x_depth, -1000, -1000, 1000, undefined, "left", __config);
                _loc7.size = __config.values.x.text_size;
                _loc7.htmlTxt = __config.longest_series.value;
                _loc6 = _loc7.textWidth * Math.sin(__config.values.x.rotate * 3.141593E+000 / 180) - _loc7.textHeight * Math.sin(__config.values.x.rotate * 3.141593E+000 / 180);
                if (_loc6 + __config.axes.x.width + __config.axes.x.tick_length + __legend_spacing > __bottom_margin && __config.legend.enabled == false)
                {
                    __config.plot_area.margins.bottom = _loc6 + __config.axes.x.width + __config.axes.x.tick_length + __legend_spacing + __config.values.x.text_size + 5;
                    this.__init();
                    return;
                } // end if
            } // end if
            __config.legend.y = __config.legend.y + _loc6;
            __config.legend.redraw_y = true;
        } // end if
        if (__config.legend.width == undefined || __config.legend.redraw_width == true)
        {
            __config.legend.width = __config.plot_area.width;
            __config.legend.redraw_width = true;
        } // end if
        new com.amcharts.Rectangle(__mc, "bg_mc", __bg_depth, __config.width, __config.height, __config.background.color, 1, __config.background.border_color, 0, __config.background.alpha, __config.background.border_alpha);
        new com.amcharts.line.Axes(__mc, "axes_mc", __axes_depth, __config);
        var _loc9 = new com.amcharts.Rectangle(__mc, "plot_area_mc", __plot_area_depth, __config.plot_area.width, __config.plot_area.height, __config.plot_area.color, 0, 0, 0, __config.plot_area.alpha, 0);
        _loc9.mc._x = __left_margin;
        _loc9.mc._y = __top_margin;
        var _loc8 = new com.amcharts.Rectangle(__mc, "plot_area_border_mc", __plot_area_border_depth, __config.plot_area.width, __config.plot_area.height, __config.plot_area.color, 0, __config.plot_area.border_color, 0, 0, __config.plot_area.border_alpha);
        _loc8.mc._x = __left_margin;
        _loc8.mc._y = __top_margin;
        this.__initZoomOut();
        if (__config.help.balloon.text != undefined)
        {
            new com.amcharts.Help(__mc, "help_mc", __help_depth, __config);
        } // end if
        if (__config.legend.enabled == true)
        {
            __legend = new com.amcharts.line.Legend(__mc, "legend_mc", __legend_depth, __config, __data);
            if (__config.legend.redraw_y == true)
            {
                if (__legend.__get__mc()._y + __legend.__get__mc()._height > __config.height - __legend_spacing)
                {
                    var _loc10 = __config.legend.y;
                    __config.legend.y = __config.height - __legend_spacing - __legend.__get__mc()._height;
                    __config.plot_area.margins.bottom = __config.plot_area.margins.bottom + (_loc10 - __config.legend.y);
                    this.__init();
                    return;
                } // end if
            } // end if
            var _loc5 = new Object();
            _loc5.onShowGraph = function (index)
            {
                main_obj.showGraph(index);
            };
            _loc5.onHideGraph = function (index)
            {
                main_obj.hideGraph(index);
            };
            _loc5.onRollOver = function (index)
            {
                main_obj.__graphs.rollOverLine(index);
            };
            _loc5.onRollOut = function (index)
            {
                main_obj.__graphs.rollOutLine(index);
            };
            _loc5.onSelect = function (index)
            {
                main_obj.selectGraph(index);
            };
            _loc5.onDeselect = function (index)
            {
                main_obj.deselectGraph(index);
            };
            __legend.addListener(_loc5);
        } // end if
        if (__config.labels.label.length > 0)
        {
            var _loc12 = new com.amcharts.Labels(__mc, "labels_mc", __labels_depth, __config);
        } // end if
        this.__build(__start, __end);
        if (__config.plugins.plugin.length > 0)
        {
            __plugins_mc = new Array();
            __plugins_above_mc = __mc.createEmptyMovieClip("plugins_above_mc", __plugins_above_depth);
            __plugins_behind_mc = __mc.createEmptyMovieClip("plugins_behinf_mc", __plugins_behind_depth);
            for (var _loc2 = 0; _loc2 < __config.plugins.plugin.length; ++_loc2)
            {
                if (__config.plugins.plugin[_loc2].attributes.position == "behind")
                {
                    var _loc3 = __plugins_behind_mc.createEmptyMovieClip("plugin_mc" + _loc2, _loc2);
                }
                else
                {
                    _loc3 = __plugins_above_mc.createEmptyMovieClip("plugin_mc" + _loc2, _loc2);
                } // end else if
                __plugins_mc.push(_loc3);
                var _loc11 = new com.amcharts.Load();
                var _loc4 = __config.plugins.plugin[_loc2].file.data || __config.plugins.plugin[_loc2].attributes.file;
                _loc11.loadClip(__config.path + _loc4, _loc3, this, "__passPluginData", undefined, [_loc2]);
            } // end of for
        } // end if
        if (__config.background.file != undefined)
        {
            __bg_mc = __target_mc.createEmptyMovieClip("bg_mc", 0);
            _loc11 = new com.amcharts.Load();
            _loc11.loadClip(__config.path + __config.background.file, __bg_mc, this, "__passPluginData");
        } // end if
        if (__data.message != undefined)
        {
            this.__popUp(__data.message, __data.message_bg_color, __data.message_text_color);
        } // end if
    } // End of the function
    function __build(start, end)
    {
        var main_obj = this;
        if (end > __series_count)
        {
            var _loc17 = end - __series_count;
            end = __series_count;
            start = start - _loc17;
        } // end if
        if (__start != start || __end != end || __chart_inited != true)
        {
            __target_mc.externalCall("amGetZoom", [__config.chart_id, __data.series[start].value, __data.series[end - 1].value]);
        } // end if
        __start = start;
        __end = end;
        __config.start = start;
        __config.end = end;
        if (__start == 0 && __end == __series_count)
        {
            __zoom_out_mc._visible = false;
        }
        else
        {
            __zoom_out_mc._visible = true;
        } // end else if
        if (__config.counter.left > 0)
        {
            var _loc11 = com.amcharts.line.MinMax.calculate(__config.values.y_left.min, __config.values.y_left.max, __data.graphs.graph, __config.grid.y_left.approx_count, __config, "left");
        } // end if
        var _loc8 = _loc11[0];
        var _loc10 = _loc11[1];
        var _loc12 = _loc11[2];
        var _loc5 = _loc11[3];
        if (_loc5 <= 0 && _loc5 != undefined && __config.axes.y_left.logarithmic == true)
        {
            if (__config.axes.y_left.type == "100% stacked" && _loc5 == 0)
            {
                _loc5 = 1;
            }
            else
            {
                this.__popUp(__config.strings.logarithm_scale_error);
                return;
            } // end if
        } // end else if
        __config.min_left = _loc8;
        __config.max_left = _loc10;
        __config.step_left = _loc12;
        __config.min_real_left = _loc5;
        __mc.createEmptyMovieClip("grid_left_mc", __grid_left_depth);
        __mc.createEmptyMovieClip("values_left_mc", __values_left_depth);
        if (isNaN(_loc8) != true && isNaN(_loc10) != true && Math.abs(_loc10) != Infinity && Math.abs(_loc8) != Infinity)
        {
            new com.amcharts.line.GridY(__mc, "grid_left_mc", __grid_left_depth, "y_left", __config, _loc8, _loc10, _loc12, _loc5);
            if (__config.values.y_left.enabled == true)
            {
                new com.amcharts.line.Values(__mc, "values_left_mc", __values_left_depth, "y_left", _loc8, _loc10, _loc12, _loc5, __config, __ticks_left_depth);
            } // end if
            if (__config.guides.guide.length > 0)
            {
                var _loc18 = new com.amcharts.line.Guides(__mc, "guides_left_mc", __guides_left_depth, "y_left", __config, _loc8, _loc10, _loc12, _loc5);
            } // end if
        } // end if
        if (__config.counter.right > 0)
        {
            var _loc14 = com.amcharts.line.MinMax.calculate(__config.values.y_right.min, __config.values.y_right.max, __data.graphs.graph, __config.grid.y_right.approx_count, __config, "right");
        } // end if
        var _loc7 = _loc14[0];
        var _loc9 = _loc14[1];
        var _loc13 = _loc14[2];
        var _loc4 = _loc14[3];
        if (_loc4 <= 0 && _loc4 != undefined && __config.axes.y_right.logarithmic == true)
        {
            if (__config.axes.y_right.type == "100% stacked" && _loc4 == 0)
            {
                _loc4 = 1;
            }
            else
            {
                this.__popUp(__config.strings.logarithm_scale_error);
                return;
            } // end if
        } // end else if
        __config.min_right = _loc7;
        __config.max_right = _loc9;
        __config.step_right = _loc13;
        __config.min_real_right = _loc4;
        __mc.createEmptyMovieClip("grid_right_mc", __grid_right_depth);
        __mc.createEmptyMovieClip("values_right_mc", __values_right_depth);
        if (isNaN(_loc7) != true && isNaN(_loc9) != true && Math.abs(_loc9) != Infinity && Math.abs(_loc7) != Infinity)
        {
            new com.amcharts.line.GridY(__mc, "grid_right_mc", __grid_right_depth, "y_right", __config, _loc7, _loc9, _loc13, _loc4);
            if (__config.values.y_right.enabled == true)
            {
                new com.amcharts.line.Values(__mc, "values_right_mc", __values_right_depth, "y_right", _loc7, _loc9, _loc13, _loc4, __config, __ticks_right_depth);
            } // end if
            if (__config.guides.guide.length > 0)
            {
                _loc18 = new com.amcharts.line.Guides(__mc, "guides_right_mc", __guides_right_depth, "y_right", __config, _loc7, _loc9, _loc13, _loc4);
            } // end if
        } // end if
        var _loc19 = new com.amcharts.line.GridX(__mc, "grid_x_mc", __grid_x_depth, __config, __data);
        var _loc20 = new com.amcharts.line.Events(__mc, "events_mc", __events_depth, __config, __data, start, end, __popup_depth);
        __graphs = new com.amcharts.line.Graphs(__mc, "graphs_mc", __graphs_depth, _loc8, _loc10, _loc7, _loc9, _loc5, _loc4, __config, __data);
        var _loc15 = new Object();
        _loc15.onRelease = function (index)
        {
            main_obj.__clickGraph(index);
        };
        _loc15.onRollOver = function (index)
        {
            main_obj.__rollOverGraph(index);
        };
        _loc15.onRollOut = function (index)
        {
            main_obj.__rollOutGraph(index);
        };
        __graphs.addListener(_loc15);
        if (__graphs.__get__noData() == true)
        {
            this.__popUp(__config.strings.no_data);
        } // end if
        __indicator.remove();
        if (__config.indicator.enabled == true)
        {
            var _loc16 = __mc.createEmptyMovieClip("hit_area_mc", __hit_area_depth);
            __indicator = new com.amcharts.line.Indicator(__mc, "indicator_mc", __indicator_depth, __data, __config, _loc16);
            _loc15 = new Object();
            _loc15.onZoom = function (start, end)
            {
                main_obj.__update_scroller = true;
                main_obj.__popup.remove();
                main_obj.__build(main_obj.__start + start, main_obj.__start + end);
            };
            _loc15.onIndexChange = function (index)
            {
                main_obj.__legend.showValues(index);
                main_obj.__active_series = index;
                main_obj.__target_mc.externalCall("amRolledOverSeries", [main_obj.__config.chart_id, main_obj.__data.series[main_obj.__active_series].value]);
            };
            _loc15.onRelease = function ()
            {
                main_obj.__target_mc.externalCall("amClickedOnSeries", [main_obj.__config.chart_id, main_obj.__data.series[main_obj.__active_series].value]);
            };
            _loc15.onHideIndicator = function ()
            {
                main_obj.__legend.showValues(-1);
            };
            __indicator.addListener(_loc15);
            __indicator.update();
        } // end if
        if (__config.scroller.enabled == true && __update_scroller == true)
        {
            __scroller.remove();
            __scroller = new com.amcharts.line.Scroller(__mc, "scroller_mc", __scroller_depth, __config, start, end, __series_count);
            _loc15 = new Object();
            _loc15.onDrag = function (start, end, update_scroller)
            {
                main_obj.__update_scroller = update_scroller;
                if (start != main_obj.__start && end != main_obj.__end)
                {
                    main_obj.__popup.remove();
                    main_obj.__build(start, end);
                } // end if
            };
            __scroller.addListener(_loc15);
            if (__start == 0 && __end == __series_count)
            {
                __scroller.__get__mc()._visible = false;
            } // end if
        } // end if
        for (var _loc2 = 0; _loc2 < __config.plugins.plugin.length; ++_loc2)
        {
            __plugins_above_mc["plugin_mc" + _loc2].setZoom(__start, __end);
            __plugins_behind_mc["plugin_mc" + _loc2].setZoom(__start, __end);
        } // end of for
        __bg_mc.setZoom(__start, __end);
        if (__chart_inited != true)
        {
            __inited_interval = setInterval(this, "__chartInited", 100);
        } // end if
        if (__chart_completed != true)
        {
            clearInterval(__completed_interval);
            __completed_interval = setInterval(this, "__chartCompleted", 101);
        } // end if
    } // End of the function
    function __clickGraph(index)
    {
        if (__config.graphs.graph[index].selected == true)
        {
            this.deselectGraph(index);
        }
        else
        {
            this.selectGraph(index);
        } // end else if
    } // End of the function
    function __rollOverGraph(index)
    {
        __graphs.rollOverLine(index);
        __legend.rollOver(index);
        __indicator.update();
    } // End of the function
    function __rollOutGraph(index)
    {
        __graphs.rollOutLine(index);
        __legend.rollOut(index);
    } // End of the function
    function __passPluginData(plugin_mc, params)
    {
        plugin_mc.config = __config;
        plugin_mc.data = __data;
        plugin_mc.config_original = __config_original;
        plugin_mc.data_original = __data_original;
        plugin_mc.pid = __config.plugins.plugin[params[0]].attributes.pid;
        plugin_mc.index = params[0];
        plugin_mc.start = __start;
        plugin_mc.end = __end;
    } // End of the function
    function __countGraphs()
    {
        __config.counter = new Object();
        __config.counter.left = 0;
        __config.counter.right = 0;
        for (var _loc2 = 0; _loc2 < __config.graphs.graph.length; ++_loc2)
        {
            if (__config.graphs.graph[_loc2].axis == "right")
            {
                ++__config.counter.right;
                continue;
            } // end if
            ++__config.counter.left;
        } // end of for
    } // End of the function
    function __initZoomOut()
    {
        var main_obj = this;
        var _loc2 = new com.amcharts.Button(__mc, "zoom_out_mc", __zoom_out_button_depth, __config.zoom_out_button.text);
        _loc2.cornerRadius = 0;
        _loc2.borderWidth = 0;
        _loc2.borderAlpha = 0;
        _loc2.bgColor = _loc2.bgColorHover = _loc2.bgColorActive = __config.zoom_out_button.color;
        _loc2.bgAlpha = _loc2.bgAlphaHover = _loc2.bgAlphaActive = __config.zoom_out_button.alpha;
        _loc2.hPadding = 5;
        _loc2.attachIcon("lens_mc", __config.zoom_out_button.text_color);
        _loc2.textColor = __config.zoom_out_button.text_color;
        _loc2.font = __config.font;
        _loc2.textColorHover = __config.zoom_out_button.text_color_hover;
        _loc2.textSize = __config.zoom_out_button.text_size;
        _loc2.show();
        __zoom_out_mc = _loc2.mc;
        var _loc4 = com.amcharts.Utils.toCoordinate(__config.zoom_out_button.x, __config.width);
        if (isNaN(_loc4) == true)
        {
            _loc4 = __config.plot_area.width - __zoom_out_mc._width + __config.plot_area.margins.left;
        } // end if
        __zoom_out_mc._x = _loc4;
        var _loc3 = com.amcharts.Utils.toCoordinate(__config.zoom_out_button.y, __config.height);
        if (isNaN(_loc3) == true)
        {
            _loc3 = __config.plot_area.margins.top;
        } // end if
        __zoom_out_mc._y = _loc3;
        var _loc5 = new Object();
        _loc5.onPress = function ()
        {
            main_obj.__update_scroller = true;
            main_obj.__build(0, main_obj.__series_count);
            main_obj.__popup.remove();
        };
        _loc2.addListener(_loc5);
        __zoom_out_mc._visible = false;
    } // End of the function
    function __stageListener()
    {
        var main_obj = this;
        Stage.removeListener(__stage_listener);
        __stage_listener = new Object();
        __stage_listener.onResize = function ()
        {
            main_obj.__resize_time = 2;
        };
        Stage.addListener(__stage_listener);
        clearInterval(__resize_interval);
        __resize_interval = setInterval(this, "__countResizeTime", 20);
        __resize_time = 2;
    } // End of the function
    function __countResizeTime()
    {
        if (__resize_time > 0)
        {
            --__resize_time;
        } // end if
        if (__resize_time == 1)
        {
            __config.width = Stage.width;
            __config.height = Stage.height;
            __target_mc.chart_width = Stage.width;
            __target_mc.chart_height = Stage.height;
            this.__resetMargins();
            this.__init();
        } // end if
    } // End of the function
    function __resetMargins()
    {
        __config.plot_area.margins.left = com.amcharts.Utils.toCoordinate(__config.plot_area.margins.initial_left, __config.width);
        __config.plot_area.margins.right = com.amcharts.Utils.toCoordinate(__config.plot_area.margins.initial_right, __config.width);
        __config.plot_area.margins.top = com.amcharts.Utils.toCoordinate(__config.plot_area.margins.initial_top, __config.height);
        __config.plot_area.margins.bottom = com.amcharts.Utils.toCoordinate(__config.plot_area.margins.initial_bottom, __config.height);
    } // End of the function
    function __getIndex(data, value)
    {
        for (var _loc1 = 0; _loc1 < data.length; ++_loc1)
        {
            if (data[_loc1].value == value)
            {
                return (_loc1);
            } // end if
        } // end of for
        return;
    } // End of the function
    function __popUp(text, color, text_color)
    {
        __target_mc.__process = undefined;
        __target_mc.externalCall("amError", [__config.chart_id, text]);
        if (__config.error_messages.enabled == true)
        {
            var _loc3 = __config.plot_area.width * 7.000000E-001;
            var _loc2 = com.amcharts.Utils.toCoordinate(__config.error_messages.x, __config.width);
            var _loc6 = com.amcharts.Utils.toCoordinate(__config.error_messages.y, __config.height);
            if (isNaN(_loc2) == true)
            {
                _loc2 = __left_margin + (__config.plot_area.width - _loc3) / 2;
            } // end if
            if (isNaN(_loc6) == true)
            {
                _loc6 = __top_margin + __config.plot_area.height / 2.500000E+000;
            } // end if
            if (color == undefined)
            {
                color = __config.error_messages.color;
            } // end if
            if (text_color == undefined)
            {
                text_color = __config.error_messages.text_color;
            } // end if
            __popup = new com.amcharts.PopUp(__mc, "popup_mc", __popup_depth, text, _loc2, _loc6, _loc3, color, text_color, "center", __config.error_messages.alpha, __config.error_messages.text_size);
        } // end if
    } // End of the function
    function __chartInited()
    {
        __chart_inited = true;
        clearInterval(__inited_interval);
        if (__target_mc.__chart_inited != true)
        {
            __target_mc.externalCall("amChartInited", [__config.chart_id]);
            __target_mc.__chart_inited = true;
        } // end if
    } // End of the function
    function __chartCompleted()
    {
        __chart_completed = true;
        clearInterval(__completed_interval);
        var _loc2 = __target_mc.__process;
        __target_mc.__process = undefined;
        __target_mc.externalCall("amProcessCompleted", [__config.chart_id, _loc2]);
    } // End of the function
    function __formatDurations(axis)
    {
        if (__config.values["y_" + axis].duration != undefined)
        {
            for (var _loc3 = 0; _loc3 < __data.graphs.graph.length; ++_loc3)
            {
                if (__config.graphs.graph[_loc3].axis == axis)
                {
                    for (var _loc2 = 0; _loc2 < __data.graphs.graph[_loc3].values.length; ++_loc2)
                    {
                        __data.graphs.graph[_loc3].values[_loc2].duration = com.amcharts.Durations.formatDuration(__data.graphs.graph[_loc3].values[_loc2].value, __config.values["y_" + axis].duration, "", __config.strings, undefined, __config.decimals_separator, __config.thousands_separator);
                    } // end of for
                } // end if
            } // end of for
        } // end if
    } // End of the function
    function set completed(param)
    {
        __chart_completed = param;
        //return (this.completed());
        null;
    } // End of the function
    function die()
    {
        clearInterval(__resize_interval);
        clearInterval(__inited_interval);
        clearInterval(__completed_interval);
        Stage.removeListener(__stage_listener);
        __indicator.remove();
        __scroller.remove();
        for (var _loc2 = 0; _loc2 < __plugins_mc.length; ++_loc2)
        {
            __plugins_mc.die();
        } // end of for
    } // End of the function
    function setZoom(from, to)
    {
        __update_scroller = true;
        __popup.remove();
        if (from == undefined && to == undefined)
        {
            this.__build(0, __series_count);
        }
        else
        {
            var _loc3 = this.__getIndex(__data.series, from);
            var _loc2 = this.__getIndex(__data.series, to) + 1;
            if (isNaN(_loc3) == false && isNaN(_loc2) == false)
            {
                this.__build(_loc3, _loc2);
            }
            else
            {
                this.__popUp(__config.strings.wrong_zoom_value);
            } // end else if
        } // end else if
    } // End of the function
    function showGraph(index)
    {
        __popup.remove();
        __legend.show(index);
        __graphs.showLine(index);
        __indicator.update();
        if (__config.rescale_on_hide == true)
        {
            this.__build(__start, __end);
        } // end if
        __target_mc.externalCall("amGraphShow", [__config.chart_id, index, __config.graphs.graph[index].title]);
    } // End of the function
    function hideGraph(index)
    {
        __legend.hide(index);
        __graphs.hideLine(index);
        __indicator.update();
        if (__config.rescale_on_hide == true)
        {
            this.__build(__start, __end);
        } // end if
        __target_mc.externalCall("amGraphHide", [__config.chart_id, index, __config.graphs.graph[index].title]);
    } // End of the function
    function selectGraph(index, kill_hover)
    {
        __legend.select(index, kill_hover);
        __indicator.showBalloon(index);
        __target_mc.externalCall("graphSelect", [index, __config.graphs.graph[index].title]);
        __target_mc.externalCall("amGraphSelect", [__config.chart_id, index, __config.graphs.graph[index].title]);
    } // End of the function
    function deselectGraph(index, kill_hover)
    {
        __legend.deselect(index, kill_hover);
        __indicator.hideBalloon(index);
        __target_mc.externalCall("graphDeselect", [index, __config.graphs.graph[index].title]);
        __target_mc.externalCall("amGraphDeselect", [__config.chart_id, index, __config.graphs.graph[index].title]);
    } // End of the function
    function get start()
    {
        return (__start);
    } // End of the function
    function get end()
    {
        return (__end);
    } // End of the function
    function set start(param)
    {
        __start = param;
        //return (this.start());
        null;
    } // End of the function
    function set end(param)
    {
        __end = param;
        //return (this.end());
        null;
    } // End of the function
    var __resize_time = 0;
    var __update_scroller = true;
    var __bg_depth = 10;
    var __hit_area_depth = 20;
    var __plot_area_depth = 30;
    var __grid_left_depth = 40;
    var __grid_right_depth = 50;
    var __events_depth = 60;
    var __grid_x_depth = 70;
    var __ticks_x_depth = 80;
    var __ticks_left_depth = 90;
    var __ticks_right_depth = 100;
    var __axes_depth = 110;
    var __plot_area_border_depth = 120;
    var __scroller_depth = 130;
    var __plugins_behind_depth = 140;
    var __guides_left_depth = 150;
    var __guides_right_depth = 160;
    var __graphs_depth = 170;
    var __values_x_depth = 180;
    var __values_left_depth = 190;
    var __values_right_depth = 200;
    var __plugins_above_depth = 210;
    var __zoom_out_button_depth = 220;
    var __legend_depth = 230;
    var __labels_depth = 240;
    var __indicator_depth = 250;
    var __help_depth = 260;
    var __popup_depth = 3000;
    var __legend_spacing = 13;
} // End of Class
