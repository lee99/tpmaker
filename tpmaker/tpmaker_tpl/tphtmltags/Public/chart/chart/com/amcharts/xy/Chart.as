class com.amcharts.xy.Chart
{
    var __config, __data, __config_original, __data_original, __target_mc, __mc, __left_margin, __top_margin, __right_margin, __bottom_margin, __zoomer, __values_x, __plugins_above_mc, __plugins_behind_mc, __bg_mc, __chart_inited, __inited_interval, __chart_completed, __completed_interval, __scroller_vertical, __scroller_horizontal, __zoom_out_mc, __graphs, __values_y, __balloon_graph_index, __balloon_column_index, __balloon, __balloon_mc, __mouse_listener, __stage_listener, __resize_interval, __popup, __get__completed, __set__completed;
    function Chart(target_mc, name, depth, config, data, config_original, data_original, resize_on_init)
    {
        __config = config;
        __data = data;
        __config_original = config_original;
        __data_original = data_original;
        __target_mc = target_mc;
        __config.root_mc = __target_mc;
        __mc = target_mc.createEmptyMovieClip(name, depth);
        this.__resetMargins();
        if (resize_on_init == true)
        {
            __resize_time = 2;
            this.__countResizeTime();
        }
        else
        {
            this.__init();
        } // end else if
        if (__config.redraw == true)
        {
            this.__stageListener();
        } // end if
    } // End of the function
    function __init()
    {
        var main_obj = this;
        __left_margin = __config.plot_area.margins.left;
        __top_margin = __config.plot_area.margins.top;
        __right_margin = __config.plot_area.margins.right;
        __bottom_margin = __config.plot_area.margins.bottom;
        __config.dx = __config.depth * Math.cos(__config.angle * 3.141593E+000 / 180);
        __config.dy = -__config.depth * Math.sin(__config.angle * 3.141593E+000 / 180);
        __config.plot_area.width = __config.width - __left_margin - __right_margin;
        __config.plot_area.height = __config.height - __top_margin - __bottom_margin;
        if (__config.legend.x == undefined)
        {
            __config.legend.x = __left_margin;
        } // end if
        if (__config.legend.y == undefined || __config.legend.redraw_y == true)
        {
            __config.legend.y = __config.height - __bottom_margin + 18 + __config.values.x.text_size + __config.axes.x.width + __config.axes.x.tick_length;
            __config.legend.redraw_y = true;
        } // end if
        if (__config.legend.width == undefined || __config.legend.redraw_width == true)
        {
            __config.legend.width = __config.plot_area.width;
            __config.legend.redraw_width = true;
        } // end if
        var _loc12 = new com.amcharts.Rectangle(__mc, "bg_mc", __bg_depth, __config.width, __config.height, __config.background.color, 1, __config.background.border_color, 0, __config.background.alpha, __config.background.border_alpha).__get__mc();
        new com.amcharts.xy.Axes(__mc, "axes_mc", __axes_depth, __config);
        var _loc8 = new com.amcharts.xy.PlotArea(__mc, "plotArea_mc", __plot_area_depth, __config).__get__mc();
        __config.plot_area_mc = _loc8;
        var _loc6 = com.amcharts.Dates.dateFromatToArray(__config.date_formats.date_input);
        var _loc14 = _loc6[0];
        __config.smallest_duration = __config.period_duration[_loc6[0]];
        if (__config.smallest_duration == 1000)
        {
            __config.smallest_duration = 5000;
        } // end if
        this.__minMax();
        this.__build();
        if (__data.message != undefined)
        {
            this.__popUp(__data.message, __data.message_bg_color, __data.message_text_color);
        } // end if
        if (__config.zoom.enabled == true)
        {
            __zoomer.die();
            __zoomer = new com.amcharts.xy.Zoomer(__mc, "zoomer_mc", __zoomer_depth, __config, _loc8);
            var main_obj = this;
            var _loc7 = new Object();
            _loc7.onZoom = function (left, top, right, bottom)
            {
                main_obj.__build(left, top, right, bottom);
            };
            __zoomer.addListener(_loc7);
            this.__initZoomOut();
        } // end if
        if (__config.help.balloon.text != undefined)
        {
            new com.amcharts.Help(__mc, "help_mc", __help_depth, __config);
        } // end if
        if (__config.legend.enabled == true)
        {
            if (__config.legend.redraw_y == true)
            {
                if (__config.values.x.enabled == true && (__config.values.x.rotate == 0 || __config.values.x.rotate == 90))
                {
                    if (__values_x.__get__mc()._y + __values_x.__get__mc()._height + __legend_spacing > __config.legend.y)
                    {
                        __config.legend.y = __values_x.__get__mc()._y + __values_x.__get__mc()._height + __legend_spacing;
                    } // end if
                }
                else if (__config.values.x.rotate > 0)
                {
                    var _loc9 = __values_x.__get__widest() * Math.sin(__config.values.x.rotate * 3.141593E+000 / 180) + (__config.values.x.text_size + 3) * Math.sin(__config.values.x.rotate * 3.141593E+000 / 180);
                    __config.legend.y = __values_x.__get__mc()._y + _loc9 + __legend_spacing + __config.axes.x.width + __config.axes.x.tick_length;
                } // end if
            } // end else if
            var _loc5 = new com.amcharts.xy.Legend(__mc, "legend_mc", __legend_depth, __config, __data);
            if (__config.legend.redraw_y == true)
            {
                if (_loc5.mc._y + _loc5.mc._height > __config.height - __legend_spacing)
                {
                    var _loc10 = __config.legend.y;
                    __config.legend.y = __config.height - __legend_spacing - _loc5.mc._height;
                    __config.plot_area.margins.bottom = __config.plot_area.margins.bottom + (_loc10 - __config.legend.y);
                    this.__init();
                    return;
                } // end if
            } // end if
        } // end if
        if (__config.labels.label.length > 0)
        {
            var _loc13 = new com.amcharts.Labels(__mc, "labels_mc", __labels_depth, __config);
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
                var _loc11 = new com.amcharts.Load();
                var _loc3 = __config.plugins.plugin[_loc2].file.data || __config.plugins.plugin[_loc2].attributes.file;
                _loc11.loadClip(__config.path + _loc3, _loc4, this, "__passPluginData", undefined, [_loc2]);
            } // end of for
        } // end if
        if (__config.background.file != undefined)
        {
            __bg_mc = __target_mc.createEmptyMovieClip("bg_mc", 0);
            _loc11 = new com.amcharts.Load();
            _loc11.loadClip(__config.path + __config.background.file, __bg_mc, this, "__passPluginData");
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
    function __minMax()
    {
        var _loc3 = com.amcharts.xy.MinMax.calculate(__config.values.x.min, __config.values.x.max, __data.graphs.graph, __config.grid.x.approx_count, __config, "x");
        var _loc11 = _loc3[0];
        var _loc7 = _loc3[1];
        var _loc9 = _loc3[2];
        var _loc5 = _loc3[3];
        if (_loc5 <= 0 && _loc5 != undefined && __config.axes.x.logarithmic == true)
        {
            this.__popUp(__config.strings.logarithm_scale_error);
            return;
        } // end if
        __config.min_x = _loc11;
        __config.max_x = _loc7;
        __config.step_x = _loc9;
        __config.min_real_x = _loc5;
        var _loc2 = com.amcharts.xy.MinMax.calculate(__config.values.y.min, __config.values.y.max, __data.graphs.graph, __config.grid.y.approx_count, __config, "y");
        var _loc10 = _loc2[0];
        var _loc6 = _loc2[1];
        var _loc8 = _loc2[2];
        var _loc4 = _loc2[3];
        if (_loc4 <= 0 && _loc4 != undefined && __config.axes.y.logarithmic == true)
        {
            this.__popUp(__config.strings.logarithm_scale_error);
            return;
        } // end if
        __config.min_y = _loc10;
        __config.max_y = _loc6;
        __config.step_y = _loc8;
        __config.min_real_y = _loc4;
    } // End of the function
    function __build(left, top, right, bottom)
    {
        var _loc3 = __config.min_x;
        var _loc7 = __config.min_y;
        var _loc2 = __config.max_x;
        var _loc5 = __config.max_y;
        var _loc14 = __config.min_real_x;
        var _loc13 = __config.min_real_y;
        var _loc9 = __config.step_x;
        var _loc8 = __config.step_y;
        var main_obj = this;
        if (left == undefined)
        {
            left = _loc3;
        } // end if
        if (top == undefined)
        {
            top = _loc5;
        } // end if
        if (right == undefined)
        {
            right = _loc2;
        } // end if
        if (bottom == undefined)
        {
            bottom = _loc7;
        } // end if
        __config.left = left;
        __config.top = top;
        __config.right = right;
        __config.bottom = bottom;
        __config.plot_area.width_real = (_loc2 - _loc3) * (__config.plot_area.width / (right - left));
        __config.plot_area.height_real = (_loc5 - _loc7) * (__config.plot_area.height / (top - bottom));
        __scroller_vertical.die();
        __scroller_horizontal.die();
        __zoom_out_mc._visible = false;
        if (left != _loc3 || right != _loc2)
        {
            if (__config.scroller.enabled == true)
            {
                __scroller_horizontal = new com.amcharts.xy.Scroller(__mc, "scroller_horizontal_mc", __scroller_horizontal_depth, "horizontal", __config);
                listener = new Object();
                listener.onScroll = function (left)
                {
                    main_obj.__scrollContents("horizontal", left);
                };
                __scroller_horizontal.addListener(listener);
            } // end if
            __zoom_out_mc._visible = true;
        } // end if
        if (top != _loc5 || bottom != _loc7)
        {
            if (__config.scroller.enabled == true)
            {
                __scroller_vertical = new com.amcharts.xy.Scroller(__mc, "scroller_vertical_mc", __scroller_vertical_depth, "vertical", __config);
                listener = new Object();
                listener.onScroll = function (bottom)
                {
                    main_obj.__scrollContents("vertical", bottom);
                };
                __scroller_vertical.addListener(listener);
            } // end if
            __zoom_out_mc._visible = true;
        } // end if
        this.__amGetZoom();
        _loc9 = this.__recalculateStep(__config.plot_area.width_real, __config.plot_area.width, _loc9);
        _loc8 = this.__recalculateStep(__config.plot_area.height_real, __config.plot_area.height, _loc8);
        if (isNaN(_loc3) != true && isNaN(_loc2) != true && Math.abs(_loc2) != Infinity && Math.abs(_loc3) != Infinity)
        {
            __graphs = new com.amcharts.xy.Graphs(__mc, "graphs_mc", __graphs_depth, __config, __data);
            __config.graphs_mc = __graphs.mc;
            __config.bullets.grow_time = 0;
            __values_x = new com.amcharts.xy.Values(__mc, "values_x_mc", __values_x_depth, "x", _loc3, _loc2, _loc9, _loc14, __config, __grid_x_depth);
            __values_x.showHideValues();
            __values_y = new com.amcharts.xy.Values(__mc, "values_y_mc", __values_y_depth, "y", _loc7, _loc5, _loc8, _loc13, __config, __grid_y_depth);
            __values_y.showHideValues();
            var listener = new Object();
            listener.onRollOver = function (graph_index, index)
            {
                main_obj.__balloon_graph_index = graph_index;
                main_obj.__balloon_column_index = index;
                main_obj.__showBalloon();
            };
            listener.onRollOut = function ()
            {
                main_obj.__hideBalloon();
            };
            __graphs.addListener(listener);
            if (__config.mask == true)
            {
                var _loc12 = new com.amcharts.xy.PlotArea(__mc, "mask_mc", __mask_depth, __config);
                _loc12.mc._alpha = 0;
                __graphs.__get__mc().setMask(_loc12.mc);
            } // end if
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
    } // End of the function
    function __scrollContents(direction, position)
    {
        if (direction == "horizontal")
        {
            var _loc4 = __config.plot_area.width_real / (__config.max_x - __config.min_x);
            __graphs.__get__mc()._x = __config.plot_area.margins.left - (position - __config.min_x) * _loc4 + __config.dx;
            __values_x.__get__mc()._x = __graphs.__get__mc()._x - __config.dx;
            __values_x.__get__grid_mc()._x = __graphs.__get__mc()._x;
            __values_x.__get__grid3d_mc()._x = __graphs.__get__mc()._x;
            if (__config.values.x.reverse == true)
            {
                var _loc5 = __config.right;
                __config.right = __config.max_x - position + __config.min_x;
                __config.left = __config.left + (__config.right - _loc5);
            }
            else
            {
                __config.right = __config.right - (__config.left - position);
                __config.left = position;
            } // end else if
            __values_x.showHideValues();
        } // end if
        if (direction == "vertical")
        {
            _loc4 = __config.plot_area.height_real / (__config.max_y - __config.min_y);
            __graphs.__get__mc()._y = __config.height - (__config.plot_area.margins.bottom - (position - __config.min_y) * _loc4) + __config.dy;
            __values_y.__get__mc()._y = __graphs.__get__mc()._y - __config.dy;
            __values_y.__get__grid_mc()._y = __graphs.__get__mc()._y;
            __values_y.__get__grid3d_mc()._y = __graphs.__get__mc()._y;
            if (__config.values.x.reverse == true)
            {
                var _loc3 = __config.top;
                __config.top = __config.max_y - position + __config.min_y;
                __config.bottom = __config.bottom + (__config.top - _loc3);
            }
            else
            {
                __config.top = __config.top - (__config.bottom - position);
                __config.bottom = position;
            } // end else if
            __values_y.showHideValues();
        } // end if
        this.__amGetZoom();
    } // End of the function
    function __showBalloon()
    {
        if (__config.balloon.enabled == true)
        {
            var _loc2 = com.amcharts.xy.Custom.formatText(__config, __config.graphs.graph[__balloon_graph_index].balloon_text, __config.graphs.graph[__balloon_graph_index].title, __data.graphs.graph[__balloon_graph_index].values[__balloon_column_index].value, __data.graphs.graph[__balloon_graph_index].values[__balloon_column_index].percent, __data.graphs.graph[__balloon_graph_index].values[__balloon_column_index].description, __data.graphs.graph[__balloon_graph_index].values[__balloon_column_index].start, __data.graphs.graph[__balloon_graph_index].values[__balloon_column_index].x, __data.graphs.graph[__balloon_graph_index].values[__balloon_column_index].y, __config.date_formats.balloon);
            if (_loc2 != "" && _loc2 != undefined && _loc2 != " ")
            {
                __balloon = new com.amcharts.Balloon(__mc, "balloon_mc", __balloon_depth, _loc2, 0, 0, __config.width, __config.height, __config.balloon.max_width, __config);
                __balloon.pointTo(__mc._xmouse, __mc._ymouse);
                __balloon.__set__distance(12);
                __balloon.__set__hMargins(12);
                __balloon.__set__pointerWidth(20);
                __balloon.__set__vMargins(5);
                if (isNaN(__config.balloon.color) == true)
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
                    _loc4 = __config.balloon.color;
                } // end else if
                var _loc3 = __config.balloon.border_color;
                if (_loc3 == undefined)
                {
                    _loc3 = _loc4;
                } // end if
                __balloon.__set__bgColor(_loc4);
                __balloon.__set__borderColor(_loc4);
                __balloon.__set__bgAlpha(__config.balloon.alpha);
                __balloon.__set__borderAlpha(__config.balloon.alpha);
                __balloon.__set__textColor(__config.balloon.text_color);
                __balloon.__set__textSize(__config.balloon.text_size);
                __balloon.__set__cornerRadius(__config.balloon.corner_radius);
                __balloon.__set__borderWidth(__config.balloon.border_width);
                __balloon.__set__borderAlpha(__config.balloon.border_alpha);
                __balloon.__set__borderColor(_loc3);
                __balloon.show();
                __balloon_mc = __balloon.mc;
                __balloon.pointTo(__mc._xmouse, __mc._ymouse);
            } // end if
            Mouse.removeListener(__mouse_listener);
            __mouse_listener = new Object();
            var main_obj = this;
            __mouse_listener.onMouseMove = function ()
            {
                main_obj.__balloon.pointTo(main_obj.__mc._xmouse, main_obj.__mc._ymouse);
            };
            Mouse.addListener(__mouse_listener);
        } // end if
    } // End of the function
    function __hideBalloon()
    {
        Mouse.removeListener(__mouse_listener);
        __balloon.hide();
    } // End of the function
    function __recalculateStep(real, visible, step)
    {
        var _loc3 = int(real / visible);
        if (_loc3 < 1)
        {
            _loc3 = 1;
        } // end if
        var _loc2 = [2, 4, 5, 10, 20, 40, 50, 100];
        for (var _loc1 = 0; _loc1 < _loc2.length; ++_loc1)
        {
            if (_loc3 >= _loc2[_loc1] && _loc3 < _loc2[_loc1 + 1])
            {
                _loc3 = _loc2[_loc1];
                break;
            } // end if
        } // end of for
        step = step / _loc3;
        return (step);
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
            _loc4 = __config.plot_area.width - __zoom_out_mc._width + __config.plot_area.margins.left + __config.dx;
        } // end if
        __zoom_out_mc._x = _loc4;
        var _loc3 = com.amcharts.Utils.toCoordinate(__config.zoom_out_button.y, __config.height);
        if (isNaN(_loc3) == true)
        {
            _loc3 = __config.plot_area.margins.top + __config.dy;
        } // end if
        __zoom_out_mc._y = _loc3;
        var _loc5 = new Object();
        _loc5.onPress = function ()
        {
            main_obj.__build();
        };
        _loc2.addListener(_loc5);
        __zoom_out_mc._visible = false;
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
    function __amGetZoom()
    {
        var _loc3 = __config.right;
        var _loc4 = __config.left;
        var _loc5 = __config.top;
        var _loc2 = __config.bottom;
        if (__config.previous_l != _loc4 || __config.previous_r != _loc3 || __config.previous_t != _loc5 || __config.previous_b != _loc2 || __chart_inited != true)
        {
            if (__config.values.x.type == "date")
            {
                _loc4 = com.amcharts.Dates.dateToString(__config.date_formats.date_input, new Date(_loc4));
                _loc3 = com.amcharts.Dates.dateToString(__config.date_formats.date_input, new Date(_loc3));
            } // end if
            if (__config.values.y.type == "date")
            {
                _loc5 = com.amcharts.Dates.dateToString(__config.date_formats.date_input, new Date(_loc5));
                _loc2 = com.amcharts.Dates.dateToString(__config.date_formats.date_input, new Date(_loc2));
            } // end if
            __target_mc.externalCall("amGetZoom", [__config.chart_id, _loc4, _loc3, _loc2, _loc5]);
        } // end if
        __config.previous_l = __config.left;
        __config.previous_r = __config.right;
        __config.previous_t = __config.top;
        __config.previous_b = __config.bottom;
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
    function die()
    {
        __graphs.die();
        clearInterval(__resize_interval);
        clearInterval(__inited_interval);
        clearInterval(__completed_interval);
        __zoomer.die();
        Stage.removeListener(__stage_listener);
        Mouse.removeListener(__mouse_listener);
    } // End of the function
    function setZoom(left, right, bottom, top)
    {
        if (__config.values.x.type == "date")
        {
            left = com.amcharts.Dates.stringToDate(__config.date_formats.date_input, left).getTime();
            right = com.amcharts.Dates.stringToDate(__config.date_formats.date_input, right).getTime();
        } // end if
        this.__build(left, top, right, bottom);
    } // End of the function
    var __resize_time = 0;
    var __bg_depth = 10;
    var __plot_area_depth = 20;
    var __grid_y_depth = 30;
    var __grid_x_depth = 50;
    var __axes_depth = 70;
    var __plugins_behind_depth = 80;
    var __graphs_depth = 90;
    var __values_x_depth = 100;
    var __values_y_depth = 110;
    var __mask_depth = 120;
    var __plugins_above_depth = 130;
    var __legend_depth = 140;
    var __labels_depth = 150;
    var __zoomer_depth = 160;
    var __scroller_horizontal_depth = 170;
    var __scroller_vertical_depth = 180;
    var __zoom_out_button_depth = 190;
    var __balloon_depth = 200;
    var __help_depth = 300;
    var __popup_depth = 3000;
    var __legend_spacing = 13;
} // End of Class
