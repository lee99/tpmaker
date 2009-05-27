class com.amcharts.radar.ParseCSV
{
    var __config, __csv, __data, __get__obj;
    function ParseCSV(csv, config)
    {
        __config = config;
        __csv = csv;
        __data = new Object();
        __data.axes = new Array();
        __data.graphs = new Object();
        __data.graphs.graph = new Array();
        __config.graphs.graph = new Array();
        if (__config.autofit == true)
        {
            __config.longest_axes = new Object();
            __config.longest_axes.count = 0;
        } // end if
        this.__init();
    } // End of the function
    function __init()
    {
        __csv = com.amcharts.Utils.replace(__csv, "\r\n", "\n");
        __csv = com.amcharts.Utils.replace(__csv, "\r", "\n");
        var _loc8 = __csv.split("\n");
        _loc8.splice(0, __config.skip_rows);
        _loc8 = com.amcharts.Arrays.deleteEqualTo(_loc8, " ");
        _loc8 = com.amcharts.Arrays.deleteEqualTo(_loc8, "");
        var _loc6 = _loc8[0].split(__config.csv_separator).length;
        for (var _loc3 = 1; _loc3 < _loc6; ++_loc3)
        {
            var _loc4 = _loc3 - 1;
            __data.graphs.graph[_loc4] = new Object();
            __config.graphs.graph[_loc4] = new Object();
            __data.graphs.graph[_loc4].values = new Array();
            var _loc2 = __config.gids[_loc4];
            __config.graphs.graph[_loc4].gid = __config.graphs.temp_graphs[_loc2].gid;
            __config.graphs.graph[_loc4].title = com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc2].title, "");
            __config.graphs.graph[_loc4].color = com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc2].color, com.amcharts.Utils.checkUndefined(__config.colors[_loc4], random(16777215)));
            __config.graphs.graph[_loc4].line_alpha = com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc2].line_alpha, 100);
            __config.graphs.graph[_loc4].line_width = com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc2].line_width, 0);
            __config.graphs.graph[_loc4].fill_alpha = com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc2].fill_alpha, 0);
            __config.graphs.graph[_loc4].fill_color = com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc2].fill_color, __config.graphs.graph[i].color);
            __config.graphs.graph[_loc4].balloon_color = com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc2].balloon_color, com.amcharts.Utils.checkUndefined(__config.balloon.color, __config.graphs.graph[i].color));
            __config.graphs.graph[_loc4].balloon_alpha = com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc2].balloon_alpha, com.amcharts.Utils.checkUndefined(__config.balloon.alpha, 100));
            __config.graphs.graph[_loc4].balloon_text_color = com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc2].balloon_text_color, com.amcharts.Utils.checkUndefined(__config.balloon.text_color, 16777215));
            __config.graphs.graph[_loc4].bullet = __config.graphs.temp_graphs[_loc2].bullet;
            __config.graphs.graph[_loc4].bullet_size = com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc2].bullet_size, 6);
            __config.graphs.graph[_loc4].bullet_alpha = com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc2].bullet_alpha, __config.graphs.graph[i].alpha);
            __config.graphs.graph[_loc4].bullet_color = com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc2].bullet_color, __config.graphs.graph[i].color);
            __config.graphs.graph[_loc4].balloon_text = com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc2].balloon_text, __config.balloon.show);
            __config.graphs.graph[_loc4].visible_in_legend = com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc2].visible_in_legend, true);
        } // end of for
        var i = 0;
        while (i < _loc8.length)
        {
            var _loc7 = _loc8[i].split(__config.csv_separator);
            __data.axes[i] = new Object();
            __data.axes[i].axis = _loc7[0];
            __data.axes[i].width = __config.axes.width;
            __data.axes[i].color = __config.axes.color;
            __data.axes[i].alpha = __config.axes.alpha;
            var _loc5 = 0;
            for (var _loc3 = 1; _loc3 < _loc6; ++_loc3)
            {
                _loc4 = _loc3 - 1;
                __data.graphs.graph[_loc4].values[i] = new Object();
                __data.graphs.graph[_loc4].values[i].value = com.amcharts.Utils.toNumber(com.amcharts.Utils.stripSymbols(_loc7[_loc3], " "), null);
                if (__data.graphs.graph[_loc4].values[i].value != null)
                {
                    _loc5 = _loc5 + Math.abs(__data.graphs.graph[_loc4].values[i].value);
                } // end if
            } // end of for
            for (var _loc3 = 1; _loc3 < _loc6; ++_loc3)
            {
                __data.graphs.graph[_loc3 - 1].values[i].percent = __data.graphs.graph[_loc3 - 1].values[i].value / _loc5 * 100;
                if (_loc5 == 0)
                {
                    __data.graphs.graph[_loc3 - 1].values[i].percent = 0;
                } // end if
            } // end of for
            ++i;
        } // end while
    } // End of the function
    function get obj()
    {
        return (__data);
    } // End of the function
} // End of Class
