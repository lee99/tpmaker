class com.amcharts.line.ParseXML
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
        if (_loc2.series == undefined)
        {
            _loc2.series = _loc2.xaxis;
        } // end if
        _loc2.graphs.graph = com.amcharts.Utils.objectToArray(_loc2.graphs.graph);
        _loc2.series.value = com.amcharts.Utils.objectToArray(_loc2.series.value);
        if (_loc2.series.value.length == 1)
        {
            __config.start_on_axis = false;
        }
        else
        {
            __config.start_on_axis = __config.start_on_axis_real;
        } // end else if
        __data.message = _loc2.message.data;
        __data.message_bg_color = com.amcharts.Utils.toColor(_loc2.message.attributes.bg_color);
        __data.message_text_color = com.amcharts.Utils.toColor(_loc2.message.attributes.text_color);
        var _loc6 = new Array();
        var _loc12 = _loc2.graphs.graph.length;
        for (var _loc7 = 0; _loc7 < _loc12; ++_loc7)
        {
            _loc6[_loc7] = new Object();
            _loc6[_loc7].values = new Array();
            __data.graphs.graph[_loc7] = new Object();
            __data.graphs.graph[_loc7].values = new Array();
            __config.graphs.graph[_loc7] = new Object();
            var _loc4 = _loc2.graphs.graph[_loc7];
            var _loc5 = "key_" + _loc2.graphs.graph[_loc7].attributes.gid;
            __config.graphs.graph[_loc7].gid = _loc2.graphs.graph[_loc7].attributes.gid;
            __config.graphs.graph[_loc7].axis = com.amcharts.Utils.checkUndefined(_loc4.attributes.axis, com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc5].axis, "left")).toLowerCase();
            __config.graphs.graph[_loc7].title = com.amcharts.Utils.checkUndefined(_loc4.attributes.title, com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc5].title, ""));
            __config.graphs.graph[_loc7].color = com.amcharts.Utils.toColor(_loc4.attributes.color, com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc5].color, com.amcharts.Utils.checkUndefined(__config.colors[_loc7], random(16777215))));
            __config.graphs.graph[_loc7].color_hover = com.amcharts.Utils.toColor(_loc4.attributes.color_hover, com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc5].color_hover, 12303104));
            __config.graphs.graph[_loc7].line_alpha = com.amcharts.Utils.toNumber(_loc4.attributes.line_alpha, com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc5].line_alpha, 100));
            __config.graphs.graph[_loc7].line_width = com.amcharts.Utils.toNumber(_loc4.attributes.line_width, com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc5].line_width, 0));
            __config.graphs.graph[_loc7].fill_alpha = com.amcharts.Utils.toNumber(_loc4.attributes.fill_alpha, com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc5].fill_alpha, 0));
            __config.graphs.graph[_loc7].fill_color = com.amcharts.Utils.toColor(_loc4.attributes.fill_color, com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc5].fill_color, __config.graphs.graph[_loc7].color));
            __config.graphs.graph[_loc7].balloon_color = com.amcharts.Utils.toColor(_loc4.attributes.balloon_color, com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc5].balloon_color, com.amcharts.Utils.checkUndefined(__config.balloon.color, __config.graphs.graph[_loc7].color)));
            __config.graphs.graph[_loc7].balloon_alpha = com.amcharts.Utils.toNumber(_loc4.attributes.balloon_alpha, com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc5].balloon_alpha, com.amcharts.Utils.checkUndefined(__config.balloon.alpha, 100)));
            __config.graphs.graph[_loc7].balloon_text_color = com.amcharts.Utils.toColor(_loc4.attributes.balloon_text_color, com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc5].balloon_text_color, com.amcharts.Utils.checkUndefined(__config.balloon.text_color, 16777215)));
            __config.graphs.graph[_loc7].bullet = com.amcharts.Utils.checkUndefined(_loc4.attributes.bullet, __config.graphs.temp_graphs[_loc5].bullet);
            __config.graphs.graph[_loc7].bullet_size = com.amcharts.Utils.toNumber(_loc4.attributes.bullet_size, com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc5].bullet_size, 6));
            __config.graphs.graph[_loc7].bullet_alpha = com.amcharts.Utils.toNumber(_loc4.attributes.bullet_alpha, com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc5].bullet_alpha, __config.graphs.graph[_loc7].alpha));
            __config.graphs.graph[_loc7].bullet_color = com.amcharts.Utils.toColor(_loc4.attributes.bullet_color, com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc5].bullet_color, __config.graphs.graph[_loc7].color));
            __config.graphs.graph[_loc7].balloon_text = com.amcharts.Utils.checkUndefined(_loc4.attributes.balloon_text, com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc5].balloon_text));
            __config.graphs.graph[_loc7].data_labels = com.amcharts.Utils.checkUndefined(_loc4.attributes.data_labels, com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc5].data_labels));
            __config.graphs.graph[_loc7].data_labels_text_color = com.amcharts.Utils.toColor(_loc4.attributes.data_labels_text_color, com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc5].data_labels_text_color, __config.text_color));
            __config.graphs.graph[_loc7].data_labels_text_size = com.amcharts.Utils.toNumber(_loc4.attributes.data_labels_text_size, com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc5].data_labels_text_size, __config.text_size));
            __config.graphs.graph[_loc7].data_labels_position = com.amcharts.Utils.checkUndefined(_loc4.attributes.data_labels_position, com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc5].data_labels_position, "above"));
            __config.graphs.graph[_loc7].hidden = com.amcharts.Utils.checkUndefined(__config.old_hidden[_loc7], com.amcharts.Utils.toBoolean(_loc4.attributes.hidden, com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc5].hidden, false)));
            __config.graphs.graph[_loc7].selected = com.amcharts.Utils.checkUndefined(__config.old_selected[_loc7], com.amcharts.Utils.toBoolean(_loc4.attributes.selected, com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc5].selected, true)));
            __config.graphs.graph[_loc7].vertical_lines = com.amcharts.Utils.toBoolean(_loc4.attributes.vertical_lines, com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc5].vertical_lines, false));
            __config.graphs.graph[_loc7].visible_in_legend = com.amcharts.Utils.toBoolean(_loc4.attributes.visible_in_legend, com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc5].visible_in_legend, true));
            __config.graphs.graph[_loc7].clickable_bullets = com.amcharts.Utils.toBoolean(_loc4.attributes.clickable_bullets, com.amcharts.Utils.checkUndefined(__config.graphs.temp_graphs[_loc5].clickable_bullets, false));
            __config.graphs.graph[_loc7].unit = com.amcharts.Utils.checkUndefined(_loc4.attributes.unit, __config.graphs.temp_graphs[_loc5].unit);
            __config.graphs.graph[_loc7].unit_position = com.amcharts.Utils.checkUndefined(_loc4.attributes.unit_position, __config.graphs.temp_graphs[_loc5].unit_position);
            if (__config.graphs.graph[_loc7].balloon_text == undefined)
            {
                var _loc11 = "{value}";
                if (__config.graphs.graph[_loc7].unit != undefined)
                {
                    if (__config.graphs.graph[_loc7].unit_position == "left")
                    {
                        _loc11 = __config.graphs.graph[_loc7].unit + _loc11;
                    }
                    else
                    {
                        _loc11 = _loc11 + __config.graphs.graph[_loc7].unit;
                    } // end if
                } // end else if
                _loc11 = "<b>" + _loc11 + "</b><br>{description}";
                __config.graphs.graph[_loc7].balloon_text = _loc11;
            } // end if
        } // end of for
        var _loc21 = new Object();
        var _loc20 = _loc2.series.value.length;
        for (var _loc7 = 0; _loc7 < _loc20; ++_loc7)
        {
            __data.series[_loc7] = new Object();
            var _loc8 = "id_" + _loc2.series.value[_loc7].attributes.xid;
            __data.series[_loc7].id = _loc8;
            __data.series[_loc7].value = _loc2.series.value[_loc7].data;
            if (__config.autofit == true)
            {
                var _loc17 = __data.series[_loc7].value.length;
                if (__config.longest_series.count < _loc17)
                {
                    __config.longest_series.value = __data.series[_loc7].value;
                    __config.longest_series.count = _loc17;
                } // end if
            } // end if
            __data.series[_loc7].show = com.amcharts.Utils.toBoolean(_loc2.series.value[_loc7].attributes.show, false);
            if (_loc2.series.value[_loc7].attributes.event_start != undefined)
            {
                __data.series[_loc7].event_start = _loc2.series.value[_loc7].attributes.event_start;
                __data.series[_loc7].event_color = com.amcharts.Utils.toColor(_loc2.series.value[_loc7].attributes.event_color);
                __data.series[_loc7].event_text_color = com.amcharts.Utils.toColor(_loc2.series.value[_loc7].attributes.event_text_color, 16777215);
                __data.series[_loc7].event_alpha = com.amcharts.Utils.toNumber(_loc2.series.value[_loc7].attributes.event_alpha, 20);
                __data.series[_loc7].event_description = _loc2.series.value[_loc7].attributes.event_description;
            } // end if
            if (_loc2.series.value[_loc7].attributes.event_end != undefined)
            {
                __data.series[_loc7].event_end = _loc2.series.value[_loc7].attributes.event_end;
            } // end if
            for (var _loc10 = 0; _loc10 < _loc12; ++_loc10)
            {
                _loc6[_loc10].values[_loc8] = null;
            } // end of for
        } // end of for
        for (var _loc10 = 0; _loc10 < _loc12; ++_loc10)
        {
            _loc2.graphs.graph[_loc10].value = com.amcharts.Utils.objectToArray(_loc2.graphs.graph[_loc10].value);
            var _loc16 = _loc2.graphs.graph[_loc10].value.length;
            for (var _loc7 = 0; _loc7 < _loc16; ++_loc7)
            {
                _loc8 = "id_" + _loc2.graphs.graph[_loc10].value[_loc7].attributes.xid;
                _loc6[_loc10].values[_loc8] = new Object();
                var _loc3 = _loc2.graphs.graph[_loc10].value[_loc7];
                _loc6[_loc10].values[_loc8].value = Number(com.amcharts.Utils.stripSymbols(_loc3.data, " "));
                var _loc13 = Number(com.amcharts.Utils.stripSymbols(_loc3.attributes.start, " "));
                if (isNaN(_loc13) == false)
                {
                    _loc6[_loc10].values[_loc8].start = _loc13;
                } // end if
                if (_loc3.attributes.description != undefined)
                {
                    _loc6[_loc10].values[_loc8].description = _loc3.attributes.description;
                } // end if
                if (_loc3.attributes.url != undefined)
                {
                    _loc6[_loc10].values[_loc8].url = _loc3.attributes.url;
                } // end if
                if (_loc3.attributes.color != undefined)
                {
                    _loc6[_loc10].values[_loc8].color = com.amcharts.Utils.toColor(_loc3.attributes.color);
                } // end if
                if (_loc3.attributes.bullet != undefined)
                {
                    _loc6[_loc10].values[_loc8].bullet = _loc3.attributes.bullet;
                } // end if
                if (_loc3.attributes.bullet_color != undefined)
                {
                    _loc6[_loc10].values[_loc8].bullet_color = com.amcharts.Utils.toColor(_loc3.attributes.bullet_color);
                } // end if
                if (_loc3.attributes.bullet_size != undefined)
                {
                    _loc6[_loc10].values[_loc8].bullet_size = com.amcharts.Utils.toNumber(_loc3.attributes.bullet_size);
                } // end if
                if (_loc3.attributes.label_position != undefined)
                {
                    _loc6[_loc10].values[_loc8].label_position = _loc3.attributes.label_position;
                } // end if
            } // end of for
            _loc20 = __data.series.length;
            for (var _loc7 = 0; _loc7 < _loc20; ++_loc7)
            {
                __data.graphs.graph[_loc10].values[_loc7] = _loc6[_loc10].values[__data.series[_loc7].id];
                if (isNaN(__data.graphs.graph[_loc10].values[_loc7].value) == true)
                {
                    __data.graphs.graph[_loc10].values[_loc7] = null;
                } // end if
            } // end of for
        } // end of for
        _loc20 = _loc2.series.value.length;
        for (var _loc7 = 0; _loc7 < _loc20; ++_loc7)
        {
            var _loc15 = 0;
            var _loc14 = 0;
            for (var _loc10 = 0; _loc10 < _loc12; ++_loc10)
            {
                if (__data.graphs.graph[_loc10].values[_loc7].value != null)
                {
                    if (__config.graphs.graph[_loc10].axis == "right")
                    {
                        _loc14 = _loc14 + Math.abs(__data.graphs.graph[_loc10].values[_loc7].value);
                        continue;
                    } // end if
                    _loc15 = _loc15 + Math.abs(__data.graphs.graph[_loc10].values[_loc7].value);
                } // end if
            } // end of for
            for (var _loc10 = 0; _loc10 < _loc12; ++_loc10)
            {
                if (__config.graphs.graph[_loc10].axis == "right")
                {
                    __data.graphs.graph[_loc10].values[_loc7].percent = __data.graphs.graph[_loc10].values[_loc7].value / _loc14 * 100;
                    continue;
                } // end if
                __data.graphs.graph[_loc10].values[_loc7].percent = __data.graphs.graph[_loc10].values[_loc7].value / _loc15 * 100;
            } // end of for
        } // end of for
        _loc2.labels.label = com.amcharts.Utils.objectToArray(_loc2.labels.label);
        if (__config.remove_label_count > 0)
        {
            for (var _loc7 = 0; _loc7 < __config.remove_label_count; ++_loc7)
            {
                __config.labels.label.pop();
            } // end of for
        } // end if
        var _loc18 = _loc2.labels.label.length;
        for (var _loc7 = 0; _loc7 < _loc18; ++_loc7)
        {
            var _loc9 = __config.labels.label.push(new Object()) - 1;
            __config.labels.label[_loc9].lid = _loc2.labels.label[_loc7].attributes.lid;
            __config.labels.label[_loc9].x = com.amcharts.Utils.checkUndefined(_loc2.labels.label[_loc7].x.data, 0);
            __config.labels.label[_loc9].y = com.amcharts.Utils.checkUndefined(_loc2.labels.label[_loc7].y.data, 0);
            __config.labels.label[_loc9].text = _loc2.labels.label[_loc7].text.data;
            __config.labels.label[_loc9].align = _loc2.labels.label[_loc7].align.data.toLowerCase();
            __config.labels.label[_loc9].rotate = com.amcharts.Utils.toBoolean(_loc2.labels.label[_loc7].rotate.data);
            __config.labels.label[_loc9].width = _loc2.labels.label[_loc7].width.data;
            __config.labels.label[_loc9].text_size = com.amcharts.Utils.toNumber(_loc2.labels.label[_loc7].text_size.data, __config.text_size);
            __config.labels.label[_loc9].text_color = com.amcharts.Utils.toColor(_loc2.labels.label[_loc7].text_color.data, __config.text_color);
        } // end of for
        __config.remove_label_count = _loc18;
        _loc2.guides.guide = com.amcharts.Utils.objectToArray(_loc2.guides.guide);
        if (__config.remove_guide_count > 0)
        {
            for (var _loc7 = 0; _loc7 < __config.remove_guide_count; ++_loc7)
            {
                __config.guides.guide.pop();
            } // end of for
        } // end if
        __config.guides.max_min = com.amcharts.Utils.toBoolean(_loc2.guides.max_min.data, __config.guides.max_min);
        var _loc19 = _loc2.guides.guide.length;
        for (var _loc7 = 0; _loc7 < _loc19; ++_loc7)
        {
            _loc9 = __config.guides.guide.push(new Object()) - 1;
            __config.guides.guide[_loc9].gid = _loc2.guides.guide[_loc7].attributes.gid;
            __config.guides.guide[_loc9].axis = com.amcharts.Utils.checkUndefined(_loc2.guides.guide[_loc7].axis.data, "left");
            __config.guides.guide[_loc9].start_value = com.amcharts.Utils.toNumber(_loc2.guides.guide[_loc7].start_value.data);
            __config.guides.guide[_loc9].end_value = com.amcharts.Utils.toNumber(_loc2.guides.guide[_loc7].end_value.data);
            __config.guides.guide[_loc9].title = com.amcharts.Utils.checkUndefined(_loc2.guides.guide[_loc7].title.data, "");
            __config.guides.guide[_loc9].width = com.amcharts.Utils.toNumber(_loc2.guides.guide[_loc7].width.data, 0);
            __config.guides.guide[_loc9].alpha = com.amcharts.Utils.toNumber(_loc2.guides.guide[_loc7].alpha.data, 100);
            __config.guides.guide[_loc9].color = com.amcharts.Utils.toColor(_loc2.guides.guide[_loc7].color.data, 0);
            __config.guides.guide[_loc9].fill_color = com.amcharts.Utils.toColor(_loc2.guides.guide[_loc7].fill_color.data, __config.guides.guide[_loc7].color);
            __config.guides.guide[_loc9].fill_alpha = com.amcharts.Utils.toNumber(_loc2.guides.guide[_loc7].fill_alpha.data, 0);
            __config.guides.guide[_loc9].rotate = com.amcharts.Utils.toNumber(_loc2.guides.guide[_loc7].rotate.data, __config.values["y_" + __config.guides.guide[_loc7].axis].rotate);
            __config.guides.guide[_loc9].text_size = com.amcharts.Utils.toNumber(_loc2.guides.guide[_loc7].text_size.data, __config.values["y_" + __config.guides.guide[_loc7].axis].text_size);
            __config.guides.guide[_loc9].text_color = com.amcharts.Utils.toColor(_loc2.guides.guide[_loc7].text_color.data, __config.values["y_" + __config.guides.guide[_loc7].axis].color);
            __config.guides.guide[_loc9].inside = com.amcharts.Utils.toBoolean(_loc2.guides.guide[_loc7].inside.data, __config.values["y_" + __config.guides.guide[_loc7].axis].inside);
            __config.guides.guide[_loc9].dashed = com.amcharts.Utils.toBoolean(_loc2.guides.guide[_loc7].dashed.data, false);
            __config.guides.guide[_loc9].dash_length = com.amcharts.Utils.toNumber(_loc2.guides.guide[_loc7].dash_length.data, 5);
            __config.guides.guide[_loc9].centered = com.amcharts.Utils.toBoolean(_loc2.guides.guide[_loc7].centered.data, false);
        } // end of for
        __config.remove_guide_count = _loc19;
    } // End of the function
    function get obj()
    {
        return (__data);
    } // End of the function
} // End of Class
