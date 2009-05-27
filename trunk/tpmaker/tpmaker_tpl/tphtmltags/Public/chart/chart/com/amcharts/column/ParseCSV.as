class com.amcharts.column.ParseCSV
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
        var _loc11 = __csv.split("\n");
        _loc11.splice(0, __config.skip_rows);
        _loc11 = com.amcharts.Arrays.deleteEqualTo(_loc11, " ");
        _loc11 = com.amcharts.Arrays.deleteEqualTo(_loc11, "");
        var _loc8 = _loc11[0].split(__config.csv_separator).length;
        for (var _loc5 = 1; _loc5 < _loc8; ++_loc5)
        {
            var _loc4 = _loc5 - 1;
            __data.graphs.graph[_loc4] = new Object();
            __config.graphs.graph[_loc4] = new Object();
            __data.graphs.graph[_loc4].values = new Array();
            var _loc3 = __config.gids[_loc4];
            var _loc6 = com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc3].type, "column");
            __config.graphs.graph[_loc4].gid = __config.graphs.temp_graphs[_loc3].gid;
            __config.graphs.graph[_loc4].type = _loc6;
            __config.graphs.graph[_loc4].title = com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc3].title, "");
            __config.graphs.graph[_loc4].color = com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc3].color, com.amcharts.Utils.checkUndefined(__config.colors[_loc5 - 1], random(16777215)));
            __config.graphs.graph[_loc4].alpha = com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc3].alpha, __config[_loc6].alpha);
            __config.graphs.graph[_loc4].fill_alpha = com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc3].fill_alpha, __config[_loc6].fill_alpha);
            __config.graphs.graph[_loc4].width = com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc3].width, __config[_loc6].width);
            __config.graphs.graph[_loc4].bullet = com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc3].bullet, __config[_loc6].bullet);
            __config.graphs.graph[_loc4].bullet_size = com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc3].bullet_size, __config[_loc6].bullet_size);
            __config.graphs.graph[_loc4].bullet_color = com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc3].bullet_color, __config.graphs.graph[_loc4].color);
            __config.graphs.graph[_loc4].data_labels = com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc3].data_labels, __config[_loc6].data_labels);
            __config.graphs.graph[_loc4].gradient_fill_colors = __config.graphs.temp_graphs[_loc3].gradient_fill_colors;
            __config.graphs.graph[_loc4].pattern = __config.graphs.temp_graphs[_loc3].pattern;
            __config.graphs.graph[_loc4].pattern_color = __config.graphs.temp_graphs[_loc3].pattern_color;
            __config.graphs.graph[_loc4].balloon_color = com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc3].balloon_color, __config.balloon.color);
            __config.graphs.graph[_loc4].balloon_alpha = com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc3].balloon_alpha, __config.balloon.alpha);
            __config.graphs.graph[_loc4].balloon_text_color = com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc3].balloon_text_color, __config.balloon.text_color);
            __config.graphs.graph[_loc4].balloon_text = com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc3].balloon_text, __config[_loc6].balloon_text);
            __config.graphs.graph[_loc4].visible_in_legend = com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc3].visible_in_legend, true);
        } // end of for
        for (var _loc2 = 0; _loc2 < _loc11.length; ++_loc2)
        {
            var _loc9 = _loc11[_loc2].split(__config.csv_separator);
            __data.series[_loc2] = new Object();
            __data.series[_loc2].value = _loc9[0];
            if (__config.autofit == true)
            {
                var _loc10 = __data.series[_loc2].value.length;
                if (__config.longest_series.count < _loc10)
                {
                    __config.longest_series.value = __data.series[_loc2].value;
                    __config.longest_series.count = _loc10;
                } // end if
            } // end if
            var _loc7 = 0;
            for (var _loc5 = 1; _loc5 < _loc8; ++_loc5)
            {
                _loc4 = _loc5 - 1;
                __data.graphs.graph[_loc4].values[_loc2] = new Object();
                __data.graphs.graph[_loc4].values[_loc2].value = com.amcharts.Utils.toNumber(com.amcharts.Utils.stripSymbols(_loc9[_loc5], " "), null);
                __data.graphs.graph[_loc4].values[_loc2].pattern = __config.graphs.graph[_loc4].pattern;
                __data.graphs.graph[_loc4].values[_loc2].pattern_color = __config.graphs.graph[_loc4].pattern_color;
                if (__data.graphs.graph[_loc4].values[_loc2].value != null)
                {
                    _loc7 = _loc7 + Math.abs(__data.graphs.graph[_loc4].values[_loc2].value);
                } // end if
            } // end of for
            __data.series[_loc2].total = _loc7;
            for (var _loc5 = 1; _loc5 < _loc8; ++_loc5)
            {
                if (__config.graphs.graph[_loc5 - 1].type == "column")
                {
                    __data.graphs.graph[_loc5 - 1].values[_loc2].percent = __data.graphs.graph[_loc5 - 1].values[_loc2].value / _loc7 * 100;
                    if (_loc7 == 0)
                    {
                        __data.graphs.graph[_loc5 - 1].values[_loc2].percent = 0;
                    } // end if
                    continue;
                } // end if
                __data.graphs.graph[_loc5 - 1].values[_loc2].percent = __data.graphs.graph[_loc5 - 1].values[_loc2].value;
            } // end of for
        } // end of for
    } // End of the function
    function get obj()
    {
        return (__data);
    } // End of the function
} // End of Class
