class com.amcharts.line.Legend
{
    var __config, __data, __mc, __width, __spacing, __margins, __key_size, __text_width, __legend_entry_mc, __label_button, __check_box, __values, __total_entries, __entries_mc, __height, __get__mc;
    function Legend(target_mc, name, depth, config, data)
    {
        AsBroadcaster.initialize(this);
        __config = config;
        __data = data;
        __mc = target_mc.createEmptyMovieClip(name, depth);
        __mc._x = com.amcharts.Utils.toCoordinate(__config.legend.x, __config.width);
        __mc._y = com.amcharts.Utils.toCoordinate(__config.legend.y, __config.height);
        __width = com.amcharts.Utils.toCoordinate(__config.legend.width, __config.width);
        __spacing = __config.legend.spacing;
        __margins = __config.legend.margins;
        __key_size = __config.legend.key.size;
        __text_width = __width - 2 * __margins - __key_size - __spacing;
        __legend_entry_mc = new Array();
        __label_button = new Array();
        this.__init();
    } // End of the function
    function __init()
    {
        var main_obj = this;
        __check_box = new Array();
        __values = new Array();
        __total_entries = 0;
        __entries_mc = __mc.createEmptyMovieClip("entries_mc", 10);
        for (var _loc2 = 0; _loc2 < __config.graphs.graph.length; ++_loc2)
        {
            if (__config.graphs.graph[_loc2].visible_in_legend == true)
            {
                ++__total_entries;
                __legend_entry_mc[_loc2] = __entries_mc.createEmptyMovieClip("legendEntry_mc" + _loc2, _loc2);
                if (__config.legend.key.border_color != undefined)
                {
                    var _loc7 = 100;
                }
                else
                {
                    _loc7 = 0;
                } // end else if
                var _loc3 = new com.amcharts.CheckBox(__legend_entry_mc[_loc2], "check_box", 0, __key_size);
                _loc3.bgColor = _loc3.bgColorActive = _loc3.bgColorHover = _loc3.bgColorPushed = _loc3.bgColorPushedHover = __config.graphs.graph[_loc2].color;
                _loc3.checkMarkColor = __config.legend.key.key_mark_color;
                var _loc6 = __config.legend.key.border_color;
                if (_loc6 == undefined)
                {
                    _loc6 = __config.graphs.graph[_loc2].color;
                } // end if
                _loc3.borderColor = _loc3.borderColorActive = _loc3.borderColorHover = _loc3.borderColorPushed = _loc3.borderColorPushedHover = _loc6;
                _loc3.checked = com.amcharts.Utils.changeBoolean(__config.graphs.graph[_loc2].hidden);
                _loc3.index = _loc2;
                _loc3.show();
                if (__config.legend.graph_on_off == false)
                {
                    _loc3.hitAreaWidth = 0;
                    _loc3.hitAreaHeight = 0;
                    _loc3.checked = false;
                } // end if
                var _loc5 = new Object();
                _loc5.onCheck = function (index)
                {
                    main_obj.broadcastMessage("onShowGraph", index);
                };
                _loc5.onUnCheck = function (index)
                {
                    main_obj.broadcastMessage("onHideGraph", index);
                };
                _loc3.addListener(_loc5);
                __check_box[_loc2] = _loc3;
                __label_button[_loc2] = new com.amcharts.Button(__legend_entry_mc[_loc2], "label", 1, __config.graphs.graph[_loc2].title, __width - __key_size - 2 * __spacing - 2 * __margins);
                __label_button[_loc2].index = _loc2;
                __label_button[_loc2].mc._x = __key_size;
                __label_button[_loc2].pushable = true;
                __label_button[_loc2].unpushable = true;
                __label_button[_loc2].borderAlpha = 0;
                __label_button[_loc2].borderWidth = 0;
                __label_button[_loc2].hPadding = 5;
                __label_button[_loc2].vPadding = 0;
                if (__config.balloon.on_off == true && __config.indicator.enabled != false)
                {
                    __label_button[_loc2].textUnderlinePushed = __label_button[_loc2].textUnderlinePushedHover = true;
                } // end if
                __label_button[_loc2].textAlign = "left";
                __label_button[_loc2].wrap = true;
                __label_button[_loc2].font = __config.font;
                __label_button[_loc2].textColor = __label_button[_loc2].textColorPushed = __config.legend.text_color;
                __label_button[_loc2].textSize = __config.legend.text_size;
                __label_button[_loc2].textColorHover = __label_button[_loc2].textColorPushedHover = __label_button[_loc2].textColorActive = __config.legend.text_color_hover;
                __label_button[_loc2].bgAlpha = __label_button[_loc2].bgAlphaPushed = __label_button[_loc2].bgAlphaActive = __label_button[_loc2].bgAlphaHover = __label_button[_loc2].bgAlphaPushedHover = 0;
                __label_button[_loc2].show();
                __label_button[_loc2].shrink();
                if (__config.indicator.enabled == false || __config.balloon.on_off == false)
                {
                    __label_button[_loc2].hitAreaWidth = 0;
                    __label_button[_loc2].hitAreaHeight = 0;
                }
                else
                {
                    __label_button[_loc2].hitAreaWidth = __label_button[_loc2].label.textWidth + __label_button[_loc2].mc._x;
                    __label_button[_loc2].hitAreaHeight = __label_button[_loc2].mc._height;
                } // end else if
                if (__config.indicator.enabled == true)
                {
                    _loc5 = new Object();
                    _loc5.onRollOver = function (id)
                    {
                        main_obj.broadcastMessage("onRollOver", id);
                    };
                    _loc5.onRollOut = function (id)
                    {
                        main_obj.broadcastMessage("onRollOut", id);
                    };
                    _loc5.onPush = function (id)
                    {
                        main_obj.broadcastMessage("onSelect", id);
                    };
                    _loc5.onUnpush = function (id)
                    {
                        main_obj.broadcastMessage("onDeselect", id);
                    };
                    __label_button[_loc2].addListener(_loc5);
                } // end if
                var _loc4 = __label_button[_loc2].label.textWidth;
                if (_loc4 == undefined)
                {
                    _loc4 = 0;
                } // end if
                if (_loc4 + __key_size + 2 * __spacing + 10 > __max_column_width)
                {
                    __max_column_width = _loc4 + __key_size + 2 * __spacing + 10;
                } // end if
                if (__config.graphs.graph[_loc2].selected == true)
                {
                    __label_button[_loc2].pushed = true;
                } // end if
                if (__config.legend.values.enabled == true)
                {
                    __values[_loc2] = new com.amcharts.Text(__legend_entry_mc[_loc2], "value", 2, _loc4 + __key_size + 10, 0, __config.legend.values.width, undefined, "left", __config);
                    __values[_loc2].size = __config.legend.text_size;
                    __values[_loc2].color = __config.legend.text_color;
                } // end if
            } // end if
        } // end of for
        if (__config.legend.values.enabled == true)
        {
            __max_column_width = __max_column_width + __config.legend.values.width;
        } // end if
        this.__arrange();
    } // End of the function
    function __arrange()
    {
        var _loc3 = 0;
        var _loc6 = 0;
        var _loc5 = __margins;
        var _loc8 = Math.floor((__width - __margins * 2 + __spacing) / __max_column_width);
        var _loc4 = 1;
        if (_loc8 > __total_entries)
        {
            _loc8 = __total_entries;
        } // end if
        if (__config.legend.max_columns > 0 && _loc8 > __config.legend.max_columns)
        {
            _loc8 = __config.legend.max_columns;
        } // end if
        if (__config.legend.reverse_order == true)
        {
            var _loc9 = __config.graphs.graph.length - 1;
            var _loc10 = -1;
            var _loc11 = -1;
        }
        else
        {
            _loc9 = 0;
            _loc10 = 1;
            _loc11 = __config.graphs.graph.length;
        } // end else if
        for (var _loc2 = _loc9; _loc2 != _loc11; _loc2 = _loc2 + _loc10)
        {
            if (__config.graphs.graph[_loc2].visible_in_legend == true)
            {
                if (__config.legend.values.enabled == true)
                {
                    __values[_loc2].width = __values[_loc2].width + (__max_column_width - __label_button[_loc2].label.textWidth - __config.legend.values.width - (__key_size + 2 * __spacing + 10));
                } // end if
                if (__legend_entry_mc[_loc2]._height > _loc3)
                {
                    _loc3 = __legend_entry_mc[_loc2]._height;
                } // end if
                __legend_entry_mc[_loc2]._x = __margins + __max_column_width * (_loc4 - 1);
                __legend_entry_mc[_loc2]._y = _loc5 + _loc6;
                ++_loc4;
                if (_loc4 > _loc8)
                {
                    if (_loc2 == 0)
                    {
                        _loc5 = __margins;
                    }
                    else
                    {
                        _loc5 = __legend_entry_mc[_loc2]._y;
                    } // end else if
                    _loc6 = _loc3 + __spacing;
                    _loc4 = 1;
                    _loc3 = 0;
                } // end if
                var _loc7 = __legend_entry_mc[_loc2];
            } // end if
        } // end of for
        __height = _loc7._y + _loc6 + __margins - __config.legend.spacing - 3;
        this.__drawBg();
        if (__config.legend.align == "center")
        {
            __entries_mc._x = (__width - __entries_mc._width - __config.legend.margins) / 2;
        } // end if
        if (__config.legend.align == "right")
        {
            __entries_mc._x = __width - __entries_mc._width - __config.legend.margins * 2;
        } // end if
    } // End of the function
    function showValues(index)
    {
        if (__config.legend.values.enabled == true)
        {
            for (var _loc2 = 0; _loc2 < __config.graphs.graph.length; ++_loc2)
            {
                if (__data.graphs.graph[_loc2].values[index].value == null)
                {
                    var _loc4 = "";
                }
                else
                {
                    _loc4 = com.amcharts.line.Custom.formatText(__config, __config.legend.values.text, __config.graphs.graph[_loc2].title, __data.graphs.graph[_loc2].values[index].value, __data.series[index].value, __data.graphs.graph[_loc2].values[index].description, __data.graphs.graph[_loc2].values[index].percent, __data.graphs.graph[_loc2].values[index].duration);
                } // end else if
                __values[_loc2].htmlTxt = _loc4;
                __values[_loc2].align = __config.legend.values.align;
            } // end of for
        } // end if
    } // End of the function
    function __drawBg()
    {
        var _loc2 = new com.amcharts.Rectangle(__mc, "bg_mc", 0, __width, __height, __config.legend.color, 0, __config.legend.border_color, 0, __config.legend.alpha, __config.legend.border_alpha);
    } // End of the function
    function rollOver(index)
    {
        __label_button[index].hover = true;
    } // End of the function
    function rollOut(index)
    {
        __label_button[index].hover = false;
    } // End of the function
    function select(index, kill_hover)
    {
        if (kill_hover != true)
        {
            this.rollOver(index);
        } // end if
        __label_button[index].pushed = true;
    } // End of the function
    function deselect(index, kill_hover)
    {
        if (kill_hover != true)
        {
            this.rollOver(index);
        } // end if
        __label_button[index].pushed = false;
    } // End of the function
    function show(index)
    {
        __check_box[index].checked = true;
    } // End of the function
    function hide(index)
    {
        __check_box[index].checked = false;
    } // End of the function
    function get mc()
    {
        return (__mc);
    } // End of the function
    var __max_column_width = 0;
} // End of Class
