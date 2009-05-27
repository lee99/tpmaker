class com.amcharts.xy.Legend
{
    var __config, __mc, __legend_entry_mc, __width, __spacing, __margins, __key_size, __text_width, __total_entries, __entries_mc, __height, __get__mc;
    function Legend(target_mc, name, depth, config)
    {
        __config = config;
        __mc = target_mc.createEmptyMovieClip(name, depth);
        __mc._x = com.amcharts.Utils.toCoordinate(__config.legend.x, __config.width);
        __mc._y = com.amcharts.Utils.toCoordinate(__config.legend.y, __config.height);
        __legend_entry_mc = new Array();
        __width = com.amcharts.Utils.toCoordinate(__config.legend.width, __config.width);
        __spacing = __config.legend.spacing;
        __margins = __config.legend.margins;
        __key_size = __config.legend.key.size;
        __text_width = __width - 2 * __margins - __key_size - __spacing;
        this.__init();
    } // End of the function
    function __init()
    {
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
                    var _loc5 = 100;
                }
                else
                {
                    _loc5 = 0;
                } // end else if
                var _loc6 = new com.amcharts.Rectangle(__legend_entry_mc[_loc2], "rectangle", 0, __key_size, __key_size, __config.graphs.graph[_loc2].color, 0, __config.legend.key.border_color, 0, 100, _loc5);
                var _loc4 = new com.amcharts.Text(__legend_entry_mc[_loc2], "text", 1, __key_size + __spacing, 0, __text_width, __height, "left", __config);
                _loc4.htmlTxt = __config.graphs.graph[_loc2].title;
                _loc4.size = __config.legend.text_size;
                _loc4.color = __config.legend.text_color;
                var _loc3 = _loc4.textWidth;
                if (_loc3 == undefined)
                {
                    _loc3 = 0;
                } // end if
                if (_loc4.width > _loc3)
                {
                    _loc4.width = _loc3 + 5;
                }
                else
                {
                    _loc3 = _loc4.width;
                } // end else if
                if (_loc3 + __key_size + 2 * __spacing + 10 > __max_column_width)
                {
                    __max_column_width = _loc3 + __key_size + 2 * __spacing + 10;
                } // end if
            } // end if
        } // end of for
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
        __height = _loc7._y + _loc6 + __margins - __spacing - 2;
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
    function __drawBg()
    {
        var _loc2 = new com.amcharts.Rectangle(__mc, "bg_mc", 0, __width, __height, __config.legend.color, 0, __config.legend.border_color, 0, __config.legend.alpha, __config.legend.border_alpha);
    } // End of the function
    function get mc()
    {
        return (__mc);
    } // End of the function
    var __max_column_width = 0;
} // End of Class
