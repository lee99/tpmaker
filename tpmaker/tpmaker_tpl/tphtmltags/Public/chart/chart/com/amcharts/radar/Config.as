class com.amcharts.radar.Config
{
    var __settings, __config, __get__obj;
    function Config(settings)
    {
        __settings = settings;
        __config = new Object();
        this.__init();
    } // End of the function
    function __init()
    {
        __config.js_enabled = com.amcharts.Utils.toBoolean(__settings.js_enabled.data, true);
        __config.width = com.amcharts.Utils.toNumber(__settings.width.data);
        __config.height = com.amcharts.Utils.toNumber(__settings.height.data);
        __config.data_type = __settings.data_type.data.toLowerCase();
        if (__config.data_type != "xml" && __config.data_type != "csv")
        {
            __config.data_type = "xml";
        } // end if
        __config.type = com.amcharts.Utils.checkUndefined(__settings.type.data.toLowerCase(), "line");
        __config.csv_separator = com.amcharts.Utils.checkUndefined(__settings.csv_separator.data, ";");
        __config.skip_rows = com.amcharts.Utils.toNumber(__settings.skip_rows.data, 0);
        __config.font = com.amcharts.Utils.checkUndefined(__settings.font.data, "Arial");
        _global.font = __config.font;
        __config.text_size = com.amcharts.Utils.toNumber(__settings.text_size.data, 11);
        __config.text_color = com.amcharts.Utils.toColor(__settings.text_color.data, 0);
        __config.decimals_separator = com.amcharts.Utils.checkUndefined(__settings.decimals_separator.data, ",");
        __config.thousands_separator = com.amcharts.Utils.checkUndefined(__settings.thousands_separator.data, " ");
        if (__config.thousands_separator == "none")
        {
            __config.thousands_separator = "";
        } // end if
        __config.digits_after_decimal = Math.abs(com.amcharts.Utils.toNumber(__settings.digits_after_decimal.data, undefined));
        __config.scientific_min = com.amcharts.Utils.toNumber(__settings.scientific_min.data, 1.000000E-006);
        __config.scientific_max = com.amcharts.Utils.toNumber(__settings.scientific_max.data, 1.000000E+015);
        __config.redraw = com.amcharts.Utils.toBoolean(__settings.redraw.data, false);
        __config.reload_data_interval = com.amcharts.Utils.toNumber(__settings.reload_data_interval.data, 0);
        __config.add_time_stamp = com.amcharts.Utils.toBoolean(__settings.add_time_stamp.data, false);
        __config.precision = Math.abs(com.amcharts.Utils.toNumber(__settings.precision.data, 2));
        __config.export_image_file = __settings.export_image_file.data;
        __config.preloader_on_reload = com.amcharts.Utils.toBoolean(__settings.preloader_on_reload.data, false);
        __config.link_target = __settings.link_target.data;
        if (__config.link_target == undefined)
        {
            __config.link_target = "";
        } // end if
        __config.radar = new Object();
        __config.radar.x = com.amcharts.Utils.checkUndefined(__settings.radar.x.data, "50%");
        __config.radar.y = com.amcharts.Utils.checkUndefined(__settings.radar.y.data, "50%");
        __config.radar.radius = com.amcharts.Utils.checkUndefined(__settings.radar.radius.data, "30%");
        __config.radar.initial_radius = __config.radar.radius;
        __config.radar.initial_y = __config.radar.y;
        __config.radar.grow_time = com.amcharts.Utils.toNumber(__settings.radar.grow_time.data, 0);
        __config.radar.sequenced_grow = com.amcharts.Utils.toBoolean(__settings.radar.sequenced_grow.data, false);
        __config.radar.grow_effect = __settings.radar.grow_effect.data.toLowerCase();
        if (__config.radar.grow_effect == "regular")
        {
            __config.radar.grow_effect = mx.transitions.easing.Regular.easeOut;
        }
        else if (__config.radar.grow_effect == "strong")
        {
            __config.radar.grow_effect = mx.transitions.easing.Strong.easeOut;
        }
        else
        {
            __config.radar.grow_effect = mx.transitions.easing.Elastic.easeOut;
        } // end else if
        __config.axes = new Object();
        __config.axes.width = com.amcharts.Utils.toNumber(__settings.axes.width.data, 0);
        __config.axes.color = com.amcharts.Utils.toColor(__settings.axes.color.data, 0);
        __config.axes.alpha = com.amcharts.Utils.toNumber(__settings.axes.alpha.data, 25);
        __config.axes.tick_length = com.amcharts.Utils.toNumber(__settings.axes.tick_length.data, 5);
        __config.axes.labels = new Object();
        __config.axes.labels.enabled = com.amcharts.Utils.toBoolean(__settings.axes.labels.enabled.data, true);
        __config.axes.labels.text_color = com.amcharts.Utils.toColor(__settings.axes.labels.text_color.data, __config.text_color);
        __config.axes.labels.text_size = com.amcharts.Utils.toNumber(__settings.axes.labels.text_size.data, __config.text_size);
        __config.axes.labels.distance = com.amcharts.Utils.toNumber(__settings.axes.labels.distance.data, 10);
        __config.axes.labels.width = com.amcharts.Utils.toNumber(__settings.axes.labels.width.data, 150);
        __config.grid = new Object();
        __config.grid.type = com.amcharts.Utils.checkUndefined(__settings.grid.type.data.toLowerCase(), "lines");
        __config.grid.width = com.amcharts.Utils.toNumber(__settings.grid.width.data, 0);
        __config.grid.color = com.amcharts.Utils.toColor(__settings.grid.color.data, 0);
        __config.grid.alpha = com.amcharts.Utils.toNumber(__settings.grid.alpha.data, 10);
        __config.grid.approx_count = com.amcharts.Utils.toNumber(__settings.grid.approx_count.data, 8);
        __config.grid.fill_color = com.amcharts.Utils.toColor(__settings.grid.fill_color.data, 16777215);
        __config.grid.fill_alpha = com.amcharts.Utils.toNumber(__settings.grid.fill_alpha.data, 0);
        __config.grid.dashed = com.amcharts.Utils.toBoolean(__settings.grid.dashed.data, false);
        __config.grid.dash_length = com.amcharts.Utils.toNumber(__settings.grid.dash_length.data, 5);
        __config.values = new Object();
        __config.values.enabled = com.amcharts.Utils.toBoolean(__settings.values.enabled.data, true);
        __config.values.min = com.amcharts.Utils.toNumber(__settings.values.min.data);
        __config.values.max = com.amcharts.Utils.toNumber(__settings.values.max.data);
        __config.values.strict_min_max = com.amcharts.Utils.toBoolean(__settings.values.strict_min_max.data, false);
        __config.values.color = com.amcharts.Utils.toColor(__settings.values.color.data, __config.text_color);
        __config.values.text_size = com.amcharts.Utils.toNumber(__settings.values.text_size.data, __config.text_size);
        __config.values.frequency = com.amcharts.Utils.toNumber(__settings.values.frequency.data, 1);
        __config.values.skip_first = com.amcharts.Utils.toBoolean(__settings.values.skip_first.data, true);
        __config.values.skip_last = com.amcharts.Utils.toBoolean(__settings.values.skip_last.data, false);
        __config.values.integers_only = com.amcharts.Utils.toBoolean(__settings.values.integers_only.data, false);
        __config.values.position = com.amcharts.Utils.checkUndefined(__settings.values.position.data.toLowerCase(), "left");
        __config.values.unit = com.amcharts.Utils.checkUndefined(__settings.values.unit.data, "");
        __config.values.unit_position = __settings.values.unit_position.data.toLowerCase();
        __config.background = new Object();
        __config.background.color = com.amcharts.Utils.toColor(__settings.background.color.data, 16777215);
        __config.background.alpha = com.amcharts.Utils.toNumber(__settings.background.alpha.data, 0);
        __config.background.file = __settings.background.file.data;
        __config.background.border_color = com.amcharts.Utils.toColor(__settings.background.border_color.data, 0);
        __config.background.border_alpha = com.amcharts.Utils.toNumber(__settings.background.border_alpha.data, 0);
        __config.balloon = new Object();
        __config.balloon.enabled = com.amcharts.Utils.toBoolean(__settings.balloon.enabled.data, true);
        __config.balloon.color = com.amcharts.Utils.toColor(__settings.balloon.color.data);
        __config.balloon.alpha = com.amcharts.Utils.toNumber(__settings.balloon.alpha.data, 80);
        __config.balloon.text_color = com.amcharts.Utils.toColor(__settings.balloon.text_color.data, 16777215);
        __config.balloon.text_size = com.amcharts.Utils.toNumber(__settings.balloon.text_size.data, __config.text_size);
        __config.balloon.max_width = com.amcharts.Utils.toNumber(__settings.balloon.max_width.data, 220);
        __config.balloon.corner_radius = com.amcharts.Utils.toNumber(__settings.balloon.corner_radius.data, 0);
        __config.balloon.border_width = com.amcharts.Utils.toNumber(__settings.balloon.border_width.data, 0);
        __config.balloon.border_alpha = com.amcharts.Utils.toNumber(__settings.balloon.border_alpha.data, __config.balloon.alpha);
        __config.balloon.border_color = com.amcharts.Utils.toColor(__settings.balloon.border_color.data, __config.balloon.color);
        __config.balloon.show = com.amcharts.Utils.checkUndefined(__settings.balloon.show.data, "{axis}: {value}<br>{description}");
        __config.legend = new Object();
        __config.legend.enabled = com.amcharts.Utils.toBoolean(__settings.legend.enabled.data, true);
        __config.legend.x = com.amcharts.Utils.checkUndefined(__settings.legend.x.data, "5%");
        __config.legend.y = __settings.legend.y.data;
        __config.legend.initial_y = __config.legend.y;
        __config.legend.width = com.amcharts.Utils.checkUndefined(__settings.legend.width.data, "90%");
        __config.legend.color = com.amcharts.Utils.toColor(__settings.legend.color.data, 16777215);
        __config.legend.alpha = com.amcharts.Utils.toNumber(__settings.legend.alpha.data, 0);
        __config.legend.border_color = com.amcharts.Utils.toColor(__settings.legend.border_color.data, 0);
        __config.legend.border_alpha = com.amcharts.Utils.toNumber(__settings.legend.border_alpha.data, 0);
        __config.legend.max_columns = com.amcharts.Utils.toNumber(__settings.legend.max_columns.data, 0);
        __config.legend.key = new Object();
        __config.legend.key.size = com.amcharts.Utils.toNumber(__settings.legend.key.size.data, 16);
        __config.legend.key.border_color = com.amcharts.Utils.toColor(__settings.legend.key.border_color.data);
        __config.legend.text_color = com.amcharts.Utils.toColor(__settings.legend.text_color.data, __config.text_color);
        __config.legend.text_size = com.amcharts.Utils.toNumber(__settings.legend.text_size.data, __config.text_size);
        __config.legend.spacing = com.amcharts.Utils.toNumber(__settings.legend.spacing.data, 10);
        __config.legend.margins = com.amcharts.Utils.toNumber(__settings.legend.margins.data, 0);
        __config.legend.align = com.amcharts.Utils.checkUndefined(__settings.legend.align.data, "left");
        __config.legend.reverse_order = com.amcharts.Utils.toBoolean(__settings.legend.reverse_order.data, false);
        __config.legend.values = new Object();
        __config.legend.values.enabled = com.amcharts.Utils.toBoolean(__settings.legend.values.enabled.data, false);
        __config.legend.values.width = com.amcharts.Utils.toNumber(__settings.legend.values.width.data);
        __config.legend.values.text = com.amcharts.Utils.checkUndefined(__settings.legend.values.text.data, "{percents}%");
        __config.export_as_image = new Object();
        __config.export_as_image.file = com.amcharts.Utils.checkUndefined(__settings.export_as_image.file.data, __config.export_image_file);
        __config.export_as_image.target = com.amcharts.Utils.checkUndefined(__settings.export_as_image.target.data, "");
        __config.export_as_image.x = __settings.export_as_image.x.data;
        __config.export_as_image.y = __settings.export_as_image.y.data;
        __config.export_as_image.color = com.amcharts.Utils.toColor(__settings.export_as_image.color.data, 12303104);
        __config.export_as_image.alpha = com.amcharts.Utils.toNumber(__settings.export_as_image.alpha.data, 0);
        __config.export_as_image.text_color = com.amcharts.Utils.toColor(__settings.export_as_image.text_color.data, __config.text_color);
        __config.export_as_image.text_size = com.amcharts.Utils.toNumber(__settings.export_as_image.text_size.data, __config.text_size);
        __config.error_messages = new Object();
        __config.error_messages.enabled = com.amcharts.Utils.toBoolean(__settings.error_messages.enabled.data, true);
        __config.error_messages.x = __settings.error_messages.x.data;
        __config.error_messages.y = __settings.error_messages.y.data;
        __config.error_messages.color = com.amcharts.Utils.toColor(__settings.error_messages.color.data, 12303104);
        __config.error_messages.alpha = com.amcharts.Utils.toNumber(__settings.error_messages.alpha.data, 100);
        __config.error_messages.text_color = com.amcharts.Utils.toColor(__settings.error_messages.text_color.data, 16777215);
        __config.error_messages.text_size = com.amcharts.Utils.toNumber(__settings.error_messages.text_size.data, __config.text_size);
        __config.strings = new Object();
        __config.strings.no_data = com.amcharts.Utils.checkUndefined(__settings.strings.no_data.data, "No data for selected period");
        __config.strings.export_as_image = com.amcharts.Utils.checkUndefined(__settings.strings.export_as_image.data, "Export as image");
        __config.strings.collecting_data = com.amcharts.Utils.checkUndefined(__settings.strings.collecting_data.data, "Collecting data");
        __settings.labels.label = com.amcharts.Utils.objectToArray(__settings.labels.label);
        __config.labels = new Object();
        __config.labels.label = new Array();
        for (var _loc5 = 0; _loc5 < __settings.labels.label.length; ++_loc5)
        {
            __config.labels.label[_loc5] = new Object();
            __config.labels.label[_loc5].lid = __settings.labels.label[_loc5].attributes.lid;
            __config.labels.label[_loc5].x = com.amcharts.Utils.checkUndefined(__settings.labels.label[_loc5].x.data, 0);
            __config.labels.label[_loc5].y = com.amcharts.Utils.checkUndefined(__settings.labels.label[_loc5].y.data, 0);
            __config.labels.label[_loc5].text = __settings.labels.label[_loc5].text.data;
            __config.labels.label[_loc5].align = __settings.labels.label[_loc5].align.data.toLowerCase();
            __config.labels.label[_loc5].rotate = com.amcharts.Utils.toBoolean(__settings.labels.label[_loc5].rotate.data);
            __config.labels.label[_loc5].width = __settings.labels.label[_loc5].width.data;
            __config.labels.label[_loc5].text_size = com.amcharts.Utils.toNumber(__settings.labels.label[_loc5].text_size.data, __config.text_size);
            __config.labels.label[_loc5].text_color = com.amcharts.Utils.toColor(__settings.labels.label[_loc5].text_color.data, __config.text_color);
        } // end of for
        __settings.plugins.plugin = com.amcharts.Utils.objectToArray(__settings.plugins.plugin);
        __config.plugins = __settings.plugins;
        __config.context_menu = new Object();
        __config.context_menu.default_items = new Object();
        __config.context_menu.default_items.print = com.amcharts.Utils.toBoolean(__settings.context_menu.default_items.print.data, true);
        __config.context_menu.default_items.zoom = com.amcharts.Utils.toBoolean(__settings.context_menu.default_items.zoom.data, false);
        __config.context_menu.menu = new Array();
        __settings.context_menu.menu = com.amcharts.Utils.objectToArray(__settings.context_menu.menu);
        for (var _loc5 = 0; _loc5 < __settings.context_menu.menu.length; ++_loc5)
        {
            __config.context_menu.menu[_loc5] = new Object();
            __config.context_menu.menu[_loc5].function_name = __settings.context_menu.menu[_loc5].attributes.function_name;
            __config.context_menu.menu[_loc5].title = __settings.context_menu.menu[_loc5].attributes.title;
        } // end of for
        __settings.graphs.graph = com.amcharts.Utils.objectToArray(__settings.graphs.graph);
        __config.graphs = new Object();
        __config.graphs.temp_graphs = new Array();
        __config.gids = new Array();
        __config.colors = com.amcharts.Utils.toColor(__settings.colors.data, [16711680, 255, 65280, 16750848, 13369548, 52428, 3407616, 10027008, 102, 5592405]);
        for (var _loc5 = 0; _loc5 < __settings.graphs.graph.length; ++_loc5)
        {
            var _loc4 = __settings.graphs.graph[_loc5];
            var _loc3 = _loc4.attributes.gid;
            if (_loc3 == undefined)
            {
                _loc3 = _loc5;
            } // end if
            _loc3 = "key_" + _loc3;
            __config.gids[_loc5] = _loc3;
            __config.graphs.temp_graphs[_loc3] = new Object();
            __config.graphs.temp_graphs[_loc3].gid = _loc4.attributes.gid;
            __config.graphs.temp_graphs[_loc3].title = com.amcharts.Utils.checkUndefined(_loc4.title.data, "");
            __config.graphs.temp_graphs[_loc3].color = com.amcharts.Utils.toColor(_loc4.color.data, __config.colors[_loc5]);
            __config.graphs.temp_graphs[_loc3].line_alpha = com.amcharts.Utils.toNumber(_loc4.line_alpha.data, 100);
            __config.graphs.temp_graphs[_loc3].line_width = com.amcharts.Utils.toNumber(_loc4.line_width.data, 0);
            __config.graphs.temp_graphs[_loc3].fill_alpha = com.amcharts.Utils.toNumber(_loc4.fill_alpha.data, 0);
            __config.graphs.temp_graphs[_loc3].fill_color = com.amcharts.Utils.toColor(_loc4.fill_color.data, __config.graphs.temp_graphs[_loc3].color);
            __config.graphs.temp_graphs[_loc3].balloon_color = com.amcharts.Utils.toColor(_loc4.balloon_color.data, com.amcharts.Utils.checkUndefined(__config.balloon.color, __config.graphs.temp_graphs[_loc3].color));
            __config.graphs.temp_graphs[_loc3].balloon_alpha = com.amcharts.Utils.toNumber(_loc4.balloon_alpha.data, com.amcharts.Utils.checkUndefined(__config.balloon.alpha, 100));
            __config.graphs.temp_graphs[_loc3].balloon_text_color = com.amcharts.Utils.toColor(_loc4.balloon_text_color.data, com.amcharts.Utils.checkUndefined(__config.balloon.text_color, 16777215));
            __config.graphs.temp_graphs[_loc3].balloon_text = com.amcharts.Utils.checkUndefined(_loc4.balloon_text.data, __config.balloon.show);
            __config.graphs.temp_graphs[_loc3].bullet = _loc4.bullet.data;
            __config.graphs.temp_graphs[_loc3].bullet_color = com.amcharts.Utils.toColor(_loc4.bullet_color.data, __config.graphs.temp_graphs[_loc3].color);
            __config.graphs.temp_graphs[_loc3].bullet_size = com.amcharts.Utils.toNumber(_loc4.bullet_size.data, 8);
            __config.graphs.temp_graphs[_loc3].bullet_alpha = com.amcharts.Utils.toNumber(_loc4.bullet_alpha.data, __config.graphs.temp_graphs[_loc3].line_alpha);
            __config.graphs.temp_graphs[_loc3].visible_in_legend = com.amcharts.Utils.toBoolean(_loc4.visible_in_legend.data, true);
        } // end of for
        __settings.fills.fill = com.amcharts.Utils.objectToArray(__settings.fills.fill);
        __config.fills = new Object();
        __config.fills.fill = new Array();
        for (var _loc5 = 0; _loc5 < __settings.fills.fill.length; ++_loc5)
        {
            __config.fills.fill[_loc5] = new Object();
            __config.fills.fill[_loc5].fid = __settings.fills.fill[_loc5].attributes.fid;
            __config.fills.fill[_loc5].start_value = com.amcharts.Utils.toNumber(__settings.fills.fill[_loc5].start_value.data);
            __config.fills.fill[_loc5].end_value = com.amcharts.Utils.toNumber(__settings.fills.fill[_loc5].end_value.data);
            __config.fills.fill[_loc5].color = com.amcharts.Utils.toColor(__settings.fills.fill[_loc5].color.data);
            __config.fills.fill[_loc5].alpha = com.amcharts.Utils.toNumber(__settings.fills.fill[_loc5].alpha.data, 100);
        } // end of for
    } // End of the function
    function get obj()
    {
        return (__config);
    } // End of the function
} // End of Class
