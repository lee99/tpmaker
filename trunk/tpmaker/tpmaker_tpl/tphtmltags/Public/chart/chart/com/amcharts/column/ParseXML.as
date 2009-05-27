class com.amcharts.column.ParseXML
{
    var __config, __xml, __data, __get__obj;
    function ParseXML(xml, config)
    {
        __config = config;
        __xml = xml;
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
        var _loc2 = new com.amcharts.XML2Object().parseXML(__xml).chart;
        _loc2.graphs.graph = com.amcharts.Utils.objectToArray(_loc2.graphs.graph);
        _loc2.series.value = com.amcharts.Utils.objectToArray(_loc2.series.value);
        __data.message = _loc2.message.data;
        __data.message_bg_color = com.amcharts.Utils.toColor(_loc2.message.attributes.bg_color);
        __data.message_text_color = com.amcharts.Utils.toColor(_loc2.message.attributes.text_color);
        var _loc4 = new Array();
        for (var _loc6 = 0; _loc6 < _loc2.graphs.graph.length; ++_loc6)
        {
            _loc4[_loc6] = new Object();
            _loc4[_loc6].values = new Array();
            __data.graphs.graph[_loc6] = new Object();
            __data.graphs.graph[_loc6].values = new Array();
            __config.graphs.graph[_loc6] = new Object();
            var _loc7 = _loc2.graphs.graph[_loc6];
            var _loc10 = "key_" + _loc2.graphs.graph[_loc6].attributes.gid;
            var _loc11 = com.amcharts.Utils.checkUndefined(_loc7.attributes.type, com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc10].type, "column"));
            __config.graphs.graph[_loc6].type = _loc11;
            __config.graphs.graph[_loc6].gid = _loc2.graphs.graph[_loc6].attributes.gid;
            __config.graphs.graph[_loc6].title = com.amcharts.Utils.checkUndefined(_loc7.attributes.title, com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc10].title, ""));
            __config.graphs.graph[_loc6].color = com.amcharts.Utils.toColor(_loc7.attributes.color, com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc10].color, com.amcharts.Utils.checkUndefined(__config.colors[_loc6], random(16777215))));
            __config.graphs.graph[_loc6].alpha = com.amcharts.Utils.toNumber(_loc7.attributes.alpha, com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc10].alpha, com.amcharts.Utils.checkUndefined(__config[_loc11].alpha, 100)));
            __config.graphs.graph[_loc6].fill_alpha = com.amcharts.Utils.toNumber(_loc7.attributes.fill_alpha, com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc10].fill_alpha, com.amcharts.Utils.checkUndefined(__config[_loc11].fill_alpha, 0)));
            __config.graphs.graph[_loc6].width = com.amcharts.Utils.toNumber(_loc7.attributes.width, com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc10].width, com.amcharts.Utils.checkUndefined(__config[_loc11].width, 2)));
            __config.graphs.graph[_loc6].bullet = com.amcharts.Utils.checkUndefined(_loc7.attributes.bullet, com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc10].bullet, __config[_loc11].bullet));
            __config.graphs.graph[_loc6].bullet_size = com.amcharts.Utils.toNumber(_loc7.attributes.bullet_size, com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc10].bullet_size, com.amcharts.Utils.checkUndefined(__config[_loc11].bullet_size, 6)));
            __config.graphs.graph[_loc6].bullet_color = com.amcharts.Utils.toColor(_loc7.attributes.bullet_color, com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc10].bullet_color, __config.graphs.graph[_loc6].color));
            __config.graphs.graph[_loc6].data_labels = com.amcharts.Utils.checkUndefined(_loc7.attributes.data_labels, com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc10].data_labels, com.amcharts.Utils.checkUndefined(__config[_loc11].data_labels, "")));
            __config.graphs.graph[_loc6].gradient_fill_colors = com.amcharts.Utils.checkUndefined(com.amcharts.Utils.toColor(_loc7.attributes.gradient_fill_colors), __config.graphs.temp_graphs[_loc10].gradient_fill_colors);
            if (__config.column.gradient == "vertical")
            {
                __config.graphs.graph[_loc6].gradient_fill_colors.reverse();
            } // end if
            __config.graphs.graph[_loc6].pattern = com.amcharts.Utils.checkUndefined(_loc7.attributes.pattern, __config.graphs.temp_graphs[_loc10].pattern);
            __config.graphs.graph[_loc6].pattern_color = com.amcharts.Utils.toColor(_loc7.attributes.pattern_color, com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc10].pattern_color));
            __config.graphs.graph[_loc6].balloon_color = com.amcharts.Utils.toColor(_loc7.attributes.balloon_color, com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc10].balloon_color, __config.balloon.color));
            __config.graphs.graph[_loc6].balloon_alpha = com.amcharts.Utils.toNumber(_loc7.attributes.balloon_alpha, com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc10].balloon_alpha, __config.balloon.alpha));
            __config.graphs.graph[_loc6].balloon_text_color = com.amcharts.Utils.toColor(_loc7.attributes.balloon_text_color, com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc10].balloon_text_color, __config.balloon.text_color));
            __config.graphs.graph[_loc6].balloon_text = com.amcharts.Utils.checkUndefined(_loc7.attributes.balloon_text, com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc10].balloon_text, __config[_loc11].balloon_text));
            __config.graphs.graph[_loc6].visible_in_legend = com.amcharts.Utils.toBoolean(_loc7.attributes.visible_in_legend, com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc10].visible_in_legend, true));
        } // end of for
        for (var _loc6 = 0; _loc6 < _loc2.series.value.length; ++_loc6)
        {
            __data.series[_loc6] = new Object();
            var _loc5 = "id_" + _loc2.series.value[_loc6].attributes.xid;
            __data.series[_loc6].id = _loc5;
            __data.series[_loc6].value = _loc2.series.value[_loc6].data;
            if (__config.autofit == true)
            {
                var _loc14 = __data.series[_loc6].value.length;
                if (__config.longest_series.count < _loc14)
                {
                    __config.longest_series.value = __data.series[_loc6].value;
                    __config.longest_series.count = _loc14;
                } // end if
            } // end if
            if (_loc2.series.value[_loc6].attributes.bg_color != undefined)
            {
                __data.series[_loc6].bg_color = com.amcharts.Utils.toColor(_loc2.series.value[_loc6].attributes.bg_color);
            } // end if
            if (_loc2.series.value[_loc6].attributes.bg_alpha != undefined)
            {
                __data.series[_loc6].bg_alpha = com.amcharts.Utils.toNumber(_loc2.series.value[_loc6].attributes.bg_alpha, 100);
            } // end if
            var _loc15 = com.amcharts.Utils.toBoolean(_loc2.series.value[_loc6].attributes.show, false);
            if (_loc15 == true)
            {
                __data.series[_loc6].show = true;
            } // end if
            for (var _loc9 = 0; _loc9 < _loc2.graphs.graph.length; ++_loc9)
            {
                _loc4[_loc9].values[_loc5] = null;
            } // end of for
        } // end of for
        for (var _loc9 = 0; _loc9 < _loc2.graphs.graph.length; ++_loc9)
        {
            _loc2.graphs.graph[_loc9].value = com.amcharts.Utils.objectToArray(_loc2.graphs.graph[_loc9].value);
            for (var _loc6 = 0; _loc6 < _loc2.graphs.graph[_loc9].value.length; ++_loc6)
            {
                _loc5 = "id_" + _loc2.graphs.graph[_loc9].value[_loc6].attributes.xid;
                _loc4[_loc9].values[_loc5] = new Object();
                var _loc3 = _loc2.graphs.graph[_loc9].value[_loc6];
                _loc4[_loc9].values[_loc5].value = Number(com.amcharts.Utils.stripSymbols(_loc3.data, " "));
                var _loc13 = Number(com.amcharts.Utils.stripSymbols(_loc3.attributes.start, " "));
                if (isNaN(_loc13) == false)
                {
                    _loc4[_loc9].values[_loc5].start = _loc13;
                } // end if
                if (_loc3.attributes.description != undefined)
                {
                    _loc4[_loc9].values[_loc5].description = _loc3.attributes.description;
                } // end if
                if (_loc3.attributes.url != undefined)
                {
                    _loc4[_loc9].values[_loc5].url = _loc3.attributes.url;
                } // end if
                if (_loc3.attributes.color != undefined)
                {
                    _loc4[_loc9].values[_loc5].color = com.amcharts.Utils.toColor(_loc3.attributes.color);
                } // end if
                if (_loc3.attributes.bullet != undefined)
                {
                    _loc4[_loc9].values[_loc5].bullet = _loc3.attributes.bullet;
                } // end if
                if (_loc3.attributes.bullet_color != undefined)
                {
                    _loc4[_loc9].values[_loc5].bullet_color = com.amcharts.Utils.toColor(_loc3.attributes.bullet_color);
                } // end if
                if (_loc3.attributes.bullet_size != undefined)
                {
                    _loc4[_loc9].values[_loc5].bullet_size = com.amcharts.Utils.toNumber(_loc3.attributes.bullet_size);
                } // end if
                if (_loc3.attributes.gradient_fill_colors != undefined)
                {
                    _loc4[_loc9].values[_loc5].gradient_fill_colors = com.amcharts.Utils.toColor(_loc3.attributes.gradient_fill_colors);
                } // end if
                _loc4[_loc9].values[_loc5].pattern = com.amcharts.Utils.checkUndefined(_loc3.attributes.pattern, __config.graphs.graph[_loc9].pattern);
                _loc4[_loc9].values[_loc5].pattern_color = com.amcharts.Utils.toColor(_loc3.attributes.pattern_color, __config.graphs.graph[_loc9].pattern_color);
            } // end of for
            for (var _loc6 = 0; _loc6 < __data.series.length; ++_loc6)
            {
                __data.graphs.graph[_loc9].values[_loc6] = _loc4[_loc9].values[__data.series[_loc6].id];
                if (isNaN(__data.graphs.graph[_loc9].values[_loc6].value) == true)
                {
                    __data.graphs.graph[_loc9].values[_loc6] = null;
                } // end if
            } // end of for
        } // end of for
        for (var _loc6 = 0; _loc6 < __data.series.length; ++_loc6)
        {
            var _loc12 = 0;
            for (var _loc9 = 0; _loc9 < __data.graphs.graph.length; ++_loc9)
            {
                if (__data.graphs.graph[_loc9].values[_loc6].value != null && __config.graphs.graph[_loc9].type == "column")
                {
                    _loc12 = _loc12 + Math.abs(__data.graphs.graph[_loc9].values[_loc6].value);
                } // end if
            } // end of for
            __data.series[_loc6].total = _loc12;
            for (var _loc9 = 0; _loc9 < __data.graphs.graph.length; ++_loc9)
            {
                if (__config.graphs.graph[_loc9].type == "column")
                {
                    __data.graphs.graph[_loc9].values[_loc6].percent = __data.graphs.graph[_loc9].values[_loc6].value / _loc12 * 100;
                    if (_loc12 == 0)
                    {
                        __data.graphs.graph[_loc9].values[_loc6].percent = 0;
                    } // end if
                    continue;
                } // end if
                __data.graphs.graph[_loc9].values[_loc6].percent = __data.graphs.graph[_loc9].values[_loc6].value;
            } // end of for
        } // end of for
        _loc2.labels.label = com.amcharts.Utils.objectToArray(_loc2.labels.label);
        if (__config.remove_label_count > 0)
        {
            for (var _loc6 = 0; _loc6 < __config.remove_label_count; ++_loc6)
            {
                __config.labels.label.pop();
            } // end of for
        } // end if
        var _loc16 = _loc2.labels.label.length;
        for (var _loc6 = 0; _loc6 < _loc16; ++_loc6)
        {
            var _loc8 = __config.labels.label.push(new Object()) - 1;
            __config.labels.label[_loc8].lid = _loc2.labels.label[_loc6].attributes.lid;
            __config.labels.label[_loc8].x = com.amcharts.Utils.checkUndefined(_loc2.labels.label[_loc6].x.data, 0);
            __config.labels.label[_loc8].y = com.amcharts.Utils.checkUndefined(_loc2.labels.label[_loc6].y.data, 0);
            __config.labels.label[_loc8].text = _loc2.labels.label[_loc6].text.data;
            __config.labels.label[_loc8].align = _loc2.labels.label[_loc6].align.data.toLowerCase();
            __config.labels.label[_loc8].rotate = com.amcharts.Utils.toBoolean(_loc2.labels.label[_loc6].rotate.data);
            __config.labels.label[_loc8].width = _loc2.labels.label[_loc6].width.data;
            __config.labels.label[_loc8].text_size = com.amcharts.Utils.toNumber(_loc2.labels.label[_loc6].text_size.data, __config.text_size);
            __config.labels.label[_loc8].text_color = com.amcharts.Utils.toColor(_loc2.labels.label[_loc6].text_color.data, __config.text_color);
        } // end of for
        __config.remove_label_count = _loc16;
        _loc2.guides.guide = com.amcharts.Utils.objectToArray(_loc2.guides.guide);
        if (__config.remove_guide_count > 0)
        {
            for (var _loc6 = 0; _loc6 < __config.remove_guide_count; ++_loc6)
            {
                __config.guides.guide.pop();
            } // end of for
        } // end if
        var _loc17 = _loc2.guides.guide.length;
        for (var _loc6 = 0; _loc6 < _loc17; ++_loc6)
        {
            _loc8 = __config.guides.guide.push(new Object()) - 1;
            __config.guides.guide[_loc8].gid = _loc2.guides.guide[_loc6].attributes.gid;
            __config.guides.guide[_loc8].behind = com.amcharts.Utils.toBoolean(_loc2.guides.guide[_loc6].behind.data, false);
            __config.guides.guide[_loc8].start_value = com.amcharts.Utils.toNumber(_loc2.guides.guide[_loc6].start_value.data);
            __config.guides.guide[_loc8].end_value = com.amcharts.Utils.toNumber(_loc2.guides.guide[_loc6].end_value.data);
            __config.guides.guide[_loc8].title = com.amcharts.Utils.checkUndefined(_loc2.guides.guide[_loc6].title.data, "");
            __config.guides.guide[_loc8].width = com.amcharts.Utils.toNumber(_loc2.guides.guide[_loc6].width.data, 0);
            __config.guides.guide[_loc8].alpha = com.amcharts.Utils.toNumber(_loc2.guides.guide[_loc6].alpha.data, 100);
            __config.guides.guide[_loc8].color = com.amcharts.Utils.toColor(_loc2.guides.guide[_loc6].color.data, 0);
            __config.guides.guide[_loc8].fill_color = com.amcharts.Utils.toColor(_loc2.guides.guide[_loc6].fill_color.data, __config.guides.guide[_loc8].color);
            __config.guides.guide[_loc8].fill_alpha = com.amcharts.Utils.toNumber(_loc2.guides.guide[_loc6].fill_alpha.data, 0);
            __config.guides.guide[_loc8].rotate = com.amcharts.Utils.toNumber(_loc2.guides.guide[_loc6].rotate.data, __config.values.value.rotate);
            __config.guides.guide[_loc8].text_size = com.amcharts.Utils.toNumber(_loc2.guides.guide[_loc6].text_size.data, __config.values.value.text_size);
            __config.guides.guide[_loc8].text_color = com.amcharts.Utils.toColor(_loc2.guides.guide[_loc6].text_color.data, __config.values.value.color);
            __config.guides.guide[_loc8].inside = com.amcharts.Utils.toBoolean(_loc2.guides.guide[_loc6].inside.data, __config.values.value.inside);
            __config.guides.guide[_loc8].centered = com.amcharts.Utils.toBoolean(_loc2.guides.guide[_loc6].centered.data, false);
            __config.guides.guide[_loc8].dashed = com.amcharts.Utils.toBoolean(_loc2.guides.guide[_loc6].dashed.data, false);
            __config.guides.guide[_loc8].dash_length = com.amcharts.Utils.toNumber(_loc2.guides.guide[_loc6].dash_length.data, 5);
        } // end of for
        __config.remove_guide_count = _loc17;
    } // End of the function
    function get obj()
    {
        return (__data);
    } // End of the function
} // End of Class
