class com.amcharts.xy.Graphs
{
    var __config, __data, __mc, __min_x, __max_x, __min_y, __max_y, __min_real_x, __min_real_y, __height, __width, __base_x, __base_y, __tween_array, __step_x, __step_y, __graph_count, __max_value, url, useHandCursor, index, graph_index, __get__mc;
    function Graphs(target_mc, name, depth, config, data)
    {
        AsBroadcaster.initialize(this);
        __config = config;
        __data = data;
        __mc = target_mc.createEmptyMovieClip(name, depth);
        __min_x = __config.min_x;
        __max_x = __config.max_x;
        __min_y = __config.min_y;
        __max_y = __config.max_y;
        __min_real_x = __config.min_real_x;
        __min_real_y = __config.min_real_y;
        __height = __config.plot_area.height_real;
        __width = __config.plot_area.width_real;
        __base_x = 0;
        __base_y = 0;
        __tween_array = new Array();
        if (__min_x > 0 && __max_x > 0)
        {
            __base_x = __min_x;
        } // end if
        if (__min_x < 0 && __max_x < 0)
        {
            __base_x = __max_x;
        } // end if
        if (__min_y > 0 && __max_y > 0)
        {
            __base_y = __min_y;
        } // end if
        if (__min_y < 0 && __max_y < 0)
        {
            __base_y = __max_y;
        } // end if
        __step_x = __width / (__max_x - __min_x);
        __step_y = __height / (__max_y - __min_y);
        if (__config.values.x.reverse == true)
        {
            __mc._x = __config.plot_area.margins.left - (__max_x - __config.right) * __step_x + __config.dx;
        }
        else
        {
            __mc._x = __config.plot_area.margins.left - (__config.left - __min_x) * __step_x + __config.dx;
        } // end else if
        if (__config.values.y.reverse == true)
        {
            __mc._y = __config.height - (__config.plot_area.margins.bottom - (__max_y - __config.top) * __step_y) + __config.dy;
        }
        else
        {
            __mc._y = __config.height - (__config.plot_area.margins.bottom - (__config.bottom - __min_y) * __step_y) + __config.dy;
        } // end else if
        __config.plot_area.x = __mc._x;
        __config.plot_area.y = __mc._y;
        if (__config.axes.x.logarithmic == true)
        {
            __base_x = __min_real_x;
            var _loc3 = Math.log(__max_x) * 4.342945E-001 - Math.log(__base_x) * 4.342945E-001;
            __step_x = __width / _loc3;
        } // end if
        if (__config.axes.y.logarithmic == true)
        {
            __base_y = __min_real_y;
            _loc3 = Math.log(__max_y) * 4.342945E-001 - Math.log(__base_y) * 4.342945E-001;
            __step_y = __height / _loc3;
        } // end if
        __graph_count = __data.graphs.graph.length;
        __max_value = -Number.MAX_VALUE;
        for (var _loc2 = 0; _loc2 < __graph_count; ++_loc2)
        {
            if (__max_value < __config.graphs.graph[_loc2].max_value)
            {
                __max_value = __config.graphs.graph[_loc2].max_value;
            } // end if
        } // end of for
        this.__init();
    } // End of the function
    function __init()
    {
        for (var _loc9 = 0; _loc9 < __graph_count; ++_loc9)
        {
            var _loc5 = __config.graphs.graph[_loc9];
            var _loc3 = __data.graphs.graph[_loc9];
            var _loc11 = new Array();
            var _loc12 = new Array();
            var _loc24 = __mc.createEmptyMovieClip("line_mc" + _loc9, _loc9);
            var _loc17 = __mc.createEmptyMovieClip("labels_mc" + _loc9, _loc9 + __graph_count * 6);
            var _loc18 = __mc.createEmptyMovieClip("bullets_mc" + _loc9, _loc9 + __graph_count * 3);
            if (__config.axes.x.logarithmic != true)
            {
                _loc24._x = Math.abs(__min_x - __base_x) * __step_x;
                _loc17._x = Math.abs(__min_x - __base_x) * __step_x;
                _loc18._x = Math.abs(__min_x - __base_x) * __step_x;
            } // end if
            if (__config.axes.y.logarithmic != true)
            {
                _loc24._y = -Math.abs(__min_y - __base_y) * __step_y;
                _loc17._y = -Math.abs(__min_y - __base_y) * __step_y;
                _loc18._y = -Math.abs(__min_y - __base_y) * __step_y;
            } // end if
            for (var _loc2 = 0; _loc2 < _loc3.values.length; ++_loc2)
            {
                if (__config.axes.x.logarithmic == true)
                {
                    var _loc19 = Math.log(_loc3.values[_loc2].x) * 4.342945E-001 - Math.log(__base_x) * 4.342945E-001;
                    var _loc14 = __step_x * _loc19;
                    if (__config.values.x.reverse == true)
                    {
                        _loc14 = __width - _loc14;
                    } // end if
                    _loc12.push(_loc14);
                }
                else if (__config.values.x.reverse == true)
                {
                    _loc12.push(__width + (__base_x - _loc3.values[_loc2].x) * __step_x);
                }
                else
                {
                    _loc12.push((_loc3.values[_loc2].x - __base_x) * __step_x);
                } // end else if
                if (__config.axes.y.logarithmic == true)
                {
                    _loc19 = Math.log(_loc3.values[_loc2].y) * 4.342945E-001 - Math.log(__base_y) * 4.342945E-001;
                    _loc14 = __step_y * _loc19;
                    if (__config.values.y.reverse == true)
                    {
                        _loc14 = __height - _loc14;
                    } // end if
                    _loc11.push(-_loc14);
                }
                else if (__config.values.y.reverse == true)
                {
                    _loc11.push(-__height - (__base_y - _loc3.values[_loc2].y) * __step_y);
                }
                else
                {
                    _loc11.push((-_loc3.values[_loc2].y + __base_y) * __step_y);
                } // end else if
                var _loc4 = _loc18.createEmptyMovieClip("bullet_mc" + _loc2, _loc2);
                _loc4.index = _loc2;
                _loc4.graph_index = _loc9;
                if (_loc3.values[_loc2].bullet != undefined)
                {
                    var _loc7 = _loc3.values[_loc2].bullet;
                }
                else
                {
                    _loc7 = _loc5.bullet;
                } // end else if
                if (_loc7.indexOf("?") != 1)
                {
                    var _loc10 = _loc7.split("?")[0].substr(-3).toLowerCase();
                }
                else
                {
                    _loc10 = _loc7.substr(-3).toLowerCase();
                } // end else if
                if (_loc10 == "gif" || _loc10 == "jpg" || _loc10 == "png" || _loc10 == "swf")
                {
                    var _loc16 = _loc4.createEmptyMovieClip("icon_mc", 1);
                    var _loc23 = new com.amcharts.Load();
                    _loc23.loadClip(__config.path + _loc7, _loc16, this, "__placeBullet", undefined, [_loc10]);
                    var _loc22 = true;
                }
                else if (_loc7 == "bubble")
                {
                    var _loc21 = com.amcharts.Utils.checkUndefined(_loc3.values[_loc2].bullet_color, _loc5.bullet_color);
                    _loc16 = new com.amcharts.Slice(_loc4, "bullet_mc", 1, 0, 360, _loc21, 20, 20, 0, 100, 0, 0, 0, 0, "radial", [0, -50]).__get__mc();
                }
                else
                {
                    _loc16 = _loc4.attachMovie("bullet_" + _loc7, "bullet_mc", 1);
                } // end else if
                if (_loc22 != true)
                {
                    var _loc20 = new Color(_loc16.main_mc);
                    if (_loc3.values[_loc2].bullet_color != undefined)
                    {
                        _loc20.setRGB(_loc3.values[_loc2].bullet_color);
                    }
                    else
                    {
                        _loc20.setRGB(_loc5.bullet_color);
                    } // end else if
                    _loc20 = new Color(_loc16.border_mc);
                    _loc20.setRGB(__config.plot_area.color);
                    this.__resizeBullet(_loc16);
                } // end if
                _loc4._x = _loc12[_loc2];
                _loc4._y = _loc11[_loc2];
                var _loc15 = _loc4.attachMovie("bullet_round", "hit_mc", 0);
                _loc15._width = 15;
                _loc15._height = 15;
                _loc15._alpha = 0;
                var main_obj = this;
                _loc4.tabEnabled = false;
                _loc4.onRollOver = function ()
                {
                    if (url == undefined)
                    {
                        useHandCursor = false;
                    } // end if
                    main_obj.broadcastMessage("onRollOver", graph_index, index);
                    if (main_obj.__config.bullets.hover_brightness != 0)
                    {
                        new com.amcharts.Brightness(this, main_obj.__config.bullets.hover_brightness);
                    } // end if
                    var _loc2 = main_obj.__data.graphs.graph[graph_index].values[index];
                    main_obj.__config.root_mc.externalCall("amRolledOverBullet", [main_obj.__config.chart_id, graph_index, _loc2.value, _loc2.x, _loc2.y, _loc2.url, _loc2.description]);
                };
                _loc4.onRollOut = _loc4.onReleaseOutside = function ()
                {
                    main_obj.broadcastMessage("onRollOut");
                    new com.amcharts.Brightness(this, 0);
                };
                _loc4.url = _loc3.values[_loc2].url;
                _loc4.onRelease = function ()
                {
                    var _loc2 = main_obj.__data.graphs.graph[graph_index].values[index];
                    main_obj.__config.root_mc.externalCall("amClickedOnBullet", [main_obj.__config.chart_id, graph_index, _loc2.value, _loc2.x, _loc2.y, _loc2.url, _loc2.description]);
                    if (url != undefined)
                    {
                        getURL(url, main_obj.__config.link_target);
                    } // end if
                };
                if (_loc5.data_labels != undefined)
                {
                    var _loc13 = com.amcharts.xy.Custom.formatText(__config, _loc5.data_labels, _loc5.title, _loc3.values[_loc2].value, _loc3.values[_loc2].percent, _loc3.values[_loc2].description, _loc3.values[_loc2].start, _loc3.values[_loc2].x, _loc3.values[_loc2].y, __config.date_formats.data_labels);
                    if (_loc13 != "" && _loc13 != undefined)
                    {
                        var _loc6 = new com.amcharts.Text(_loc17, "label" + _loc2, _loc2, _loc12[_loc2], _loc11[_loc2], undefined, 100, "center", __config);
                        _loc6.htmlTxt = _loc13;
                        _loc6.size = __config.line.data_labels_text_size;
                        _loc6.color = __config.line.data_labels_text_color;
                        _loc6.y = _loc6.y - _loc6.height / 2;
                    } // end if
                } // end if
                if (_loc3.values[_loc2].bullet_alpha != undefined)
                {
                    _loc4._alpha = _loc3.values[_loc2].bullet_alpha;
                    continue;
                } // end if
                _loc4._alpha = _loc5.bullet_alpha;
            } // end of for
            new com.amcharts.xy.GraphLine(_loc24, "line_mc", 20, _loc12, _loc11, _loc5.width, _loc5.color, _loc5.alpha);
        } // end of for
    } // End of the function
    function __placeBullet(clip_mc, params)
    {
        if (params[0] != "swf")
        {
            clip_mc._x = clip_mc._x - clip_mc._width / 2;
            clip_mc._y = clip_mc._y - clip_mc._height / 2;
        } // end if
        this.__resizeBullet(clip_mc);
    } // End of the function
    function __resizeBullet(clip_mc)
    {
        var _loc7 = __config.graphs.graph[clip_mc._parent.graph_index];
        var _loc5 = __data.graphs.graph[clip_mc._parent.graph_index];
        var _loc4 = clip_mc._parent.index;
        if (_loc5.values[_loc4].bullet_size != undefined)
        {
            var _loc6 = _loc5.values[_loc4].bullet_size;
        }
        else
        {
            _loc6 = _loc7.bullet_size;
        } // end else if
        if (_loc5.values[_loc4].value != undefined && isNaN(_loc5.values[_loc4].value) != true)
        {
            _loc6 = _loc7.bullet_max_size * Math.abs(_loc5.values[_loc4].value) / __max_value;
        } // end if
        if (_loc6 < _loc7.bullet_min_size)
        {
            _loc6 = _loc7.bullet_min_size;
        } // end if
        clip_mc._width = _loc6;
        clip_mc._height = _loc6;
        if (_loc5.values[_loc4].bullet_width != undefined)
        {
            clip_mc._width = _loc5.values[_loc4].bullet_width;
        } // end if
        if (_loc5.values[_loc4].bullet_height != undefined)
        {
            clip_mc._height = _loc5.values[_loc4].bullet_height;
        } // end if
        if (__config.bullets.grow_time > 0)
        {
            if (__config.bullets.sequenced_grow == false)
            {
                this.__grow(clip_mc, clip_mc._width, clip_mc._height, _loc4, __config.bullets.grow_time);
            }
            else
            {
                var _loc8 = __config.bullets.grow_time / __data.graphs.graph[0].values.length;
                _global.setTimeout(this, "__grow", _loc8 * _loc4 * 1000 - _loc8 * _loc4 * 1000 * 5.000000E-001, clip_mc, clip_mc._width, clip_mc._height, _loc4, __config.bullets.grow_time);
            } // end else if
            clip_mc._width = 0;
            clip_mc._height = 0;
        } // end if
    } // End of the function
    function __grow(bullet, width, height, index, time)
    {
        __tween_array.push(new com.amcharts.Tween(bullet, "_width", __config.bullets.grow_effect, 0, width, time));
        __tween_array.push(new com.amcharts.Tween(bullet, "_height", __config.bullets.grow_effect, 0, height, time));
    } // End of the function
    function get mc()
    {
        return (__mc);
    } // End of the function
    function die()
    {
        for (var _loc2 = 0; _loc2 < __tween_array.length; ++_loc2)
        {
            __tween_array[_loc2].die();
            __tween_array[_loc2] = null;
        } // end of for
    } // End of the function
} // End of Class
