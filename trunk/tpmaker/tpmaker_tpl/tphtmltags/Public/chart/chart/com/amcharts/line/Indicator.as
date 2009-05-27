class com.amcharts.line.Indicator
{
    var __data, __config, __mc, __hit_area_mc, __width, __height, __area_mc, useHandCursor, __count, __step_width, __selection_mc, __line_mc, __y_balloons_mc, __mouse_listener, __x_balloon_mc, __x, __y, __old_x, __old_y, broadcastMessage, __previous_yt, __previous_yb, __previous_y, __previous_height, __selecting, __selection_x, __start, __end;
    function Indicator(target_mc, name, depth, data, config, hit_area_mc)
    {
        AsBroadcaster.initialize(this);
        __data = data;
        __config = config;
        __mc = target_mc.createEmptyMovieClip(name, depth);
        __mc._x = __config.plot_area.margins.left;
        __mc._y = __config.plot_area.margins.top;
        __hit_area_mc = hit_area_mc;
        __hit_area_mc._x = __config.plot_area.margins.left;
        __hit_area_mc._y = __config.plot_area.margins.top;
        __width = __config.plot_area.width;
        __height = __config.plot_area.height;
        this.__init();
    } // End of the function
    function __init()
    {
        var main_obj = this;
        var _loc4 = new com.amcharts.Rectangle(__hit_area_mc, "area_mc", 0, __width, __height + __config.axes.x.tick_length + __config.values.x.text_size + 15, 0);
        __area_mc = _loc4.mc;
        __area_mc._alpha = 0;
        __area_mc.tabEnabled = false;
        __area_mc.onRollOver = function ()
        {
            useHandCursor = false;
            _root.showIndicator = true;
        };
        __area_mc.onRollOut = function ()
        {
            _root.showIndicator = false;
            main_obj.__updatePosition(main_obj.__mc._xmouse);
        };
        __count = __config.end - __config.start;
        if (__config.start_on_axis == true)
        {
            __step_width = __width / (__count - 1);
        }
        else
        {
            __step_width = __width / __count;
            __mc._x = __mc._x + __step_width / 2;
        } // end else if
        var _loc5 = new com.amcharts.Rectangle(__mc, "selection_mc", 50, __width, __height, __config.indicator.selection_color);
        __selection_mc = _loc5.mc;
        __selection_mc._alpha = __config.indicator.selection_alpha;
        __selection_mc._visible = false;
        var _loc3 = new com.amcharts.Line(__mc, "line_mc", 100, [0, 0], [0, __height], 0, __config.indicator.color);
        __line_mc = _loc3.mc;
        __line_mc._alpha = __config.indicator.line_alpha;
        __y_balloons_mc = __mc.createEmptyMovieClip("y_balloons_mc", 200);
        Mouse.removeListener(__mouse_listener);
        __mouse_listener = new Object();
        __mouse_listener.onMouseMove = function ()
        {
            main_obj.__updatePosition(main_obj.__mc._xmouse);
            updateAfterEvent();
        };
        __mouse_listener.onMouseDown = function ()
        {
            if (_root.showIndicator == true)
            {
                if (main_obj.__config.indicator.zoomable == true)
                {
                    main_obj.__selection_x = main_obj.__x;
                    main_obj.__selection_mc._x = main_obj.__selection_x;
                    main_obj.__selection_mc._width = 0;
                    main_obj.__selection_mc._visible = true;
                    main_obj.__start = Math.round(main_obj.__selection_x / main_obj.__step_width);
                    main_obj.__selecting = true;
                } // end if
            } // end if
        };
        __mouse_listener.onMouseUp = function ()
        {
            if (main_obj.__selecting == true)
            {
                main_obj.__selecting = false;
                main_obj.__selection_mc._visible = false;
                main_obj.__end = Math.round(main_obj.__x / main_obj.__step_width);
                main_obj.__makeZoom();
            } // end if
        };
        Mouse.addListener(__mouse_listener);
        this.__updatePosition(__mc._xmouse);
    } // End of the function
    function __updatePosition(x)
    {
        if (_root.showIndicator == true)
        {
            __line_mc._visible = true;
            __y_balloons_mc._visible = true;
            __x_balloon_mc._visible = true;
            var _loc5 = Math.round(x / __step_width);
            if (_loc5 < 0)
            {
                _loc5 = 0;
            } // end if
            if (_loc5 > __count - 1)
            {
                _loc5 = __count - 1;
            } // end if
            if (__data.series[_loc5].value != undefined)
            {
                __x = _loc5 * __step_width;
                _loc5 = _loc5 + __config.start;
                __y = __mc._ymouse;
                if ((__x != __old_x || __y != __old_y) && _loc5 < __config.end)
                {
                    __line_mc._x = __x;
                    this.broadcastMessage("onIndexChange", _loc5);
                    if (__config.indicator.x_balloon_enabled == true)
                    {
                        var _loc18 = new com.amcharts.Balloon(__mc, "x_balloon", 150, __data.series[_loc5].value, -__config.plot_area.margins.left, __height, __width + __config.plot_area.margins.right, __height + __config.plot_area.margins.bottom, __width, __config);
                        _loc18.pointTo(__x, __height + 1 + __config.axes.x.width);
                        _loc18.distance = __config.axes.x.tick_length;
                        _loc18.hMargins = 8;
                        _loc18.pointerWidth = 16;
                        _loc18.vMargins = 1;
                        _loc18.bgColor = __config.indicator.color;
                        _loc18.borderColor = __config.indicator.color;
                        _loc18.textColor = __config.indicator.x_balloon_text_color;
                        _loc18.textSize = __config.values.x.text_size;
                        _loc18.font = __config.font;
                        _loc18.show();
                        __x_balloon_mc = _loc18.mc;
                    } // end if
                    var _loc16 = 0;
                    var _loc17 = Number.MAX_VALUE;
                    __previous_yt = undefined;
                    __previous_yb = undefined;
                    __previous_y = undefined;
                    __previous_height = undefined;
                    var _loc9 = new Array();
                    for (var _loc3 = 0; _loc3 < __data.graphs.graph.length; ++_loc3)
                    {
                        var _loc7 = __config.graphs.graph[_loc3].y[_loc5 - __config.start] + __height;
                        _loc9[_loc3] = {graph_index: _loc3, y: _loc7};
                    } // end of for
                    _loc9.sortOn("y", Array.DESCENDING | Array.NUMERIC);
                    if (__config.balloon.enabled == true)
                    {
                        for (var _loc6 = 0; _loc6 < __data.graphs.graph.length; ++_loc6)
                        {
                            if (__config.balloon.only_one == true)
                            {
                                _loc3 = _loc9[_loc6].graph_index;
                                if (__config.graphs.graph[_loc3].selected == true && __config.graphs.graph[_loc3].hidden == false)
                                {
                                    var _loc12 = Math.abs(__mc._ymouse - (__config.graphs.graph[_loc3].y[_loc5 - __config.start] + __height));
                                    if (_loc12 < _loc17)
                                    {
                                        _loc17 = _loc12;
                                        _loc16 = _loc3;
                                    } // end if
                                } // end if
                            } // end if
                        } // end of for
                        for (var _loc6 = 0; _loc6 < __data.graphs.graph.length; ++_loc6)
                        {
                            _loc3 = _loc9[_loc6].graph_index;
                            if (__config.balloon.only_one == true && _loc9[_loc6].graph_index != _loc16)
                            {
                                if (__y_balloons_mc["y_balloon" + _loc3] != undefined)
                                {
                                    __y_balloons_mc["y_balloon" + _loc3]._visible = false;
                                } // end if
                                continue;
                            } // end if
                            var _loc13 = __y_balloons_mc.createEmptyMovieClip("y_balloon" + _loc3, __data.graphs.graph.length - _loc3);
                            if (__data.graphs.graph[_loc3].values[_loc5].value != null && __config.graphs.graph[_loc3].hidden != true)
                            {
                                var _loc10 = 0;
                                if (__config.vertical_lines.clustered == true && __config.graphs.graph[_loc3].vertical_lines == true)
                                {
                                    _loc10 = -(__config.vertical_lines.count / 2 - __config.graphs.graph[_loc3].vertical_lines_index - 5.000000E-001) * __config.vertical_lines.vertical_line_width;
                                } // end if
                                var _loc8 = com.amcharts.line.Custom.formatText(__config, __config.graphs.graph[_loc3].balloon_text, __config.graphs.graph[_loc3].title, __data.graphs.graph[_loc3].values[_loc5].value, __data.series[_loc5].value, __data.graphs.graph[_loc3].values[_loc5].description, __data.graphs.graph[_loc3].values[_loc5].percent, __data.graphs.graph[_loc3].values[_loc5].duration);
                                if (_loc8 != "" && _loc8 != undefined)
                                {
                                    if (__config.graphs.graph[_loc3].selected == true)
                                    {
                                        _loc7 = __data.graphs.graph[_loc3].values[_loc5].y + __height;
                                        var _loc11 = __height;
                                        var _loc14 = 0;
                                        if (_loc7 <= __previous_y && __previous_y != undefined)
                                        {
                                            _loc11 = __previous_yt;
                                        } // end if
                                        if (_loc7 > __previous_y && __previous_y != undefined)
                                        {
                                            _loc14 = __previous_yb;
                                        } // end if
                                        var _loc15 = com.amcharts.Utils.checkUndefined(__config.balloon.max_width, __width / 2);
                                        var _loc4 = new com.amcharts.Balloon(_loc13, "y_balloon", 0, _loc8, 0, _loc14, __width, _loc11, _loc15);
                                        _loc4.pointTo(__x + _loc10, _loc7);
                                        _loc4.distance = 7;
                                        _loc4.hMargins = 8;
                                        _loc4.bMargins = 5;
                                        _loc4.pointerWidth = 16;
                                        _loc4.vMargins = 3;
                                        _loc4.pointerPosition = "horizontal";
                                        _loc4.bgColor = __config.graphs.graph[_loc3].balloon_color;
                                        _loc4.bgAlpha = __config.graphs.graph[_loc3].balloon_alpha;
                                        _loc4.borderAlpha = com.amcharts.Utils.checkUndefined(__config.balloon.border_alpha, __config.graphs.graph[_loc3].balloon_alpha);
                                        _loc4.borderColor = com.amcharts.Utils.checkUndefined(__config.balloon.border_color, __config.graphs.graph[_loc3].balloon_color);
                                        _loc4.borderWidth = __config.balloon.border_width;
                                        _loc4.textColor = __config.graphs.graph[_loc3].balloon_text_color;
                                        _loc4.textSize = __config.balloon.text_size;
                                        _loc4.font = __config.font;
                                        _loc4.cornerRadius = __config.balloon.corner_radius;
                                        if (__config.balloon.corner_radius > 0)
                                        {
                                            _loc4.showBubble = true;
                                        } // end if
                                        _loc4.show();
                                        __previous_yt = _loc4.yTop;
                                        __previous_yb = _loc4.yBot;
                                        __previous_y = _loc7;
                                    } // end if
                                } // end if
                            } // end if
                            if (__data.graphs.graph[_loc3].values[_loc5].value == null || __config.graphs.graph[_loc3].hidden == true || __config.graphs.graph[_loc3].selected == false)
                            {
                                _loc13._visible = false;
                            } // end if
                        } // end of for
                    } // end if
                } // end if
                if (__selecting == true)
                {
                    if (__selection_x > __x)
                    {
                        __selection_mc._x = __x;
                        __selection_mc._width = __selection_x - __x;
                    } // end if
                    if (__selection_x < __x)
                    {
                        __selection_mc._x = __selection_x;
                        __selection_mc._width = __x - __selection_x;
                    } // end if
                    if (__selection_x == __x)
                    {
                        __selection_mc._x = __x;
                        __selection_mc._width = 0;
                    } // end if
                } // end if
            } // end if
            __old_x = __x;
            __old_y = __y;
        }
        else
        {
            this.broadcastMessage("onHideIndicator");
            __line_mc._visible = false;
            __y_balloons_mc._visible = false;
            __x_balloon_mc._visible = false;
        } // end else if
    } // End of the function
    function __makeZoom()
    {
        if (__start > __end)
        {
            var _loc2 = __start;
            __start = __end;
            __end = _loc2;
        } // end if
        if (__start < 0)
        {
            __start = 0;
        } // end if
        if (__end > __count)
        {
            __end = __count;
        } // end if
        if (__start != __end && isNaN(__start) == false && isNaN(__end) == false)
        {
            this.broadcastMessage("onZoom", __start, __end + 1);
        }
        else
        {
            this.broadcastMessage("onRelease");
        } // end else if
    } // End of the function
    function show()
    {
        this.__init();
    } // End of the function
    function showBalloon(index)
    {
        __config.graphs.graph[index].selected = true;
        __config.old_selected[index] = true;
        __old_x = null;
        this.__updatePosition(__mc._xmouse);
    } // End of the function
    function hideBalloon(index)
    {
        __config.old_selected[index] = false;
        __config.graphs.graph[index].selected = false;
        __old_x = null;
        this.__updatePosition(__mc._xmouse);
    } // End of the function
    function update()
    {
        __old_x = null;
        this.__updatePosition(__mc._xmouse);
    } // End of the function
    function remove()
    {
        Mouse.removeListener(__mouse_listener);
    } // End of the function
} // End of Class
