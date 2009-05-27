class com.amcharts.column.Chart
{
    var __config, __data, __config_original, __data_original, __target_mc, __mc, __left_margin, __top_margin, __right_margin, __bottom_margin, __columns, __plugins_above_mc, __plugins_behind_mc, __bg_mc, __chart_inited, __inited_interval, __chart_completed, __completed_interval, __balloon_graph_index, __balloon_column_index, __balloon, __mouse_listener, __stage_listener, __resize_interval, __popup, __get__completed, __set__completed;
    function Chart(target_mc, name, depth, config, data, config_original, data_original, resize_on_init)
    {
        __config = config;
        __data = data;
        __config_original = config_original;
        __data_original = data_original;
        __target_mc = target_mc;
        __mc = target_mc.createEmptyMovieClip(name, depth);
        this.__resetMargins();
        __config.column_count = 0;
        __config.line_count = 0;
        for (var _loc3 = 0; _loc3 < __config.graphs.graph.length; ++_loc3)
        {
            if (__config.graphs.graph[_loc3].type == "column")
            {
                ++__config.column_count;
            } // end if
            if (__config.graphs.graph[_loc3].type == "line")
            {
                ++__config.line_count;
            } // end if
        } // end of for
        if (__config.values.value.duration != undefined)
        {
            for (var _loc3 = 0; _loc3 < __data.graphs.graph.length; ++_loc3)
            {
                for (var _loc2 = 0; _loc2 < __data.graphs.graph[_loc3].values.length; ++_loc2)
                {
                    __data.graphs.graph[_loc3].values[_loc2].duration = com.amcharts.Durations.formatDuration(__data.graphs.graph[_loc3].values[_loc2].value, __config.values.value.duration, "", __config.strings, __config.values.value.duration, __config.decimals_separator, __config.thousands_separator);
                } // end of for
            } // end of for
        } // end if
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
        __left_margin = __config.plot_area.margins.left;
        __top_margin = __config.plot_area.margins.top;
        __right_margin = __config.plot_area.margins.right;
        __bottom_margin = __config.plot_area.margins.bottom;
        __config.dx = __config.depth * Math.cos(__config.angle * 3.141593E+000 / 180);
        __config.dy = -__config.depth * Math.sin(__config.angle * 3.141593E+000 / 180);
        if (__config.column.type == "3d column")
        {
            __config.dx = __config.dx * __data.graphs.graph.length;
            __config.dy = __config.dy * __data.graphs.graph.length;
        } // end if
        __config.plot_area.width = __config.width - __left_margin - __right_margin;
        __config.plot_area.height = __config.height - __top_margin - __bottom_margin;
        if (__config.legend.x == undefined)
        {
            __config.legend.x = __left_margin;
        } // end if
        if (__config.legend.y == undefined || __config.legend.redraw_y == true)
        {
            if (__config.type == "bar")
            {
                __config.legend.y = __config.height - __bottom_margin + __legend_spacing + __config.values.value.text_size + 5 + __config.axes.value.tick_length + __config.axes.value.width;
            }
            else
            {
                __config.legend.y = __config.height - __bottom_margin + __legend_spacing + __config.values.category.text_size + 5 + __config.axes.category.width + __config.axes.category.tick_length;
            } // end else if
            var _loc4 = 0;
            if (__config.type == "bar")
            {
            }
            else if (__config.values.category.rotate > 0 && __config.values.category.rotate < 90)
            {
                var _loc5 = new com.amcharts.Text(__mc, "test_value", __values_category_depth, -1000, -1000, 1000, undefined, "left", __config);
                _loc5.size = __config.values.category.text_size;
                _loc5.htmlTxt = __config.longest_series.value;
                _loc4 = _loc5.textWidth * Math.sin(__config.values.category.rotate * 3.141593E+000 / 180);
                if (_loc4 + __config.axes.category.width + __config.axes.category.tick_length + __legend_spacing > __bottom_margin && __config.legend.enabled == false)
                {
                    __config.plot_area.margins.bottom = _loc4 + __config.axes.category.width + __config.axes.category.tick_length + __legend_spacing + __config.values.category.text_size + 5;
                    this.__init();
                    return;
                } // end if
            } // end else if
            __config.legend.y = __config.legend.y + _loc4;
            __config.legend.redraw_y = true;
        } // end if
        if (__config.legend.width == undefined || __config.legend.redraw_width == true)
        {
            __config.legend.width = __config.plot_area.width;
            __config.legend.redraw_width = true;
        } // end if
        new com.amcharts.Rectangle(__mc, "bg_mc", __bg_depth, __config.width, __config.height, __config.background.color, 1, __config.background.border_color, 0, __config.background.alpha, __config.background.border_alpha);
        new com.amcharts.column.PlotArea(__mc, "plotArea_mc", __plot_area_depth, __config);
        new com.amcharts.column.Axes(__mc, "axes_mc", __axes_depth, __config);
        __mc.createEmptyMovieClip("grid0_mc", __grid0_depth);
        if (__config.legend.enabled == true)
        {
            if (__config.legend.redraw_y == true)
            {
                if (__config.type == "bar")
                {
                }
                else if (__config.values.category.enabled == true && __config.values.category.rotate == 0)
                {
                    var _loc2 = new com.amcharts.column.ValuesCategory(__mc, "values_category_mc", __values_category_depth, __config, __data);
                    if (_loc2.mc._y + _loc2.mc._height + __legend_spacing > __config.legend.y)
                    {
                        __config.legend.y = _loc2.mc._y + _loc2.mc._height + __legend_spacing;
                    } // end if
                } // end if
            } // end else if
            var _loc3 = new com.amcharts.column.Legend(__mc, "legend_mc", __legend_depth, __config, __data);
            if (__config.legend.redraw_y == true)
            {
                if (_loc3.mc._y + _loc3.mc._height > __config.height - __legend_spacing)
                {
                    var _loc6 = __config.legend.y;
                    __config.legend.y = __config.height - __legend_spacing - _loc3.mc._height;
                    __config.plot_area.margins.bottom = __config.plot_area.margins.bottom + (_loc6 - __config.legend.y);
                    this.__init();
                    return;
                } // end if
            } // end if
        } // end if
        this.__build();
        if (__data.message != undefined)
        {
            this.__popUp(__data.message, __data.message_bg_color, __data.message_text_color);
        } // end if
    } // End of the function
    function __build()
    {
        var main_obj = this;
        var _loc12 = com.amcharts.column.MinMax.calculate(__config.values.value.min, __config.values.value.max, __data.graphs.graph, __config.grid.value.approx_count, __config);
        var _loc7 = _loc12[0];
        var _loc6 = _loc12[1];
        var _loc10 = _loc12[2];
        var _loc5 = _loc12[3];
        __config.min = _loc7;
        __config.max = _loc6;
        __config.step = _loc10;
        __config.min_real = _loc5;
        if (_loc5 <= 0 && _loc5 != undefined && __config.axes.value.logarithmic == true)
        {
            if (__config.column.type == "100% stacked" && _loc5 == 0)
            {
                _loc5 = 1;
            }
            else
            {
                this.__popUp(__config.strings.logarithm_scale_error);
                return;
            } // end if
        } // end else if
        if (isNaN(_loc7) != true && isNaN(_loc6) != true && Math.abs(_loc6) != Infinity && Math.abs(_loc7) != Infinity)
        {
            var _loc20 = new com.amcharts.column.GridValue(__mc, "grid_category_mc", __grid_value_depth, _loc7, _loc6, _loc10, _loc5, __config, __mc.grid0_mc);
            if (__config.values.value.enabled == true)
            {
                var _loc9 = new com.amcharts.column.ValuesValue(__mc, "values_value_mc", __values_value_depth, _loc7, _loc6, _loc10, _loc5, __config);
            } // end if
            var _loc19 = new com.amcharts.column.GridCategory(__mc, "grid_category_mc", __grid_category_depth, __config, __data);
            if (__config.values.category.enabled == true)
            {
                var _loc11 = new com.amcharts.column.ValuesCategory(__mc, "values_category_mc", __values_category_depth, __config, __data);
            } // end if
            if (__config.legend.enabled == true && __config.legend.redraw_y == true)
            {
                if (__config.type == "bar")
                {
                    if (__config.values.value.enabled == true && (__config.values.value.rotate == 0 || __config.values.value.rotate == 90))
                    {
                        if (_loc9.mc.getBounds(__mc).yMax + __legend_spacing > __config.legend.y)
                        {
                            __config.legend.y = _loc9.mc.getBounds(__mc).yMax + __legend_spacing;
                        } // end if
                    }
                    else if (__config.values.value.rotate > 0)
                    {
                        var _loc16 = _loc9.widest * Math.sin(__config.values.value.rotate * 3.141593E+000 / 180) + (__config.values.value.text_size + 3) * Math.sin(__config.values.value.rotate * 3.141593E+000 / 180);
                        __config.legend.y = _loc9.mc._y + _loc16 + __legend_spacing + __config.axes.value.width + __config.axes.value.tick_length;
                    } // end else if
                }
                else if (__config.values.category.enabled == true && (__config.values.category.rotate == 0 || __config.values.category.rotate == 90))
                {
                    if (_loc11.mc.getBounds(__mc).yMax + __legend_spacing > __config.legend.y)
                    {
                        __config.legend.y = _loc11.mc.getBounds(__mc).yMax + __legend_spacing;
                    } // end if
                }
                else if (__config.values.value.rotate > 0)
                {
                    _loc16 = _loc11.widest * Math.sin(__config.values.category.rotate * 3.141593E+000 / 180) + (__config.values.category.text_size + 3) * Math.sin(__config.values.category.rotate * 3.141593E+000 / 180);
                    __config.legend.y = _loc11.mc._y + _loc16 + __legend_spacing + __config.axes.category.width + __config.axes.category.tick_length;
                } // end else if
                var _loc14 = new com.amcharts.column.Legend(__mc, "legend_mc", __legend_depth, __config, __data);
                if (__config.legend.redraw_y == true)
                {
                    if (_loc14.mc._y + _loc14.mc._height > __config.height - __legend_spacing)
                    {
                        var _loc17 = __config.legend.y;
                        __config.legend.y = __config.height - __legend_spacing - _loc14.mc._height;
                        __config.plot_area.margins.bottom = __config.plot_area.margins.bottom + (_loc17 - __config.legend.y);
                        this.__init();
                        return;
                    } // end if
                } // end if
            } // end if
            if (__config.column.type == "stacked" || __config.column.type == "100% stacked")
            {
                __columns = new com.amcharts.column.Stacked(__mc, "columns_mc", __columns_depth, __config, __data, false);
            }
            else
            {
                __columns = new com.amcharts.column.Clustered(__mc, "columns_mc", __columns_depth, __config, __data);
            } // end else if
            var _loc15 = new com.amcharts.column.Lines(__mc, "lines_mc", __lines_depth, _loc7, _loc6, _loc5, __config, __data);
            var _loc8 = new Object();
            _loc8.onRollOver = function (graph_index, column_index)
            {
                main_obj.__balloon_graph_index = graph_index;
                main_obj.__balloon_column_index = column_index;
                main_obj.__showBalloon();
                var _loc1 = main_obj.__data.graphs.graph[graph_index].values[column_index];
                main_obj.__target_mc.externalCall("amRolledOverBullet", [main_obj.__config.chart_id, graph_index, _loc1.value, main_obj.__data.series[column_index].value, _loc1.url, _loc1.description]);
            };
            _loc8.onRelease = function (graph_index, column_index)
            {
                var _loc1 = main_obj.__data.graphs.graph[graph_index].values[column_index];
                main_obj.__target_mc.externalCall("amClickedOnBullet", [main_obj.__config.chart_id, graph_index, _loc1.value, main_obj.__data.series[column_index].value, _loc1.url, _loc1.description]);
            };
            _loc8.onRollOut = function ()
            {
                main_obj.__hideBalloon();
            };
            __columns.addListener(_loc8);
            _loc15.addListener(_loc8);
        } // end if
        if (__config.labels.label.length > 0)
        {
            var _loc22 = new com.amcharts.Labels(__mc, "labels_mc", __labels_depth, __config);
        } // end if
        if (__config.plugins.plugin.length > 0)
        {
            __plugins_above_mc = __mc.createEmptyMovieClip("plugins_above_mc", __plugins_above_depth);
            __plugins_behind_mc = __mc.createEmptyMovieClip("plugins_behinf_mc", __plugins_behind_depth);
            for (var _loc2 = 0; _loc2 < __config.plugins.plugin.length; ++_loc2)
            {
                if (__config.plugins.plugin[_loc2].attributes.position == "behind")
                {
                    var _loc4 = __plugins_behind_mc.createEmptyMovieClip("plugin_mc" + _loc2, _loc2);
                }
                else
                {
                    _loc4 = __plugins_above_mc.createEmptyMovieClip("plugin_mc" + _loc2, _loc2);
                } // end else if
                var _loc18 = new com.amcharts.Load();
                var _loc3 = __config.plugins.plugin[_loc2].file.data || __config.plugins.plugin[_loc2].attributes.file;
                _loc18.loadClip(__config.path + _loc3, _loc4, this, "__passPluginData", undefined, [_loc2]);
            } // end of for
        } // end if
        if (__config.background.file != undefined)
        {
            __bg_mc = __target_mc.createEmptyMovieClip("bg_mc", 0);
            _loc18 = new com.amcharts.Load();
            _loc18.loadClip(__config.path + __config.background.file, __bg_mc, this, "__passPluginData");
        } // end if
        if (__config.guides.guide.length > 0)
        {
            var _loc21 = new com.amcharts.column.Guides(__mc, __guides_above_depth, __guides_behind_depth, __config, "value", _loc7, _loc6, _loc10, _loc5);
        } // end if
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
    function __passPluginData(plugin_mc, params)
    {
        plugin_mc.config = __config;
        plugin_mc.data = __data;
        plugin_mc.config_original = __config_original;
        plugin_mc.data_original = __data_original;
        plugin_mc.pid = __config.plugins.plugin[params[0]].attributes.pid;
        plugin_mc.index = params[0];
        plugin_mc.start = 0;
        plugin_mc.end = __data.series.length;
    } // End of the function
    function __showBalloon()
    {
        if (__config.balloon.enabled == true)
        {
            var _loc2 = com.amcharts.column.Custom.formatText(__config, __config.graphs.graph[__balloon_graph_index].balloon_text, __config.graphs.graph[__balloon_graph_index].title, __data.graphs.graph[__balloon_graph_index].values[__balloon_column_index].value, __data.graphs.graph[__balloon_graph_index].values[__balloon_column_index].percent, __data.series[__balloon_column_index].value, __data.graphs.graph[__balloon_graph_index].values[__balloon_column_index].description, __data.graphs.graph[__balloon_graph_index].values[__balloon_column_index].start, __data.series[__balloon_column_index].total, __data.graphs.graph[__balloon_graph_index].values[__balloon_column_index].duration);
            if (_loc2 != "" && _loc2 != undefined && _loc2 != " ")
            {
                __balloon = new com.amcharts.Balloon(__mc, "balloon_mc", __balloon_depth, _loc2, 0, 0, __config.width, __config.height, __config.balloon.max_width, __config);
                __balloon.pointTo(__mc._xmouse, __mc._ymouse);
                __balloon.__set__distance(12);
                __balloon.__set__hMargins(12);
                __balloon.__set__vMargins(5);
                __balloon.__set__pointerWidth(20);
                if (isNaN(__config.graphs.graph[__balloon_graph_index].balloon_color) == true)
                {
                    if (__data.graphs.graph[__balloon_graph_index].values[__balloon_column_index].color != undefined)
                    {
                        var _loc4 = __data.graphs.graph[__balloon_graph_index].values[__balloon_column_index].color;
                    }
                    else
                    {
                        _loc4 = __config.graphs.graph[__balloon_graph_index].color;
                    } // end else if
                    _loc4 = com.amcharts.Colors.adjustLuminosity(_loc4, -10);
                }
                else
                {
                    _loc4 = __config.graphs.graph[__balloon_graph_index].balloon_color;
                } // end else if
                var _loc3 = __config.balloon.border_color;
                if (_loc3 == undefined)
                {
                    _loc3 = _loc4;
                } // end if
                __balloon.__set__bgColor(_loc4);
                __balloon.__set__borderColor(_loc4);
                __balloon.__set__bgAlpha(__config.graphs.graph[__balloon_graph_index].balloon_alpha);
                __balloon.__set__borderAlpha(__config.graphs.graph[__balloon_graph_index].balloon_alpha);
                __balloon.__set__textColor(__config.graphs.graph[__balloon_graph_index].balloon_text_color);
                __balloon.__set__textSize(__config.balloon.text_size);
                __balloon.__set__cornerRadius(__config.balloon.corner_radius);
                __balloon.__set__borderWidth(__config.balloon.border_width);
                __balloon.__set__borderAlpha(__config.balloon.border_alpha);
                __balloon.__set__borderColor(_loc3);
                __balloon.show();
                Mouse.removeListener(__mouse_listener);
                __mouse_listener = new Object();
                var main_obj = this;
                __mouse_listener.onMouseMove = function ()
                {
                    main_obj.__balloon.pointTo(main_obj.__mc._xmouse, main_obj.__mc._ymouse);
                };
                Mouse.addListener(__mouse_listener);
            } // end if
        } // end if
    } // End of the function
    function __hideBalloon()
    {
        Mouse.removeListener(__mouse_listener);
        __balloon.hide();
    } // End of the function
    function __stageListener()
    {
        Stage.removeListener(__stage_listener);
        var main_obj = this;
        __stage_listener = new Object();
        __stage_listener.onResize = function ()
        {
            main_obj.__resize_time = 2;
        };
        Stage.addListener(__stage_listener);
        clearInterval(__resize_interval);
        __resize_interval = setInterval(this, "__countResizeTime", 40);
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
            __columns.die();
            this.__resetMargins();
            this.__init();
        } // end if
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
    function set completed(param)
    {
        __chart_completed = param;
        //return (this.completed());
        null;
    } // End of the function
    function __resetMargins()
    {
        __config.plot_area.margins.left = com.amcharts.Utils.toCoordinate(__config.plot_area.margins.initial_left, __config.width);
        __config.plot_area.margins.right = com.amcharts.Utils.toCoordinate(__config.plot_area.margins.initial_right, __config.width);
        __config.plot_area.margins.top = com.amcharts.Utils.toCoordinate(__config.plot_area.margins.initial_top, __config.height);
        __config.plot_area.margins.bottom = com.amcharts.Utils.toCoordinate(__config.plot_area.margins.initial_bottom, __config.height);
    } // End of the function
    function die()
    {
        __columns.die();
        clearInterval(__resize_interval);
        clearInterval(__inited_interval);
        clearInterval(__completed_interval);
        Stage.removeListener(__stage_listener);
        Mouse.removeListener(__mouse_listener);
    } // End of the function
    var __resize_time = 0;
    var __bg_depth = 100;
    var __plot_area_depth = 200;
    var __grid_value_depth = 300;
    var __grid_category_depth = 400;
    var __guides_behind_depth = 500;
    var __plugins_behind_depth = 600;
    var __columns_depth = 700;
    var __values_value_depth = 800;
    var __values_category_depth = 900;
    var __guides_above_depth = 1000;
    var __lines_depth = 1100;
    var __plugins_above_depth = 1200;
    var __axes_depth = 1300;
    var __grid0_depth = 1400;
    var __legend_depth = 1500;
    var __labels_depth = 1600;
    var __balloon_depth = 5000;
    var __popup_depth = 6000;
    var __legend_spacing = 13;
} // End of Class
