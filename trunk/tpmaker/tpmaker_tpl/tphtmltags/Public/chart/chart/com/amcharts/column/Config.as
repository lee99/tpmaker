class com.amcharts.column.Config
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
        __config.type = com.amcharts.Utils.checkUndefined(__settings.type.data.toLowerCase(), "column");
        if (__config.type != "column" && __config.type != "bar")
        {
            __config.type = "column";
        } // end if
        __config.width = com.amcharts.Utils.toNumber(__settings.width.data);
        __config.height = com.amcharts.Utils.toNumber(__settings.height.data);
        __config.font = com.amcharts.Utils.checkUndefined(__settings.font.data, "Arial");
        _global.font = __config.font;
        __config.text_size = com.amcharts.Utils.toNumber(__settings.text_size.data, 11);
        __config.text_color = com.amcharts.Utils.toColor(__settings.text_color.data, 0);
        __config.thousands_separator = com.amcharts.Utils.checkUndefined(__settings.thousands_separator.data, " ");
        if (__config.thousands_separator == "none")
        {
            __config.thousands_separator = "";
        } // end if
        __config.decimals_separator = com.amcharts.Utils.checkUndefined(__settings.decimals_separator.data, ",");
        __config.digits_after_decimal = Math.abs(com.amcharts.Utils.toNumber(__settings.digits_after_decimal.data, undefined));
        __config.scientific_min = com.amcharts.Utils.toNumber(__settings.scientific_min.data, 1.000000E-006);
        __config.scientific_max = com.amcharts.Utils.toNumber(__settings.scientific_max.data, 1.000000E+015);
        __config.data_type = __settings.data_type.data.toLowerCase();
        if (__config.data_type != "xml" && __config.data_type != "csv")
        {
            __config.data_type = "xml";
        } // end if
        __config.autofit = com.amcharts.Utils.toBoolean(__settings.autofit.data, true);
        __config.reload_data_interval = com.amcharts.Utils.toNumber(__settings.reload_data_interval.data, 0);
        __config.add_time_stamp = com.amcharts.Utils.toBoolean(__settings.add_time_stamp.data, false);
        __config.depth = Math.abs(com.amcharts.Utils.toNumber(__settings.depth.data, 0));
        __config.angle = com.amcharts.Utils.fitToBounds(com.amcharts.Utils.toNumber(__settings.angle.data, 30), 0, 90);
        __config.precision = Math.abs(com.amcharts.Utils.toNumber(__settings.precision.data, 2));
        __config.export_image_file = __settings.export_image_file.data;
        __config.preloader_on_reload = com.amcharts.Utils.toBoolean(__settings.preloader_on_reload.data, false);
        __config.balloon = new Object();
        __config.balloon.enabled = com.amcharts.Utils.toBoolean(__settings.balloon.enabled.data, true);
        __config.balloon.color = com.amcharts.Utils.toColor(__settings.balloon.color.data);
        __config.balloon.alpha = com.amcharts.Utils.toNumber(__settings.balloon.alpha.data, 100);
        __config.balloon.text_color = com.amcharts.Utils.toColor(__settings.balloon.text_color.data, 16777215);
        __config.balloon.text_size = com.amcharts.Utils.toNumber(__settings.balloon.text_size.data, __config.text_size);
        __config.balloon.show = com.amcharts.Utils.checkUndefined(__settings.balloon.show.data, "");
        __config.balloon.max_width = com.amcharts.Utils.toNumber(__settings.balloon.max_width.data, 220);
        __config.balloon.corner_radius = com.amcharts.Utils.toNumber(__settings.balloon.corner_radius.data, 0);
        __config.balloon.border_width = com.amcharts.Utils.toNumber(__settings.balloon.border_width.data, 0);
        __config.balloon.border_alpha = com.amcharts.Utils.toNumber(__settings.balloon.border_alpha.data, __config.balloon.alpha);
        __config.balloon.border_color = com.amcharts.Utils.toColor(__settings.balloon.border_color.data, __config.balloon.color);
        __config.column = new Object();
        __config.column.grow_time = com.amcharts.Utils.toNumber(__settings.column.grow_time.data, 0);
        __config.column.sequenced_grow = com.amcharts.Utils.toBoolean(__settings.column.sequenced_grow.data, false);
        __config.column.grow_effect = __settings.column.grow_effect.data.toLowerCase();
        if (__config.column.grow_effect == "regular")
        {
            __config.column.grow_effect = mx.transitions.easing.Regular.easeOut;
        }
        else if (__config.column.grow_effect == "strong")
        {
            __config.column.grow_effect = mx.transitions.easing.Strong.easeOut;
        }
        else
        {
            __config.column.grow_effect = mx.transitions.easing.Elastic.easeOut;
        } // end else if
        __config.column.width = com.amcharts.Utils.fitToBounds(com.amcharts.Utils.toNumber(__settings.column.width.data, 80), 0, 100);
        __config.column.spacing = com.amcharts.Utils.toNumber(__settings.column.spacing.data, 5);
        __config.column.alpha = com.amcharts.Utils.toNumber(__settings.column.alpha.data, 100);
        __config.column.border_alpha = com.amcharts.Utils.toNumber(__settings.column.border_alpha.data, 0);
        __config.column.border_color = com.amcharts.Utils.toColor(__settings.column.border_color.data, 16777215);
        __config.column.data_labels = com.amcharts.Utils.checkUndefined(__settings.column.data_labels.data, "");
        __config.column.balloon_text = com.amcharts.Utils.checkUndefined(__settings.column.balloon_text.data, __config.balloon.show);
        __config.column.data_labels_text_color = com.amcharts.Utils.toColor(__settings.column.data_labels_text_color.data, __config.text_color);
        __config.column.data_labels_text_size = com.amcharts.Utils.toNumber(__settings.column.data_labels_text_size.data, __config.text_size);
        __config.column.data_labels_always_on = com.amcharts.Utils.toBoolean(__settings.column.data_labels_always_on.data, false);
        __config.column.gradient = com.amcharts.Utils.checkUndefined(__settings.column.gradient.data, "vertical");
        __config.column.bullet_offset = com.amcharts.Utils.toNumber(__settings.column.bullet_offset.data, 0);
        __config.column.hover_brightness = com.amcharts.Utils.toNumber(__settings.column.hover_brightness.data, 0);
        var _loc7 = __settings.column.data_labels_position.data.toLowerCase();
        if (_loc7 == undefined || _loc7 != "outside" && _loc7 != "inside" && _loc7 != "above")
        {
            _loc7 = "outside";
        } // end if
        __config.column.data_labels_position = _loc7;
        __config.column.type = __settings.column.type.data.toLowerCase();
        if (__config.column.type != "clustered" && __config.column.type != "stacked" && __config.column.type != "100% stacked" && __config.column.type != "3d column")
        {
            __config.column.type = "clustered";
        } // end if
        __config.column.link_target = __settings.column.link_target.data;
        if (__config.column.link_target == undefined)
        {
            __config.column.link_target = "";
        } // end if
        __config.line = new Object();
        __config.line.width = com.amcharts.Utils.toNumber(__settings.line.width.data, 2);
        __config.line.alpha = com.amcharts.Utils.toNumber(__settings.line.alpha.data, 100);
        __config.line.fill_alpha = com.amcharts.Utils.toNumber(__settings.line.fill_alpha.data, 0);
        __config.line.connect = com.amcharts.Utils.toBoolean(__settings.line.connect.data, false);
        __config.line.bullet = __settings.line.bullet.data;
        __config.line.bullet_size = com.amcharts.Utils.toNumber(__settings.line.bullet_size.data, 8);
        __config.line.data_labels = com.amcharts.Utils.checkUndefined(__settings.line.data_labels.data, "");
        __config.line.balloon_text = com.amcharts.Utils.checkUndefined(__settings.line.balloon_text.data, __config.balloon.show);
        __config.line.data_labels_text_color = com.amcharts.Utils.toColor(__settings.line.data_labels_text_color.data, __config.text_color);
        __config.line.data_labels_text_size = com.amcharts.Utils.toNumber(__settings.line.data_labels_text_size.data, __config.text_size);
        __config.line.link_target = __settings.line.link_target.data;
        if (__config.line.link_target == undefined)
        {
            __config.line.link_target = "";
        } // end if
        __config.csv_separator = com.amcharts.Utils.checkUndefined(__settings.csv_separator.data, ";");
        __config.skip_rows = com.amcharts.Utils.toNumber(__settings.skip_rows.data, 0);
        __config.redraw = com.amcharts.Utils.toBoolean(__settings.redraw.data, false);
        __config.background = new Object();
        __config.background.color = com.amcharts.Utils.toColor(__settings.background.color.data, 16777215);
        __config.background.alpha = com.amcharts.Utils.toNumber(__settings.background.alpha.data, 0);
        __config.background.file = __settings.background.file.data;
        __config.background.border_color = com.amcharts.Utils.toColor(__settings.background.border_color.data, 0);
        __config.background.border_alpha = com.amcharts.Utils.toNumber(__settings.background.border_alpha.data, 0);
        __config.plot_area = new Object();
        __config.plot_area.color = com.amcharts.Utils.toColor(__settings.plot_area.color.data, 16777215);
        __config.plot_area.alpha = com.amcharts.Utils.toNumber(__settings.plot_area.alpha.data, 0);
        __config.plot_area.border_color = com.amcharts.Utils.toColor(__settings.plot_area.border_color.data, 0);
        __config.plot_area.border_alpha = com.amcharts.Utils.toNumber(__settings.plot_area.border_alpha.data, 0);
        __config.plot_area.margins = new Object();
        __config.plot_area.margins.left = com.amcharts.Utils.checkUndefined(__settings.plot_area.margins.left.data, 60);
        __config.plot_area.margins.top = com.amcharts.Utils.checkUndefined(__settings.plot_area.margins.top.data, 60);
        __config.plot_area.margins.right = com.amcharts.Utils.checkUndefined(__settings.plot_area.margins.right.data, 60);
        __config.plot_area.margins.bottom = com.amcharts.Utils.checkUndefined(__settings.plot_area.margins.bottom.data, 80);
        __config.plot_area.margins.initial_left = __config.plot_area.margins.left;
        __config.plot_area.margins.initial_top = __config.plot_area.margins.top;
        __config.plot_area.margins.initial_right = __config.plot_area.margins.right;
        __config.plot_area.margins.initial_bottom = __config.plot_area.margins.bottom;
        __config.grid = new Object();
        __config.grid.category = new Object();
        __config.grid.category.dashed = com.amcharts.Utils.toBoolean(__settings.grid.category.dashed.data, false);
        __config.grid.category.dash_length = com.amcharts.Utils.toNumber(__settings.grid.category.dash_length.data, 5);
        __config.grid.category.alpha = com.amcharts.Utils.toNumber(__settings.grid.category.alpha.data, 15);
        __config.grid.category.color = com.amcharts.Utils.toColor(__settings.grid.category.color.data, 0);
        __config.grid.value = new Object();
        __config.grid.value.approx_count = com.amcharts.Utils.toNumber(__settings.grid.value.approx_count.data, 10);
        __config.grid.value.dashed = com.amcharts.Utils.toBoolean(__settings.grid.value.dashed.data, false);
        __config.grid.value.dash_length = com.amcharts.Utils.toNumber(__settings.grid.value.dash_length.data, 5);
        __config.grid.value.alpha = com.amcharts.Utils.toNumber(__settings.grid.value.alpha.data, 15);
        __config.grid.value.color = com.amcharts.Utils.toColor(__settings.grid.value.color.data, 0);
        __config.grid.value.fill_alpha = com.amcharts.Utils.toNumber(__settings.grid.value.fill_alpha.data, 0);
        __config.grid.value.fill_color = com.amcharts.Utils.toColor(__settings.grid.value.fill_color.data, 16777215);
        __config.values = new Object();
        __config.values.category = new Object();
        __config.values.value = new Object();
        __config.values.category.frequency = com.amcharts.Utils.fitToBounds(com.amcharts.Utils.toNumber(__settings.values.category.frequency.data, 1), 1, Number.MAX_VALUE);
        __config.values.category.start_from = com.amcharts.Utils.toNumber(__settings.values.category.start_from.data, 1);
        __config.values.value.frequency = com.amcharts.Utils.fitToBounds(com.amcharts.Utils.toNumber(__settings.values.value.frequency.data, 1), 1, Number.MAX_VALUE);
        if (__settings.values.value.rotate.data == "true")
        {
            __config.values.value.rotate = 90;
        }
        else
        {
            __config.values.value.rotate = com.amcharts.Utils.toNumber(__settings.values.value.rotate.data, 0);
        } // end else if
        if (__settings.values.category.rotate.data == "true")
        {
            __config.values.category.rotate = 90;
        }
        else
        {
            __config.values.category.rotate = com.amcharts.Utils.toNumber(__settings.values.category.rotate.data, 0);
        } // end else if
        __config.values.category.enabled = com.amcharts.Utils.toBoolean(__settings.values.category.enabled.data, true);
        __config.values.value.enabled = com.amcharts.Utils.toBoolean(__settings.values.value.enabled.data, true);
        __config.values.value.reverse = com.amcharts.Utils.toBoolean(__settings.values.value.reverse.data, false);
        __config.values.value.skip_first = com.amcharts.Utils.toBoolean(__settings.values.value.skip_first.data, true);
        __config.values.value.skip_last = com.amcharts.Utils.toBoolean(__settings.values.value.skip_last.data, false);
        __config.values.category.color = com.amcharts.Utils.toColor(__settings.values.category.color.data, __config.text_color);
        __config.values.value.color = com.amcharts.Utils.toColor(__settings.values.value.color.data, __config.text_color);
        __config.values.category.text_size = com.amcharts.Utils.toNumber(__settings.values.category.text_size.data, __config.text_size);
        __config.values.value.text_size = com.amcharts.Utils.toNumber(__settings.values.value.text_size.data, __config.text_size);
        __config.values.value.min = Number(__settings.values.value.min.data);
        __config.values.value.max = Number(__settings.values.value.max.data);
        __config.values.value.unit = com.amcharts.Utils.checkUndefined(__settings.values.value.unit.data, "");
        __config.values.value.unit_position = __settings.values.value.unit_position.data.toLowerCase();
        if (__config.values.value.unit_position != "left" && __config.values.value.unit_position != "right")
        {
            __config.values.value.unit_position = "right";
        } // end if
        __config.values.value.integers_only = com.amcharts.Utils.toBoolean(__settings.values.value.integers_only.data, false);
        __config.values.value.strict_min_max = com.amcharts.Utils.toBoolean(__settings.values.value.strict_min_max.data, false);
        __config.values.value.inside = com.amcharts.Utils.toBoolean(__settings.values.value.inside.data, false);
        __config.values.category.inside = com.amcharts.Utils.toBoolean(__settings.values.category.inside.data, false);
        __config.values.value.duration = __settings.values.value.duration.data;
        __config.axes = new Object();
        __config.axes.category = new Object();
        __config.axes.value = new Object();
        __config.axes.category.alpha = com.amcharts.Utils.toNumber(__settings.axes.category.alpha.data, 100);
        __config.axes.category.color = com.amcharts.Utils.toColor(__settings.axes.category.color.data, 0);
        __config.axes.category.width = com.amcharts.Utils.toNumber(__settings.axes.category.width.data, 2);
        __config.axes.category.tick_length = com.amcharts.Utils.toNumber(__settings.axes.category.tick_length.data, 7);
        __config.axes.value.alpha = com.amcharts.Utils.toNumber(__settings.axes.value.alpha.data, 100);
        __config.axes.value.color = com.amcharts.Utils.toColor(__settings.axes.value.color.data, 0);
        __config.axes.value.width = com.amcharts.Utils.toNumber(__settings.axes.value.width.data, 2);
        __config.axes.value.tick_length = com.amcharts.Utils.toNumber(__settings.axes.value.tick_length.data, 7);
        __config.axes.value.logarithmic = com.amcharts.Utils.toBoolean(__settings.axes.value.logarithmic.data, false);
        __config.legend = new Object();
        __config.legend.enabled = com.amcharts.Utils.toBoolean(__settings.legend.enabled.data, true);
        __config.legend.x = __settings.legend.x.data;
        __config.legend.y = __settings.legend.y.data;
        __config.legend.width = __settings.legend.width.data;
        __config.legend.max_columns = com.amcharts.Utils.toNumber(__settings.legend.max_columns.data, 0);
        __config.legend.color = com.amcharts.Utils.toColor(__settings.legend.color.data, 16777215);
        __config.legend.alpha = com.amcharts.Utils.toNumber(__settings.legend.alpha.data, 0);
        __config.legend.border_color = com.amcharts.Utils.toColor(__settings.legend.border_color.data, 0);
        __config.legend.border_alpha = com.amcharts.Utils.toNumber(__settings.legend.border_alpha.data, 0);
        __config.legend.key = new Object();
        __config.legend.key.size = com.amcharts.Utils.toNumber(__settings.legend.key.size.data, 16);
        __config.legend.key.border_color = com.amcharts.Utils.toColor(__settings.legend.key.border_color.data);
        __config.legend.text_color = com.amcharts.Utils.toColor(__settings.legend.text_color.data, __config.text_color);
        __config.legend.text_size = com.amcharts.Utils.toNumber(__settings.legend.text_size.data, __config.text_size);
        __config.legend.spacing = com.amcharts.Utils.toNumber(__settings.legend.spacing.data, 10);
        __config.legend.margins = com.amcharts.Utils.toNumber(__settings.legend.margins.data, 0);
        __config.legend.align = com.amcharts.Utils.checkUndefined(__settings.legend.align.data, "left");
        __config.legend.reverse_order = com.amcharts.Utils.toBoolean(__settings.legend.reverse_order.data, false);
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
        __config.strings.logarithm_scale_error = com.amcharts.Utils.checkUndefined(__settings.strings.logarithm_scale_error.data, "Logarithmic chart can\'t display values less or equal zero");
        __config.strings.ss = com.amcharts.Utils.checkUndefined(__settings.strings.ss.data, " ");
        __config.strings.mm = com.amcharts.Utils.checkUndefined(__settings.strings.mm.data, ":");
        __config.strings.hh = com.amcharts.Utils.checkUndefined(__settings.strings.hh.data, ":");
        __config.strings.DD = com.amcharts.Utils.checkUndefined(__settings.strings.DD.data, "d. ");
        __settings.labels.label = com.amcharts.Utils.objectToArray(__settings.labels.label);
        __config.labels = new Object();
        __config.labels.label = new Array();
        for (var _loc6 = 0; _loc6 < __settings.labels.label.length; ++_loc6)
        {
            __config.labels.label[_loc6] = new Object();
            __config.labels.label[_loc6].lid = __settings.labels.label[_loc6].attributes.lid;
            __config.labels.label[_loc6].x = com.amcharts.Utils.checkUndefined(__settings.labels.label[_loc6].x.data, 0);
            __config.labels.label[_loc6].y = com.amcharts.Utils.checkUndefined(__settings.labels.label[_loc6].y.data, 0);
            __config.labels.label[_loc6].text = __settings.labels.label[_loc6].text.data;
            __config.labels.label[_loc6].align = __settings.labels.label[_loc6].align.data.toLowerCase();
            __config.labels.label[_loc6].rotate = com.amcharts.Utils.toBoolean(__settings.labels.label[_loc6].rotate.data);
            __config.labels.label[_loc6].width = __settings.labels.label[_loc6].width.data;
            __config.labels.label[_loc6].text_size = com.amcharts.Utils.toNumber(__settings.labels.label[_loc6].text_size.data, __config.text_size);
            __config.labels.label[_loc6].text_color = com.amcharts.Utils.toColor(__settings.labels.label[_loc6].text_color.data, __config.text_color);
        } // end of for
        __settings.graphs.graph = com.amcharts.Utils.objectToArray(__settings.graphs.graph);
        __config.graphs = new Object();
        __config.graphs.temp_graphs = new Array();
        __config.gids = new Array();
        __config.colors = com.amcharts.Utils.toColor(__settings.colors.data, [16737792, 16568834, 11591177, 888527, 2755792, 13438324, 13369344, 52224, 204, 14540253, 10066329, 3355443, 10027008]);
        for (var _loc6 = 0; _loc6 < __settings.graphs.graph.length; ++_loc6)
        {
            var _loc4 = __settings.graphs.graph[_loc6];
            var _loc3 = _loc4.attributes.gid;
            if (_loc3 == undefined)
            {
                _loc3 = _loc6;
            } // end if
            _loc3 = "key_" + _loc3;
            __config.gids[_loc6] = _loc3;
            __config.graphs.temp_graphs[_loc3] = new Object();
            __config.graphs.temp_graphs[_loc3].gid = _loc4.attributes.gid;
            var _loc5 = com.amcharts.Utils.checkUndefined(_loc4.type.data, "column");
            __config.graphs.temp_graphs[_loc3].type = com.amcharts.Utils.checkUndefined(_loc5, "column");
            __config.graphs.temp_graphs[_loc3].title = com.amcharts.Utils.checkUndefined(_loc4.title.data, "");
            __config.graphs.temp_graphs[_loc3].color = com.amcharts.Utils.toColor(_loc4.color.data, __config.colors[_loc6]);
            __config.graphs.temp_graphs[_loc3].alpha = com.amcharts.Utils.toNumber(_loc4.alpha.data, __config[_loc5].alpha);
            __config.graphs.temp_graphs[_loc3].fill_alpha = com.amcharts.Utils.toNumber(_loc4.fill_alpha.data, __config[_loc5].fill_alpha);
            __config.graphs.temp_graphs[_loc3].width = com.amcharts.Utils.toNumber(_loc4.width.data, __config[_loc5].width);
            __config.graphs.temp_graphs[_loc3].bullet = com.amcharts.Utils.checkUndefined(_loc4.bullet.data, __config[_loc5].bullet);
            __config.graphs.temp_graphs[_loc3].bullet_color = com.amcharts.Utils.toColor(_loc4.bullet_color.data, __config.graphs.temp_graphs[_loc3].color);
            __config.graphs.temp_graphs[_loc3].bullet_size = com.amcharts.Utils.toNumber(_loc4.bullet_size.data, __config[_loc5].bullet_size);
            __config.graphs.temp_graphs[_loc3].data_labels = com.amcharts.Utils.checkUndefined(_loc4.data_labels.data, __config[_loc5].data_labels);
            __config.graphs.temp_graphs[_loc3].gradient_fill_colors = com.amcharts.Utils.toColor(_loc4.gradient_fill_colors.data);
            __config.graphs.temp_graphs[_loc3].pattern = _loc4.pattern.data;
            __config.graphs.temp_graphs[_loc3].pattern_color = com.amcharts.Utils.toColor(_loc4.pattern_color.data);
            if (__config.column.gradient == "vertical")
            {
                __config.graphs.temp_graphs[_loc3].gradient_fill_colors.reverse();
            } // end if
            __config.graphs.temp_graphs[_loc3].balloon_color = com.amcharts.Utils.toColor(_loc4.balloon_color.data, __config.balloon.color);
            __config.graphs.temp_graphs[_loc3].balloon_alpha = com.amcharts.Utils.toNumber(_loc4.balloon_alpha.data, __config.balloon.alpha);
            __config.graphs.temp_graphs[_loc3].balloon_text_color = com.amcharts.Utils.toColor(_loc4.balloon_text_color.data, __config.balloon.text_color);
            __config.graphs.temp_graphs[_loc3].balloon_text = com.amcharts.Utils.checkUndefined(_loc4.balloon_text.data, __config[_loc5].balloon_text);
            __config.graphs.temp_graphs[_loc3].visible_in_legend = com.amcharts.Utils.toBoolean(_loc4.visible_in_legend.data, true);
        } // end of for
        __settings.guides.guide = com.amcharts.Utils.objectToArray(__settings.guides.guide);
        __config.guides = new Object();
        __config.guides.max_min = com.amcharts.Utils.toBoolean(__settings.guides.max_min.data, false);
        __config.guides.guide = new Array();
        for (var _loc6 = 0; _loc6 < __settings.guides.guide.length; ++_loc6)
        {
            __config.guides.guide[_loc6] = new Object();
            __config.guides.guide[_loc6].gid = __settings.guides.guide[_loc6].attributes.gid;
            __config.guides.guide[_loc6].behind = com.amcharts.Utils.toBoolean(__settings.guides.guide[_loc6].behind.data, false);
            __config.guides.guide[_loc6].start_value = com.amcharts.Utils.toNumber(__settings.guides.guide[_loc6].start_value.data);
            __config.guides.guide[_loc6].end_value = com.amcharts.Utils.toNumber(__settings.guides.guide[_loc6].end_value.data);
            __config.guides.guide[_loc6].title = com.amcharts.Utils.checkUndefined(__settings.guides.guide[_loc6].title.data, "");
            __config.guides.guide[_loc6].width = com.amcharts.Utils.toNumber(__settings.guides.guide[_loc6].width.data, 0);
            __config.guides.guide[_loc6].alpha = com.amcharts.Utils.toNumber(__settings.guides.guide[_loc6].alpha.data, 100);
            __config.guides.guide[_loc6].color = com.amcharts.Utils.toColor(__settings.guides.guide[_loc6].color.data, 0);
            __config.guides.guide[_loc6].fill_color = com.amcharts.Utils.toColor(__settings.guides.guide[_loc6].fill_color.data, __config.guides.guide[_loc6].color);
            __config.guides.guide[_loc6].fill_alpha = com.amcharts.Utils.toNumber(__settings.guides.guide[_loc6].fill_alpha.data, 0);
            __config.guides.guide[_loc6].rotate = com.amcharts.Utils.toNumber(__settings.guides.guide[_loc6].rotate.data, __config.values.value.rotate);
            __config.guides.guide[_loc6].text_size = com.amcharts.Utils.toNumber(__settings.guides.guide[_loc6].text_size.data, __config.values.value.text_size);
            __config.guides.guide[_loc6].text_color = com.amcharts.Utils.toColor(__settings.guides.guide[_loc6].text_color.data, __config.values.value.color);
            __config.guides.guide[_loc6].inside = com.amcharts.Utils.toBoolean(__settings.guides.guide[_loc6].inside.data, __config.values.value.inside);
            __config.guides.guide[_loc6].dashed = com.amcharts.Utils.toBoolean(__settings.guides.guide[_loc6].dashed.data, false);
            __config.guides.guide[_loc6].dash_length = com.amcharts.Utils.toNumber(__settings.guides.guide[_loc6].dash_length.data, 5);
            __config.guides.guide[_loc6].centered = com.amcharts.Utils.toBoolean(__settings.guides.guide[_loc6].centered.data, true);
        } // end of for
        __settings.plugins.plugin = com.amcharts.Utils.objectToArray(__settings.plugins.plugin);
        __config.plugins = __settings.plugins;
        __config.context_menu = new Object();
        __config.context_menu.default_items = new Object();
        __config.context_menu.default_items.print = com.amcharts.Utils.toBoolean(__settings.context_menu.default_items.print.data, true);
        __config.context_menu.default_items.zoom = com.amcharts.Utils.toBoolean(__settings.context_menu.default_items.zoom.data, false);
        __config.context_menu.menu = new Array();
        __settings.context_menu.menu = com.amcharts.Utils.objectToArray(__settings.context_menu.menu);
        for (var _loc6 = 0; _loc6 < __settings.context_menu.menu.length; ++_loc6)
        {
            __config.context_menu.menu[_loc6] = new Object();
            __config.context_menu.menu[_loc6].function_name = __settings.context_menu.menu[_loc6].attributes.function_name;
            __config.context_menu.menu[_loc6].title = __settings.context_menu.menu[_loc6].attributes.title;
        } // end of for
    } // End of the function
    function get obj()
    {
        return (__config);
    } // End of the function
} // End of Class
