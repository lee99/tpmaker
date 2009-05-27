class com.amcharts.radar.ParseXML
{
    var __config, __xml, __data, __get__obj;
    function ParseXML(xml, config)
    {
        __config = config;
        __xml = xml;
        __data = new Object();
        __data.axes = new Array();
        __data.graphs = new Object();
        __data.graphs.graph = new Array();
        __config.graphs.graph = new Array();
        this.__init();
    } // End of the function
    function __init()
    {
        var _loc2 = new com.amcharts.XML2Object().parseXML(__xml).chart;
        _loc2.graphs.graph = com.amcharts.Utils.objectToArray(_loc2.graphs.graph);
        _loc2.axes.value = com.amcharts.Utils.objectToArray(_loc2.axes.value);
        __data.message = _loc2.message.data;
        __data.message_bg_color = com.amcharts.Utils.toColor(_loc2.message.attributes.bg_color);
        __data.message_text_color = com.amcharts.Utils.toColor(_loc2.message.attributes.text_color);
        var _loc4 = new Array();
        var _loc12 = _loc2.graphs.graph.length;
        for (var _loc9 = 0; _loc9 < _loc12; ++_loc9)
        {
            _loc4[_loc9] = new Object();
            _loc4[_loc9].values = new Array();
            __data.graphs.graph[_loc9] = new Object();
            __data.graphs.graph[_loc9].values = new Array();
            __config.graphs.graph[_loc9] = new Object();
            var _loc6 = _loc2.graphs.graph[_loc9];
            var _loc7 = "key_" + _loc2.graphs.graph[_loc9].attributes.gid;
            __config.graphs.graph[_loc9].gid = _loc2.graphs.graph[_loc9].attributes.gid;
            __config.graphs.graph[_loc9].title = com.amcharts.Utils.checkUndefined(_loc6.attributes.title, com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc7].title, ""));
            __config.graphs.graph[_loc9].color = com.amcharts.Utils.toColor(_loc6.attributes.color, com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc7].color, com.amcharts.Utils.checkUndefined(__config.colors[_loc9], random(16777215))));
            __config.graphs.graph[_loc9].line_alpha = com.amcharts.Utils.toNumber(_loc6.attributes.line_alpha, com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc7].line_alpha, 100));
            __config.graphs.graph[_loc9].line_width = com.amcharts.Utils.toNumber(_loc6.attributes.line_width, com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc7].line_width, 0));
            __config.graphs.graph[_loc9].fill_alpha = com.amcharts.Utils.toNumber(_loc6.attributes.fill_alpha, com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc7].fill_alpha, 0));
            __config.graphs.graph[_loc9].fill_color = com.amcharts.Utils.toColor(_loc6.attributes.fill_color, com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc7].fill_color, __config.graphs.graph[_loc9].color));
            __config.graphs.graph[_loc9].balloon_color = com.amcharts.Utils.toColor(_loc6.attributes.balloon_color, com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc7].balloon_color, com.amcharts.Utils.checkUndefined(__config.balloon.color, __config.graphs.graph[_loc9].color)));
            __config.graphs.graph[_loc9].balloon_alpha = com.amcharts.Utils.toNumber(_loc6.attributes.balloon_alpha, com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc7].balloon_alpha, com.amcharts.Utils.checkUndefined(__config.balloon.alpha, 100)));
            __config.graphs.graph[_loc9].balloon_text_color = com.amcharts.Utils.toColor(_loc6.attributes.balloon_text_color, com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc7].balloon_text_color, com.amcharts.Utils.checkUndefined(__config.balloon.text_color, 16777215)));
            __config.graphs.graph[_loc9].bullet = com.amcharts.Utils.checkUndefined(_loc6.attributes.bullet, __config.graphs.temp_graphs[_loc7].bullet);
            __config.graphs.graph[_loc9].bullet_size = com.amcharts.Utils.toNumber(_loc6.attributes.bullet_size, com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc7].bullet_size, 6));
            __config.graphs.graph[_loc9].bullet_alpha = com.amcharts.Utils.toNumber(_loc6.attributes.bullet_alpha, com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc7].bullet_alpha, __config.graphs.graph[_loc9].alpha));
            __config.graphs.graph[_loc9].bullet_color = com.amcharts.Utils.toColor(_loc6.attributes.bullet_color, com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc7].bullet_color, __config.graphs.graph[_loc9].color));
            __config.graphs.graph[_loc9].balloon_text = com.amcharts.Utils.checkUndefined(_loc6.attributes.balloon_text, com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc7].balloon_text, __config.balloon.show));
            __config.graphs.graph[_loc9].visible_in_legend = com.amcharts.Utils.toBoolean(_loc6.attributes.visible_in_legend, com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc7].visible_in_legend, true));
        } // end of for
        var _loc14 = _loc2.axes.axis.length;
        for (var _loc9 = 0; _loc9 < _loc14; ++_loc9)
        {
            __data.axes[_loc9] = new Object();
            var _loc5 = "id_" + _loc2.axes.axis[_loc9].attributes.xid;
            __data.axes[_loc9].id = _loc5;
            __data.axes[_loc9].axis = _loc2.axes.axis[_loc9].data;
            __data.axes[_loc9].width = com.amcharts.Utils.toNumber(_loc2.axes.axis[_loc9].attributes.width, __config.axes.width);
            __data.axes[_loc9].color = com.amcharts.Utils.toColor(_loc2.axes.axis[_loc9].attributes.color, __config.axes.color);
            __data.axes[_loc9].alpha = com.amcharts.Utils.toNumber(_loc2.axes.axis[_loc9].attributes.alpha, __config.axes.alpha);
            __data.axes[_loc9].fill_color = com.amcharts.Utils.toColor(_loc2.axes.axis[_loc9].attributes.fill_color);
            __data.axes[_loc9].fill_alpha = com.amcharts.Utils.toNumber(_loc2.axes.axis[_loc9].attributes.fill_alpha, 100);
            for (var _loc8 = 0; _loc8 < _loc12; ++_loc8)
            {
                _loc4[_loc8].values[_loc5] = null;
            } // end of for
        } // end of for
        for (var _loc8 = 0; _loc8 < _loc12; ++_loc8)
        {
            _loc2.graphs.graph[_loc8].value = com.amcharts.Utils.objectToArray(_loc2.graphs.graph[_loc8].value);
            var _loc13 = _loc2.graphs.graph[_loc8].value.length;
            for (var _loc9 = 0; _loc9 < _loc13; ++_loc9)
            {
                _loc5 = "id_" + _loc2.graphs.graph[_loc8].value[_loc9].attributes.xid;
                _loc4[_loc8].values[_loc5] = new Object();
                var _loc3 = _loc2.graphs.graph[_loc8].value[_loc9];
                _loc4[_loc8].values[_loc5].value = Number(com.amcharts.Utils.stripSymbols(_loc3.data, " "));
                if (_loc3.attributes.description != undefined)
                {
                    _loc4[_loc8].values[_loc5].description = _loc3.attributes.description;
                } // end if
                if (_loc3.attributes.url != undefined)
                {
                    _loc4[_loc8].values[_loc5].url = _loc3.attributes.url;
                } // end if
                if (_loc3.attributes.color != undefined)
                {
                    _loc4[_loc8].values[_loc5].color = com.amcharts.Utils.toColor(_loc3.attributes.color);
                } // end if
                if (_loc3.attributes.bullet != undefined)
                {
                    _loc4[_loc8].values[_loc5].bullet = _loc3.attributes.bullet;
                } // end if
                if (_loc3.attributes.bullet_color != undefined)
                {
                    _loc4[_loc8].values[_loc5].bullet_color = com.amcharts.Utils.toColor(_loc3.attributes.bullet_color);
                } // end if
                if (_loc3.attributes.bullet_size != undefined)
                {
                    _loc4[_loc8].values[_loc5].bullet_size = com.amcharts.Utils.toNumber(_loc3.attributes.bullet_size);
                } // end if
            } // end of for
            _loc14 = __data.axes.length;
            for (var _loc9 = 0; _loc9 < _loc14; ++_loc9)
            {
                __data.graphs.graph[_loc8].values[_loc9] = _loc4[_loc8].values[__data.axes[_loc9].id];
                if (isNaN(__data.graphs.graph[_loc8].values[_loc9].value) == true)
                {
                    __data.graphs.graph[_loc8].values[_loc9] = null;
                } // end if
            } // end of for
        } // end of for
        for (var _loc9 = 0; _loc9 < __data.axes.length; ++_loc9)
        {
            var _loc10 = 0;
            for (var _loc8 = 0; _loc8 < __data.graphs.graph.length; ++_loc8)
            {
                if (__data.graphs.graph[_loc8].values[_loc9].value != null)
                {
                    _loc10 = _loc10 + Math.abs(__data.graphs.graph[_loc8].values[_loc9].value);
                } // end if
            } // end of for
            __data.axes[_loc9].total = _loc10;
            for (var _loc8 = 0; _loc8 < __data.graphs.graph.length; ++_loc8)
            {
                __data.graphs.graph[_loc8].values[_loc9].percent = __data.graphs.graph[_loc8].values[_loc9].value / _loc10 * 100;
                if (_loc10 == 0)
                {
                    __data.graphs.graph[_loc8].values[_loc9].percent = 0;
                } // end if
            } // end of for
        } // end of for
        _loc2.labels.label = com.amcharts.Utils.objectToArray(_loc2.labels.label);
        if (__config.remove_label_count > 0)
        {
            for (var _loc9 = 0; _loc9 < __config.remove_label_count; ++_loc9)
            {
                __config.labels.label.pop();
            } // end of for
        } // end if
        var _loc16 = _loc2.labels.label.length;
        for (var _loc9 = 0; _loc9 < _loc16; ++_loc9)
        {
            var _loc11 = __config.labels.label.push(new Object()) - 1;
            __config.labels.label[_loc11].lid = _loc2.labels.label[_loc9].attributes.lid;
            __config.labels.label[_loc11].x = com.amcharts.Utils.checkUndefined(_loc2.labels.label[_loc9].x.data, 0);
            __config.labels.label[_loc11].y = com.amcharts.Utils.checkUndefined(_loc2.labels.label[_loc9].y.data, 0);
            __config.labels.label[_loc11].text = _loc2.labels.label[_loc9].text.data;
            __config.labels.label[_loc11].align = _loc2.labels.label[_loc9].align.data.toLowerCase();
            __config.labels.label[_loc11].rotate = com.amcharts.Utils.toBoolean(_loc2.labels.label[_loc9].rotate.data);
            __config.labels.label[_loc11].width = _loc2.labels.label[_loc9].width.data;
            __config.labels.label[_loc11].text_size = com.amcharts.Utils.toNumber(_loc2.labels.label[_loc9].text_size.data, __config.text_size);
            __config.labels.label[_loc11].text_color = com.amcharts.Utils.toColor(_loc2.labels.label[_loc9].text_color.data, __config.text_color);
        } // end of for
        __config.remove_label_count = _loc16;
        var _loc15 = _loc2.fills.fill.length;
        for (var _loc9 = 0; _loc9 < _loc15; ++_loc9)
        {
            _loc11 = __config.fills.fill.push(new Object()) - 1;
            __config.fills.fill[_loc11].fid = _loc2.fills.fill[_loc9].attributes.fid;
            __config.fills.fill[_loc11].start_value = com.amcharts.Utils.toNumber(_loc2.fills.fill[_loc9].start_value.data);
            __config.fills.fill[_loc11].end_value = com.amcharts.Utils.toNumber(_loc2.fills.fill[_loc9].end_value.data);
            __config.fills.fill[_loc11].title = com.amcharts.Utils.checkUndefined(_loc2.fills.fill[_loc9].title.data, "");
            __config.fills.fill[_loc11].fill_color = com.amcharts.Utils.toColor(_loc2.fills.fill[_loc9].fill_color.data, __config.fills.fill[_loc9].color);
            __config.fills.fill[_loc11].fill_alpha = com.amcharts.Utils.toNumber(_loc2.fills.fill[_loc9].fill_alpha.data, 0);
        } // end of for
        __config.remove_fill_count = _loc15;
    } // End of the function
    function get obj()
    {
        return (__data);
    } // End of the function
} // End of Class
