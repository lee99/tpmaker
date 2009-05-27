class com.amcharts.line.ParseCSV
{
    var __config, __csv, __data, __get__obj;
    function ParseCSV(csv, config)
    {
        __config = config;
        __csv = csv;
        __data = new Object();
        __data.series = new Array();
        __data.graphs = new Object();
        __data.graphs.graph = new Array();
        __config.graphs.graph = new Array();
        if (__config.autofit == true)
        {
            __config.longest_series = new Object();
            __config.longest_series.count = 0;
        } // end if
        this.__init();
    } // End of the function
    function __init()
    {
        __csv = com.amcharts.Utils.replace(__csv, "\r\n", "\n");
        __csv = com.amcharts.Utils.replace(__csv, "\r", "\n");
        var _loc13 = __csv.split("\n");
        _loc13.splice(0, __config.skip_rows);
        _loc13 = com.amcharts.Arrays.deleteEqualTo(_loc13, " ");
        _loc13 = com.amcharts.Arrays.deleteEqualTo(_loc13, "");
        var _loc12 = _loc13[0].split(__config.csv_separator).length;
        if (_loc13.length == 1)
        {
            __config.start_on_axis = false;
        }
        else
        {
            __config.start_on_axis = __config.start_on_axis_real;
        } // end else if
        for (var _loc3 = 1; _loc3 < _loc12; ++_loc3)
        {
            var _loc6 = _loc3 - 1;
            __data.graphs.graph[_loc6] = new Object();
            __config.graphs.graph[_loc6] = new Object();
            __data.graphs.graph[_loc6].values = new Array();
            var _loc2 = __config.gids[_loc6];
            __config.graphs.graph[_loc6].gid = __config.graphs.temp_graphs[_loc2].gid;
            __config.graphs.graph[_loc6].axis = com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc2].axis, "left");
            __config.graphs.graph[_loc6].title = com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc2].title, "");
            __config.graphs.graph[_loc6].color = com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc2].color, com.amcharts.Utils.checkUndefined(__config.colors[_loc3 - 1], random(16777215)));
            __config.graphs.graph[_loc6].color_hover = com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc2].color_hover, 12303104);
            __config.graphs.graph[_loc6].line_alpha = com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc2].line_alpha, 100);
            __config.graphs.graph[_loc6].line_width = com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc2].line_width, 0);
            __config.graphs.graph[_loc6].fill_alpha = com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc2].fill_alpha, 0);
            __config.graphs.graph[_loc6].fill_color = com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc2].fill_color, __config.graphs.graph[_loc6].color);
            __config.graphs.graph[_loc6].balloon_color = com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc2].balloon_color, __config.graphs.graph[_loc6].color);
            __config.graphs.graph[_loc6].balloon_alpha = com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc2].balloon_alpha, 100);
            __config.graphs.graph[_loc6].balloon_text_color = com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc2].balloon_text_color, 16777215);
            __config.graphs.graph[_loc6].bullet = __config.graphs.temp_graphs[_loc2].bullet;
            __config.graphs.graph[_loc6].bullet_size = com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc2].bullet_size, 6);
            __config.graphs.graph[_loc6].bullet_alpha = com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc2].bullet_alpha, __config.graphs.graph[_loc6].line_alpha);
            __config.graphs.graph[_loc6].bullet_color = com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc2].bullet_color, __config.graphs.graph[_loc6].color);
            __config.graphs.graph[_loc6].balloon_text = __config.graphs.temp_graphs[_loc2].balloon_text;
            __config.graphs.graph[_loc6].data_labels = __config.graphs.temp_graphs[_loc2].data_labels;
            __config.graphs.graph[_loc6].data_labels_text_color = __config.graphs.temp_graphs[_loc2].data_labels_text_color;
            __config.graphs.graph[_loc6].data_labels_text_size = __config.graphs.temp_graphs[_loc2].data_labels_text_size;
            __config.graphs.graph[_loc6].data_labels_position = __config.graphs.temp_graphs[_loc2].data_labels_position;
            __config.graphs.graph[_loc6].hidden = com.amcharts.Utils.checkUndefined(__config.old_hidden[_loc6], com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc2].hidden, false));
            __config.graphs.graph[_loc6].selected = com.amcharts.Utils.checkUndefined(__config.old_selected[_loc6], com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc2].selected, true));
            __config.graphs.graph[_loc6].vertical_lines = com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc2].vertical_lines, false);
            __config.graphs.graph[_loc6].visible_in_legend = com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc2].visible_in_legend, true);
            __config.graphs.graph[_loc6].clickable_bullets = com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc2].clickable_bullets, false);
            if (__config.graphs.graph[_loc6].balloon_text == undefined)
            {
                var _loc5 = "{value}";
                if (__config.graphs.temp_graphs[_loc2].unit != undefined)
                {
                    if (__config.graphs.temp_graphs[_loc2].unit_position == "left")
                    {
                        _loc5 = __config.graphs.temp_graphs[_loc2].unit + _loc5;
                    }
                    else
                    {
                        _loc5 = _loc5 + __config.graphs.temp_graphs[_loc2].unit;
                    } // end if
                } // end else if
                _loc5 = "<b>" + _loc5 + "</b><br>{description}";
                __config.graphs.graph[_loc6].balloon_text = _loc5;
            } // end if
        } // end of for
        var _loc15 = _loc13.length;
        for (var _loc4 = 0; _loc4 < _loc15; ++_loc4)
        {
            var _loc9 = _loc13[_loc4].split(__config.csv_separator);
            __data.series[_loc4] = new Object();
            __data.series[_loc4].value = _loc9[0];
            if (__config.autofit == true)
            {
                var _loc11 = __data.series[_loc4].value.length;
                if (__config.longest_series.count < _loc11)
                {
                    __config.longest_series.value = __data.series[_loc4].value;
                    __config.longest_series.count = _loc11;
                } // end if
            } // end if
            for (var _loc3 = 1; _loc3 < _loc12; ++_loc3)
            {
                _loc6 = _loc3 - 1;
                __data.graphs.graph[_loc6].values[_loc4] = new Object();
                __data.graphs.graph[_loc6].values[_loc4].value = com.amcharts.Utils.toNumber(com.amcharts.Utils.stripSymbols(_loc9[_loc3], " "), null);
            } // end of for
        } // end of for
        var _loc14 = __data.series.length;
        var _loc10 = __data.graphs.graph.length;
        for (var _loc4 = 0; _loc4 < _loc14; ++_loc4)
        {
            var _loc8 = 0;
            var _loc7 = 0;
            for (var _loc3 = 0; _loc3 < _loc10; ++_loc3)
            {
                if (__data.graphs.graph[_loc3].values[_loc4].value != null)
                {
                    if (__config.graphs.graph[_loc3].axis == "right")
                    {
                        _loc7 = _loc7 + Math.abs(__data.graphs.graph[_loc3].values[_loc4].value);
                        continue;
                    } // end if
                    _loc8 = _loc8 + Math.abs(__data.graphs.graph[_loc3].values[_loc4].value);
                } // end if
            } // end of for
            for (var _loc3 = 0; _loc3 < _loc10; ++_loc3)
            {
                if (__config.graphs.graph[_loc3].axis == "right")
                {
                    __data.graphs.graph[_loc3].values[_loc4].percent = __data.graphs.graph[_loc3].values[_loc4].value / _loc7 * 100;
                    continue;
                } // end if
                __data.graphs.graph[_loc3].values[_loc4].percent = __data.graphs.graph[_loc3].values[_loc4].value / _loc8 * 100;
            } // end of for
        } // end of for
    } // End of the function
    function get obj()
    {
        return (__data);
    } // End of the function
} // End of Class
