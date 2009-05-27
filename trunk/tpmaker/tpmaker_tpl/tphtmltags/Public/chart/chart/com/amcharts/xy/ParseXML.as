class com.amcharts.xy.ParseXML
{
    var __config, __xml, __data, __get__obj;
    function ParseXML(xml, config)
    {
        __config = config;
        __xml = xml;
        __data = new Object();
        __data.graphs = new Object();
        __data.graphs.graph = new Array();
        __config.graphs.graph = new Array();
        this.__init();
    } // End of the function
    function __init()
    {
        var _loc4 = new com.amcharts.XML2Object().parseXML(__xml).chart;
        _loc4.graphs.graph = com.amcharts.Utils.objectToArray(_loc4.graphs.graph);
        __data.message = _loc4.message.data;
        __data.message_bg_color = com.amcharts.Utils.toColor(_loc4.message.attributes.bg_color);
        __data.message_text_color = com.amcharts.Utils.toColor(_loc4.message.attributes.text_color);
        var _loc14 = new Array();
        for (var _loc8 = 0; _loc8 < _loc4.graphs.graph.length; ++_loc8)
        {
            __data.graphs.graph[_loc8] = new Object();
            __data.graphs.graph[_loc8].values = new Array();
            __config.graphs.graph[_loc8] = new Object();
            var _loc6 = _loc4.graphs.graph[_loc8];
            var _loc7 = "key_" + _loc4.graphs.graph[_loc8].attributes.gid;
            __config.graphs.graph[_loc8].gid = _loc4.graphs.graph[_loc8].attributes.gid;
            __config.graphs.graph[_loc8].title = com.amcharts.Utils.checkUndefined(_loc6.attributes.title, com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc7].title, ""));
            __config.graphs.graph[_loc8].color = com.amcharts.Utils.toColor(_loc6.attributes.color, com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc7].color, com.amcharts.Utils.checkUndefined(__config.colors[_loc8], random(16777215))));
            __config.graphs.graph[_loc8].alpha = com.amcharts.Utils.toNumber(_loc6.attributes.alpha, com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc7].alpha, 100));
            __config.graphs.graph[_loc8].width = com.amcharts.Utils.toNumber(_loc6.attributes.width, com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc7].width, 0));
            __config.graphs.graph[_loc8].bullet = com.amcharts.Utils.checkUndefined(_loc6.attributes.bullet, com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc7].bullet));
            __config.graphs.graph[_loc8].bullet_size = com.amcharts.Utils.toNumber(_loc6.attributes.bullet_size, com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc7].bullet_size, 6));
            __config.graphs.graph[_loc8].bullet_alpha = com.amcharts.Utils.toNumber(_loc6.attributes.bullet_alpha, com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc7].bullet_alpha, 100));
            __config.graphs.graph[_loc8].bullet_max_size = com.amcharts.Utils.toNumber(_loc6.attributes.bullet_max_size, com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc7].bullet_max_size, __config.bullets.max_size));
            __config.graphs.graph[_loc8].bullet_min_size = com.amcharts.Utils.toNumber(_loc6.attributes.bullet_min_size, com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc7].bullet_min_size, __config.bullets.min_size));
            __config.graphs.graph[_loc8].bullet_color = com.amcharts.Utils.toColor(_loc6.attributes.bullet_color, com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc7].bullet_color, __config.graphs.graph[_loc8].color));
            __config.graphs.graph[_loc8].data_labels = com.amcharts.Utils.checkUndefined(_loc6.attributes.data_labels, com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc7].data_labels, ""));
            __config.graphs.graph[_loc8].balloon_text = com.amcharts.Utils.checkUndefined(_loc6.attributes.balloon_text, com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc7].balloon_text, ""));
            __config.graphs.graph[_loc8].visible_in_legend = com.amcharts.Utils.toBoolean(_loc6.attributes.visible_in_legend, com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc7].visible_in_legend, true));
            _loc4.graphs.graph[_loc8].point = com.amcharts.Utils.objectToArray(_loc4.graphs.graph[_loc8].point);
            var _loc12 = 0;
            for (var _loc5 = 0; _loc5 < _loc4.graphs.graph[_loc8].point.length; ++_loc5)
            {
                var _loc2 = _loc4.graphs.graph[_loc8].point[_loc5];
                __data.graphs.graph[_loc8].values[_loc5] = new Object();
                var _loc3 = __data.graphs.graph[_loc8].values[_loc5];
                _loc3.value = Number(com.amcharts.Utils.stripSymbols(_loc2.attributes.value, " "));
                if (__config.values.x.type == "date")
                {
                    _loc3.x = com.amcharts.Dates.stringToDate(__config.date_formats.date_input, _loc2.attributes.x).getTime();
                }
                else
                {
                    _loc3.x = Number(com.amcharts.Utils.stripSymbols(_loc2.attributes.x, " "));
                } // end else if
                if (__config.values.y.type == "date")
                {
                    _loc3.y = com.amcharts.Dates.stringToDate(__config.date_formats.date_input, _loc2.attributes.y).getTime();
                }
                else
                {
                    _loc3.y = Number(com.amcharts.Utils.stripSymbols(_loc2.attributes.y, " "));
                } // end else if
                _loc3.description = _loc2.data;
                if (_loc2.attributes.url != undefined)
                {
                    _loc3.url = _loc2.attributes.url;
                } // end if
                if (_loc2.attributes.color != undefined)
                {
                    _loc3.color = com.amcharts.Utils.toColor(_loc2.attributes.color);
                } // end if
                if (_loc2.attributes.bullet != undefined)
                {
                    _loc3.bullet = _loc2.attributes.bullet;
                } // end if
                if (_loc2.attributes.bullet_color != undefined)
                {
                    _loc3.bullet_color = com.amcharts.Utils.toColor(_loc2.attributes.bullet_color);
                } // end if
                if (_loc2.attributes.bullet_size != undefined)
                {
                    _loc3.bullet_size = com.amcharts.Utils.toNumber(_loc2.attributes.bullet_size);
                } // end if
                if (_loc2.attributes.bullet_width != undefined)
                {
                    _loc3.bullet_width = com.amcharts.Utils.toNumber(_loc2.attributes.bullet_width);
                } // end if
                if (_loc2.attributes.bullet_height != undefined)
                {
                    _loc3.bullet_height = com.amcharts.Utils.toNumber(_loc2.attributes.bullet_height);
                } // end if
                if (_loc2.attributes.bullet_alpha != undefined)
                {
                    _loc3.bullet_alpha = com.amcharts.Utils.toNumber(_loc2.attributes.bullet_alpha);
                } // end if
                if (isNaN(Number(_loc3.value)) != true)
                {
                    _loc12 = _loc12 + Math.abs(Number(_loc3.value));
                } // end if
            } // end of for
            var _loc10 = 0;
            var _loc11 = -Number.MAX_VALUE;
            for (var _loc5 = 0; _loc5 < _loc4.graphs.graph[_loc8].point.length; ++_loc5)
            {
                __data.graphs.graph[_loc8].values[_loc5].percent = __data.graphs.graph[_loc8].values[_loc5].value / _loc12 * 100;
                if (__data.graphs.graph[_loc8].values[_loc5].percent > _loc10)
                {
                    _loc10 = __data.graphs.graph[_loc8].values[_loc5].percent;
                } // end if
                if (__data.graphs.graph[_loc8].values[_loc5].value > _loc11)
                {
                    _loc11 = __data.graphs.graph[_loc8].values[_loc5].value;
                } // end if
            } // end of for
            __config.graphs.graph[_loc8].max_percent = _loc10;
            __config.graphs.graph[_loc8].max_value = _loc11;
        } // end of for
        _loc4.labels.label = com.amcharts.Utils.objectToArray(_loc4.labels.label);
        if (__config.remove_label_count > 0)
        {
            for (var _loc8 = 0; _loc8 < __config.remove_label_count; ++_loc8)
            {
                __config.labels.label.pop();
            } // end of for
        } // end if
        var _loc13 = _loc4.labels.label.length;
        for (var _loc8 = 0; _loc8 < _loc13; ++_loc8)
        {
            var _loc9 = __config.labels.label.push(new Object()) - 1;
            __config.labels.label[_loc9].lid = _loc4.labels.label[_loc8].attributes.lid;
            __config.labels.label[_loc9].x = com.amcharts.Utils.checkUndefined(_loc4.labels.label[_loc8].x.data, 0);
            __config.labels.label[_loc9].y = com.amcharts.Utils.checkUndefined(_loc4.labels.label[_loc8].y.data, 0);
            __config.labels.label[_loc9].text = _loc4.labels.label[_loc8].text.data;
            __config.labels.label[_loc9].align = _loc4.labels.label[_loc8].align.data.toLowerCase();
            __config.labels.label[_loc9].rotate = com.amcharts.Utils.toBoolean(_loc4.labels.label[_loc8].rotate.data);
            __config.labels.label[_loc9].width = _loc4.labels.label[_loc8].width.data;
            __config.labels.label[_loc9].text_size = com.amcharts.Utils.toNumber(_loc4.labels.label[_loc8].text_size.data, __config.text_size);
            __config.labels.label[_loc9].text_color = com.amcharts.Utils.toColor(_loc4.labels.label[_loc8].text_color.data, __config.text_color);
        } // end of for
        __config.remove_label_count = _loc13;
    } // End of the function
    function get obj()
    {
        return (__data);
    } // End of the function
} // End of Class
