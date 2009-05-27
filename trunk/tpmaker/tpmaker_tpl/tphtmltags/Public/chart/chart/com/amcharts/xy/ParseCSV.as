class com.amcharts.xy.ParseCSV
{
    var __config, __csv, __data, __get__obj;
    function ParseCSV(csv, config)
    {
        __config = config;
        __csv = csv;
        __data = new Object();
        __data.graphs = new Object();
        __data.graphs.graph = new Array();
        __config.graphs.graph = new Array();
        this.__init();
    } // End of the function
    function __init()
    {
        __csv = com.amcharts.Utils.replace(__csv, "\r\n", "\n");
        __csv = com.amcharts.Utils.replace(__csv, "\r", "\n");
        var _loc4 = __csv.split("\n");
        _loc4.splice(0, __config.skip_rows);
        _loc4 = com.amcharts.Arrays.deleteEqualTo(_loc4, " ");
        _loc4 = com.amcharts.Arrays.deleteEqualTo(_loc4, "");
        __data.graphs.graph[0] = new Object();
        __config.graphs.graph[0] = new Object();
        __data.graphs.graph[0].values = new Array();
        __config.graphs.graph[0] = __config.graphs.temp_graphs.key_0;
        var _loc7 = 0;
        for (var _loc3 = 0; _loc3 < _loc4.length; ++_loc3)
        {
            var _loc2 = _loc4[_loc3].split(__config.csv_separator);
            __data.graphs.graph[0].values[_loc3] = new Object();
            if (__config.values.x.type == "date")
            {
                __data.graphs.graph[0].values[_loc3].x = com.amcharts.Dates.stringToDate(__config.date_formats.date_input, _loc2[0]).getTime();
            }
            else
            {
                __data.graphs.graph[0].values[_loc3].x = Number(_loc2[0]);
            } // end else if
            if (__config.values.y.type == "date")
            {
                __data.graphs.graph[0].values[_loc3].y = com.amcharts.Dates.stringToDate(__config.date_formats.date_input, _loc2[1]).getTime();
            }
            else
            {
                __data.graphs.graph[0].values[_loc3].y = Number(_loc2[1]);
            } // end else if
            __data.graphs.graph[0].values[_loc3].value = Number(_loc2[2]);
            __data.graphs.graph[0].values[_loc3].bullet_color = com.amcharts.Utils.toColor(_loc2[3]);
            __data.graphs.graph[0].values[_loc3].bullet_size = com.amcharts.Utils.toNumber(_loc2[4]);
            __data.graphs.graph[0].values[_loc3].url = _loc2[5];
            __data.graphs.graph[0].values[_loc3].description = _loc2[6];
            if (isNaN(Number(__data.graphs.graph[0].values[_loc3].value)) != true)
            {
                _loc7 = _loc7 + Number(__data.graphs.graph[0].values[_loc3].value);
            } // end if
        } // end of for
        var _loc5 = 0;
        var _loc6 = -Number.MAX_VALUE;
        for (var _loc3 = 0; _loc3 < _loc4.length; ++_loc3)
        {
            __data.graphs.graph[0].values[_loc3].percent = __data.graphs.graph[0].values[_loc3].value / _loc7 * 100;
            if (__data.graphs.graph[0].values[_loc3].percent > _loc5)
            {
                _loc5 = __data.graphs.graph[0].values[_loc3].percent;
            } // end if
            if (__data.graphs.graph[0].values[_loc3].value > _loc6)
            {
                _loc6 = __data.graphs.graph[0].values[_loc3].value;
            } // end if
        } // end of for
        __config.graphs.graph[0].max_percent = _loc5;
        __config.graphs.graph[0].max_value = _loc6;
    } // End of the function
    function get obj()
    {
        return (__data);
    } // End of the function
} // End of Class
