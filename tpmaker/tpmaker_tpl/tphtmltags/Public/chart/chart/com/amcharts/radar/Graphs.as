class com.amcharts.radar.Graphs
{
    var __config, __data, __start_angle, __all_graphs_mc, __all_bullets_mc, __bullets_mc, __previous_y_array, __previous_x_array, url, description, axis, value, graph_index, useHandCursor, index;
    function Graphs(graphs_mc, bullets_mc, config, data)
    {
        AsBroadcaster.initialize(this);
        __config = config;
        __data = data;
        __start_angle = 180;
        __all_graphs_mc = graphs_mc;
        __all_bullets_mc = bullets_mc;
        __all_graphs_mc._x = __config.radar.r_x;
        __all_graphs_mc._y = __config.radar.r_y;
        __all_bullets_mc._x = __config.radar.r_x;
        __all_bullets_mc._y = __config.radar.r_y;
        this.__init();
    } // End of the function
    function __init()
    {
        for (var _loc2 = 0; _loc2 < __config.graphs.graph.length; ++_loc2)
        {
            this.__drawLine(_loc2);
        } // end of for
    } // End of the function
    function __drawLine(index)
    {
        var _loc9 = __all_graphs_mc.createEmptyMovieClip("lines_mc" + index, index);
        __bullets_mc = __all_bullets_mc.createEmptyMovieClip("bullets_mc" + index, index);
        var _loc22 = __config.graphs.graph[index];
        var _loc11 = __data.graphs.graph[index];
        var _loc16 = _loc22.fill_alpha;
        var _loc12 = _loc22.fill_color;
        var _loc24 = _loc22.color;
        var _loc25 = _loc22.line_width;
        var _loc26 = _loc22.line_alpha;
        var _loc21 = 360 / __data.axes.length;
        var _loc15 = __config.radar.r_radius / (__config.max - __config.min);
        var _loc17 = new Array();
        var _loc18 = new Array();
        if (_loc16 > 0)
        {
            if (_loc12.length > 0)
            {
                var _loc20 = new Array();
                var _loc19 = new Array();
                for (var _loc8 = 0; _loc8 < _loc12.length; ++_loc8)
                {
                    _loc20[_loc8] = 255 / (_loc12.length - 1) * _loc8;
                    _loc19[_loc8] = _loc16;
                } // end of for
                var _loc23 = new flash.geom.Matrix();
                _loc23.createGradientBox(__config.radar.r_radius * 2, __config.radar.r_radius * 2, 1.570796E+000, -__config.radar.r_radius, -__config.radar.r_radius);
                _loc9.beginGradientFill("radial", _loc12, _loc19, _loc20, _loc23);
            }
            else
            {
                _loc9.beginFill(_loc12, _loc16);
            } // end if
        } // end else if
        _loc9.lineStyle(_loc25, _loc24, _loc26);
        var _loc13;
        var _loc14;
        for (var _loc8 = 0; _loc8 < _loc11.values.length; ++_loc8)
        {
            var _loc2 = _loc11.values[_loc8].value;
            if (__config.type == "stacked" && index > 0)
            {
                for (var _loc4 = index - 1; _loc4 > -1; --_loc4)
                {
                    _loc2 = _loc2 + __data.graphs.graph[_loc4].values[_loc8].value;
                } // end of for
            } // end if
            if (__config.type == "100% stacked")
            {
                _loc2 = _loc11.values[_loc8].percent;
                if (_loc2 == undefined)
                {
                    _loc2 = 0;
                } // end if
                for (var _loc4 = index - 1; _loc4 > -1; --_loc4)
                {
                    var _loc3 = __data.graphs.graph[_loc4].values[_loc8].percent;
                    if (_loc3 == undefined)
                    {
                        _loc3 = 0;
                    } // end if
                    if (index > 0)
                    {
                        _loc2 = _loc2 + _loc3;
                    } // end if
                } // end of for
            } // end if
            var _loc10 = __start_angle - _loc21 * _loc8;
            var _loc7 = (_loc2 - __config.min) * _loc15 * Math.sin(_loc10 / 180 * 3.141593E+000);
            var _loc6 = (_loc2 - __config.min) * _loc15 * Math.cos(_loc10 / 180 * 3.141593E+000);
            if (isNaN(_loc7) == false && isNaN(_loc6) == false)
            {
                this.__placeBullet(index, _loc8, _loc7, _loc6);
            } // end if
            _loc17.push(_loc7);
            _loc18.push(_loc6);
            if (_loc13 == undefined)
            {
                _loc13 = _loc7;
            } // end if
            if (_loc14 == undefined)
            {
                _loc14 = _loc6;
            } // end if
            if (_loc8 == 0)
            {
                _loc9.moveTo(_loc7, _loc6);
                continue;
            } // end if
            _loc9.lineTo(_loc7, _loc6);
        } // end of for
        _loc17.push(_loc13);
        _loc18.push(_loc14);
        _loc9.lineTo(_loc13, _loc14);
        if ((__config.type == "stacked" || __config.type == "100% stacked") && index > 0 && _loc16 > 0)
        {
            _loc9.lineStyle(0, 0, 0);
            _loc9.moveTo(__previous_x_array[0], __previous_y_array[0]);
            for (var _loc8 = 1; _loc8 < __previous_x_array.length; ++_loc8)
            {
                _loc9.lineTo(__previous_x_array[_loc8], __previous_y_array[_loc8]);
            } // end of for
        } // end if
        __previous_x_array = _loc17;
        __previous_y_array = _loc18;
    } // End of the function
    function __placeBullet(graph_index, value_index, x, y)
    {
        var _loc7 = __config.graphs.graph[graph_index];
        var _loc6 = __data.graphs.graph[graph_index];
        var _loc3 = _loc6.values[value_index];
        var _loc11 = false;
        var _loc13 = __bullets_mc.getNextHighestDepth();
        var _loc2 = __bullets_mc.createEmptyMovieClip("bullet_mc" + _loc13, _loc13);
        if (_loc3.bullet != undefined)
        {
            var _loc4 = _loc3.bullet;
        }
        else
        {
            _loc4 = _loc7.bullet;
        } // end else if
        if (_loc4.indexOf("?") != 1)
        {
            var _loc5 = _loc4.split("?")[0].substr(-3).toLowerCase();
        }
        else
        {
            _loc5 = _loc4.substr(-3).toLowerCase();
        } // end else if
        if (_loc5 == "gif" || _loc5 == "jpg" || _loc5 == "png" || _loc5 == "swf")
        {
            _loc11 = true;
            var _loc9 = _loc2.createEmptyMovieClip("icon_mc", 1);
            var _loc15 = new com.amcharts.Load();
            if (_loc5 == "swf")
            {
                var _loc16 = "";
            }
            else
            {
                _loc16 = "__placeBullet";
            } // end else if
            _loc15.loadClip(__config.path + _loc4, _loc9, this, _loc16);
        }
        else
        {
            _loc9 = _loc2.attachMovie("bullet_" + _loc4, "bullet_mc", 1);
            if (_loc3.bullet_size != undefined)
            {
                var _loc12 = _loc3.bullet_size;
                _loc11 = true;
            }
            else
            {
                _loc12 = _loc7.bullet_size;
            } // end else if
            _loc9._width = _loc12;
            _loc9._height = _loc12;
            var _loc14 = new Color(_loc9.main_mc);
            if (_loc3.bullet_color != undefined)
            {
                _loc11 = true;
                _loc14.setRGB(_loc3.bullet_color);
            }
            else
            {
                _loc14.setRGB(_loc7.bullet_color);
            } // end else if
            _loc14 = new Color(_loc9.border_mc);
            _loc14.setRGB(__config.background.color);
        } // end else if
        _loc2._x = x;
        _loc2._y = y;
        _loc2._alpha = _loc7.bullet_alpha;
        _loc2.index = value_index;
        _loc2.graph_index = graph_index;
        _loc2.axis = __data.axes[value_index].axis;
        _loc2.value = _loc6.values[value_index].value;
        _loc2.description = _loc6.values[value_index].description;
        var _loc10 = _loc2.attachMovie("bullet_round", "hit_mc", 0);
        _loc10._width = 10;
        _loc10._height = 10;
        _loc10._alpha = 0;
        var main_obj = this;
        _loc2.url = _loc6.values[value_index].url;
        _loc2.onRelease = function ()
        {
            if (url != undefined)
            {
                getURL(url, main_obj.__config.link_target);
            } // end if
            main_obj.__config.root_mc.externalCall("amClickedOnBullet", [main_obj.__config.chart_id, this.graph_index, value, axis, url, description]);
        };
        _loc2.tabEnabled = false;
        _loc2.onRollOver = function ()
        {
            if (url == undefined)
            {
                useHandCursor = false;
            } // end if
            main_obj.broadcastMessage("onRollOver", this.graph_index, index);
            main_obj.__config.root_mc.externalCall("amRolledOverBullet", [main_obj.__config.chart_id, this.graph_index, value, axis, url, description]);
        };
        _loc2.onRollOut = function ()
        {
            main_obj.broadcastMessage("onRollOut");
            main_obj.__config.root_mc.externalCall("amRolledOutBullet");
        };
    } // End of the function
    function getGraphMc(index)
    {
        return (__all_graphs_mc["lines_mc" + index]);
    } // End of the function
    function getBulletsMc(index)
    {
        return (__all_bullets_mc["bullets_mc" + index]);
    } // End of the function
} // End of Class
