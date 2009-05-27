class com.amcharts.line.Config
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
        __config.redraw = com.amcharts.Utils.toBoolean(__settings.redraw.data, false);
        __config.reload_data_interval = com.amcharts.Utils.toNumber(__settings.reload_data_interval.data, 0);
        __config.precision = com.amcharts.Utils.toNumber(__settings.precision.data, 2);
        __config.digits_after_decimal = com.amcharts.Utils.toNumber(__settings.digits_after_decimal.data, undefined);
        __config.add_time_stamp = com.amcharts.Utils.toBoolean(__settings.add_time_stamp.data, false);
        __config.export_image_file = __settings.export_image_file.data;
        __config.connect = com.amcharts.Utils.toBoolean(__settings.connect.data, false);
        __config.hide_bullets_count = com.amcharts.Utils.toNumber(__settings.hide_bullets_count.data, 0);
        __config.autofit = com.amcharts.Utils.toBoolean(__settings.autofit.data, true);
        __config.link_target = __settings.link_target.data;
        if (__config.link_target == undefined)
        {
            __config.link_target = "";
        } // end if
        __config.preloader_on_reload = com.amcharts.Utils.toBoolean(__settings.preloader_on_reload.data, false);
        __config.start_on_axis = com.amcharts.Utils.toBoolean(__settings.start_on_axis.data, true);
        __config.start_on_axis_real = __config.start_on_axis;
        __config.rescale_on_hide = com.amcharts.Utils.toBoolean(__settings.rescale_on_hide.data, true);
        __config.scientific_min = com.amcharts.Utils.toNumber(__settings.scientific_min.data, 1.000000E-006);
        __config.scientific_max = com.amcharts.Utils.toNumber(__settings.scientific_max.data, 1.000000E+015);
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
        __config.scroller = new Object();
        __config.scroller.enabled = com.amcharts.Utils.toBoolean(__settings.scroller.enabled.data, true);
        __config.scroller.y = __settings.scroller.y.data;
        __config.scroller.color = com.amcharts.Utils.toColor(__settings.scroller.color.data, 14342874);
        __config.scroller.bg_color = com.amcharts.Utils.toColor(__settings.scroller.bg_color.data, 15790320);
        __config.scroller.alpha = com.amcharts.Utils.toNumber(__settings.scroller.alpha.data, 100);
        __config.scroller.bg_alpha = com.amcharts.Utils.toNumber(__settings.scroller.bg_alpha.data, 100);
        __config.scroller.height = com.amcharts.Utils.toNumber(__settings.scroller.height.data, 10);
        __config.grid = new Object();
        __config.grid.x = new Object();
        __config.grid.x.enabled = com.amcharts.Utils.toBoolean(__settings.grid.x.enabled.data, true);
        __config.grid.x.color = com.amcharts.Utils.toColor(__settings.grid.x.color.data, 0);
        __config.grid.x.alpha = com.amcharts.Utils.toNumber(__settings.grid.x.alpha.data, 15);
        __config.grid.x.dashed = com.amcharts.Utils.toBoolean(__settings.grid.x.dashed.data, false);
        __config.grid.x.dash_length = com.amcharts.Utils.toNumber(__settings.grid.x.dash_length.data, 5);
        __config.grid.x.approx_count = com.amcharts.Utils.toNumber(__settings.grid.x.approx_count.data, 4);
        __config.grid.y_left = new Object();
        __config.grid.y_left.enabled = com.amcharts.Utils.toBoolean(__settings.grid.y_left.enabled.data, true);
        __config.grid.y_left.color = com.amcharts.Utils.toColor(__settings.grid.y_left.color.data, 0);
        __config.grid.y_left.alpha = com.amcharts.Utils.toNumber(__settings.grid.y_left.alpha.data, 15);
        __config.grid.y_left.dashed = com.amcharts.Utils.toBoolean(__settings.grid.y_left.dashed.data, false);
        __config.grid.y_left.dash_length = com.amcharts.Utils.toNumber(__settings.grid.y_left.dash_length.data, 5);
        __config.grid.y_left.approx_count = com.amcharts.Utils.toNumber(__settings.grid.y_left.approx_count.data, 10);
        __config.grid.y_left.fill_color = com.amcharts.Utils.toColor(__settings.grid.y_left.fill_color.data, 16777215);
        __config.grid.y_left.fill_alpha = com.amcharts.Utils.toNumber(__settings.grid.y_left.fill_alpha.data, 0);
        __config.grid.y_right = new Object();
        __config.grid.y_right.enabled = com.amcharts.Utils.toBoolean(__settings.grid.y_right.enabled.data, true);
        __config.grid.y_right.color = com.amcharts.Utils.toColor(__settings.grid.y_right.color.data, 0);
        __config.grid.y_right.alpha = com.amcharts.Utils.toNumber(__settings.grid.y_right.alpha.data, 15);
        __config.grid.y_right.dashed = com.amcharts.Utils.toBoolean(__settings.grid.y_right.dashed.data, false);
        __config.grid.y_right.dash_length = com.amcharts.Utils.toNumber(__settings.grid.y_right.dash_length.data, 5);
        __config.grid.y_right.approx_count = com.amcharts.Utils.toNumber(__settings.grid.y_right.approx_count.data, 10);
        __config.grid.y_right.fill_color = com.amcharts.Utils.toColor(__settings.grid.y_right.fill_color.data, 16777215);
        __config.grid.y_right.fill_alpha = com.amcharts.Utils.toNumber(__settings.grid.y_right.fill_alpha.data, 0);
        __config.values = new Object();
        __config.values.x = new Object();
        __config.values.x.enabled = com.amcharts.Utils.toBoolean(__settings.values.x.enabled.data, true);
        __config.values.x.frequency = com.amcharts.Utils.fitToBounds(com.amcharts.Utils.toNumber(__settings.values.x.frequency.data, 1), 1, Number.MAX_VALUE);
        if (__settings.values.x.rotate.data == "true")
        {
            __config.values.x.rotate = 90;
        }
        else
        {
            __config.values.x.rotate = com.amcharts.Utils.toNumber(__settings.values.x.rotate.data, 0);
        } // end else if
        __config.values.x.skip_first = com.amcharts.Utils.toBoolean(__settings.values.x.skip_first.data, false);
        __config.values.x.skip_last = com.amcharts.Utils.toBoolean(__settings.values.x.skip_last.data, false);
        __config.values.x.color = com.amcharts.Utils.toColor(__settings.values.x.color.data, __config.text_color);
        __config.values.x.text_size = com.amcharts.Utils.toNumber(__settings.values.x.text_size.data, __config.text_size);
        __config.values.x.inside = com.amcharts.Utils.toBoolean(__settings.values.x.inside.data, false);
        __config.values.y_left = new Object();
        __config.values.y_left.enabled = com.amcharts.Utils.toBoolean(__settings.values.y_left.enabled.data, true);
        if (__settings.values.y_left.rotate.data == "true")
        {
            __config.values.y_left.rotate = 90;
        }
        else
        {
            __config.values.y_left.rotate = com.amcharts.Utils.toNumber(__settings.values.y_left.rotate.data, 0);
        } // end else if
        __config.values.y_left.min = Number(__settings.values.y_left.min.data);
        __config.values.y_left.max = Number(__settings.values.y_left.max.data);
        __config.values.y_left.strict_min_max = com.amcharts.Utils.toBoolean(__settings.values.y_left.strict_min_max.data, false);
        __config.values.y_left.reverse = com.amcharts.Utils.toBoolean(__settings.values.y_left.reverse.data, false);
        __config.values.y_left.frequency = com.amcharts.Utils.fitToBounds(com.amcharts.Utils.toNumber(__settings.values.y_left.frequency.data, 1), 1, Number.MAX_VALUE);
        __config.values.y_left.skip_first = com.amcharts.Utils.toBoolean(__settings.values.y_left.skip_first.data, true);
        __config.values.y_left.skip_last = com.amcharts.Utils.toBoolean(__settings.values.y_left.skip_last.data, false);
        __config.values.y_left.color = com.amcharts.Utils.toColor(__settings.values.y_left.color.data, __config.text_color);
        __config.values.y_left.text_size = com.amcharts.Utils.toNumber(__settings.values.y_left.text_size.data, __config.text_size);
        __config.values.y_left.unit = com.amcharts.Utils.checkUndefined(__settings.values.y_left.unit.data, "");
        __config.values.y_left.unit_position = __settings.values.y_left.unit_position.data.toLowerCase();
        if (__config.values.y_left.unit_position != "left" && __config.values.y_left.unit_position != "right")
        {
            __config.values.y_left.unit_position = "right";
        } // end if
        __config.values.y_left.duration = __settings.values.y_left.duration.data;
        __config.values.y_left.integers_only = com.amcharts.Utils.toBoolean(__settings.values.y_left.integers_only.data, false);
        __config.values.y_left.inside = com.amcharts.Utils.toBoolean(__settings.values.y_left.inside.data, false);
        __config.values.y_right = new Object();
        __config.values.y_right.enabled = com.amcharts.Utils.toBoolean(__settings.values.y_right.enabled.data, true);
        if (__settings.values.y_right.rotate.data == "true")
        {
            __config.values.y_right.rotate = 90;
        }
        else
        {
            __config.values.y_right.rotate = com.amcharts.Utils.toNumber(__settings.values.y_right.rotate.data, 0);
        } // end else if
        __config.values.y_right.min = Number(__settings.values.y_right.min.data);
        __config.values.y_right.max = Number(__settings.values.y_right.max.data);
        __config.values.y_right.strict_min_max = com.amcharts.Utils.toBoolean(__settings.values.y_right.strict_min_max.data, false);
        __config.values.y_right.reverse = com.amcharts.Utils.toBoolean(__settings.values.y_right.reverse.data, false);
        __config.values.y_right.frequency = com.amcharts.Utils.fitToBounds(com.amcharts.Utils.toNumber(__settings.values.y_right.frequency.data, 1), 1, Number.MAX_VALUE);
        __config.values.y_right.skip_first = com.amcharts.Utils.toBoolean(__settings.values.y_right.skip_first.data, true);
        __config.values.y_right.skip_last = com.amcharts.Utils.toBoolean(__settings.values.y_right.skip_last.data, false);
        __config.values.y_right.color = com.amcharts.Utils.toColor(__settings.values.y_right.color.data, __config.text_color);
        __config.values.y_right.text_size = com.amcharts.Utils.toNumber(__settings.values.y_right.text_size.data, __config.text_size);
        __config.values.y_right.unit = com.amcharts.Utils.checkUndefined(__settings.values.y_right.unit.data, "");
        __config.values.y_right.unit_position = __settings.values.y_right.unit_position.data.toLowerCase();
        if (__config.values.y_right.unit_position != "left" && __config.values.y_right.unit_position != "right")
        {
            __config.values.y_right.unit_position = "right";
        } // end if
        __config.values.y_right.duration = __settings.values.y_right.duration.data;
        __config.values.y_right.integers_only = com.amcharts.Utils.toBoolean(__settings.values.y_right.integers_only.data, false);
        __config.values.y_right.inside = com.amcharts.Utils.toBoolean(__settings.values.y_right.inside.data, false);
        __config.axes = new Object();
        __config.axes.x = new Object();
        __config.axes.x.color = com.amcharts.Utils.toColor(__settings.axes.x.color.data, 0);
        __config.axes.x.alpha = com.amcharts.Utils.toNumber(__settings.axes.x.alpha.data, 100);
        __config.axes.x.width = com.amcharts.Utils.toNumber(__settings.axes.x.width.data, 2);
        __config.axes.x.tick_length = com.amcharts.Utils.toNumber(__settings.axes.x.tick_length.data, 7);
        __config.axes.y_left = new Object();
        __config.axes.y_left.color = com.amcharts.Utils.toColor(__settings.axes.y_left.color.data, 0);
        __config.axes.y_left.alpha = com.amcharts.Utils.toNumber(__settings.axes.y_left.alpha.data, 100);
        __config.axes.y_left.width = com.amcharts.Utils.toNumber(__settings.axes.y_left.width.data, 2);
        __config.axes.y_left.tick_length = com.amcharts.Utils.toNumber(__settings.axes.y_left.tick_length.data, 7);
        __config.axes.y_left.logarithmic = com.amcharts.Utils.toBoolean(__settings.axes.y_left.logarithmic.data, false);
        __config.axes.y_left.type = com.amcharts.Utils.checkUndefined(__settings.axes.y_left.type.data.toLowerCase(), __config.type);
        if (__config.axes.y_left.type != "line" && __config.axes.y_left.type != "stacked" && __config.axes.y_left.type != "100% stacked")
        {
            __config.axes.y_left.type = "line";
        } // end if
        __config.axes.y_right = new Object();
        __config.axes.y_right.color = com.amcharts.Utils.toColor(__settings.axes.y_right.color.data, 0);
        __config.axes.y_right.alpha = com.amcharts.Utils.toNumber(__settings.axes.y_right.alpha.data, 100);
        __config.axes.y_right.width = com.amcharts.Utils.toNumber(__settings.axes.y_right.width.data, 2);
        __config.axes.y_right.tick_length = com.amcharts.Utils.toNumber(__settings.axes.y_right.tick_length.data, 7);
        __config.axes.y_right.logarithmic = com.amcharts.Utils.toBoolean(__settings.axes.y_right.logarithmic.data, false);
        __config.axes.y_right.type = com.amcharts.Utils.checkUndefined(__settings.axes.y_right.type.data.toLowerCase(), __settings.type);
        if (__config.axes.y_right.type != "line" && __config.axes.y_right.type != "stacked" && __config.axes.y_right.type != "100% stacked")
        {
            __config.axes.y_right.type = "line";
        } // end if
        __config.indicator = new Object();
        __config.indicator.enabled = com.amcharts.Utils.toBoolean(__settings.indicator.enabled.data, true);
        __config.indicator.zoomable = com.amcharts.Utils.toBoolean(__settings.indicator.zoomable.data, true);
        __config.indicator.color = com.amcharts.Utils.toColor(__settings.indicator.color.data, 12303104);
        __config.indicator.line_alpha = com.amcharts.Utils.toNumber(__settings.indicator.line_alpha.data, 100);
        __config.indicator.selection_color = com.amcharts.Utils.toColor(__settings.indicator.selection_color.data, 12303104);
        __config.indicator.selection_alpha = com.amcharts.Utils.toNumber(__settings.indicator.selection_alpha.data, 25);
        __config.indicator.x_balloon_enabled = com.amcharts.Utils.toBoolean(__settings.indicator.x_balloon_enabled.data, true);
        __config.indicator.x_balloon_text_color = com.amcharts.Utils.toColor(__settings.indicator.x_balloon_text_color.data, __config.text_color);
        __config.balloon = new Object();
        __config.balloon.enabled = com.amcharts.Utils.toBoolean(__settings.balloon.enabled.data, true);
        __config.balloon.only_one = com.amcharts.Utils.toBoolean(com.amcharts.Utils.checkUndefined(__settings.balloon.only_one.data, __settings.indicator.one_y_balloon.data), false);
        __config.balloon.on_off = com.amcharts.Utils.toBoolean(com.amcharts.Utils.checkUndefined(__settings.balloon.on_off.data, __settings.indicator.y_balloon_on_off.data), true);
        __config.balloon.color = com.amcharts.Utils.toColor(__settings.balloon.color.data);
        __config.balloon.alpha = com.amcharts.Utils.toNumber(__settings.balloon.alpha.data);
        __config.balloon.text_color = com.amcharts.Utils.toColor(__settings.balloon.text_color.data, 16777215);
        __config.balloon.text_size = com.amcharts.Utils.toNumber(com.amcharts.Utils.checkUndefined(__settings.balloon.text_size.data, __settings.indicator.y_balloon_text_size.data), __config.text_size);
        __config.balloon.max_width = com.amcharts.Utils.toNumber(__settings.balloon.max_width.data);
        __config.balloon.corner_radius = com.amcharts.Utils.toNumber(__settings.balloon.corner_radius.data, 0);
        __config.balloon.border_width = com.amcharts.Utils.toNumber(__settings.balloon.border_width.data, 0);
        __config.balloon.border_alpha = com.amcharts.Utils.toNumber(__settings.balloon.border_alpha.data);
        __config.balloon.border_color = com.amcharts.Utils.toColor(__settings.balloon.border_color.data);
        if (__config.balloon.enabled == false)
        {
            __config.balloon.on_off = false;
        } // end if
        __config.legend = new Object();
        __config.legend.enabled = com.amcharts.Utils.toBoolean(__settings.legend.enabled.data, true);
        __config.legend.x = __settings.legend.x.data;
        __config.legend.y = __settings.legend.y.data;
        __config.legend.width = __settings.legend.width.data;
        __config.legend.color = com.amcharts.Utils.toColor(__settings.legend.color.data, 16777215);
        __config.legend.alpha = com.amcharts.Utils.toNumber(__settings.legend.alpha.data, 0);
        __config.legend.border_color = com.amcharts.Utils.toColor(__settings.legend.border_color.data, 0);
        __config.legend.border_alpha = com.amcharts.Utils.toNumber(__settings.legend.border_alpha.data, 0);
        __config.legend.text_color = com.amcharts.Utils.toColor(__settings.legend.text_color.data, __config.text_color);
        __config.legend.text_color_hover = com.amcharts.Utils.toColor(__settings.legend.text_color_hover.data, 12303104);
        __config.legend.text_size = com.amcharts.Utils.toNumber(__settings.legend.text_size.data, __config.text_size);
        __config.legend.spacing = com.amcharts.Utils.toNumber(__settings.legend.spacing.data, 10);
        __config.legend.margins = com.amcharts.Utils.toNumber(__settings.legend.margins.data, 0);
        __config.legend.align = com.amcharts.Utils.checkUndefined(__settings.legend.align.data, "left");
        __config.legend.graph_on_off = com.amcharts.Utils.toBoolean(__settings.legend.graph_on_off.data, true);
        __config.legend.reverse_order = com.amcharts.Utils.toBoolean(__settings.legend.reverse_order.data, false);
        __config.legend.values = new Object();
        __config.legend.values.enabled = com.amcharts.Utils.toBoolean(__settings.legend.values.enabled.data, false);
        __config.legend.values.width = com.amcharts.Utils.toNumber(__settings.legend.values.width.data, 80);
        var _loc6 = com.amcharts.Utils.checkUndefined(__settings.legend.values.unit.data, "");
        var _loc8 = com.amcharts.Utils.checkUndefined(__settings.legend.values.unit_position.data, "right");
        __config.legend.values.align = com.amcharts.Utils.checkUndefined(__settings.legend.values.align.data, "right");
        if (_loc8 == "left")
        {
            var _loc7 = _loc6 + "{value}";
        }
        else
        {
            _loc7 = "{value}" + _loc6;
        } // end else if
        __config.legend.values.text = com.amcharts.Utils.checkUndefined(__settings.legend.values.text.data, _loc7);
        __config.legend.max_columns = com.amcharts.Utils.toNumber(__settings.legend.max_columns.data, 0);
        __config.legend.key = new Object();
        __config.legend.key.size = com.amcharts.Utils.toNumber(__settings.legend.key.size.data, 16);
        __config.legend.key.border_color = com.amcharts.Utils.toColor(__settings.legend.key.border_color.data);
        __config.legend.key.key_mark_color = com.amcharts.Utils.toColor(__settings.legend.key.key_mark_color.data, 16777215);
        __config.zoom_out_button = new Object();
        __config.zoom_out_button.x = __settings.zoom_out_button.x.data;
        __config.zoom_out_button.y = __settings.zoom_out_button.y.data;
        __config.zoom_out_button.color = com.amcharts.Utils.toColor(__settings.zoom_out_button.color.data, 12303104);
        __config.zoom_out_button.alpha = com.amcharts.Utils.toNumber(__settings.zoom_out_button.alpha.data, 0);
        __config.zoom_out_button.text_color = com.amcharts.Utils.toColor(__settings.zoom_out_button.text_color.data, __config.text_color);
        __config.zoom_out_button.text_color_hover = com.amcharts.Utils.toColor(__settings.zoom_out_button.text_color_hover.data, 12303104);
        __config.zoom_out_button.text_size = com.amcharts.Utils.toNumber(__settings.zoom_out_button.text_size.data, __config.text_size);
        __config.zoom_out_button.text = com.amcharts.Utils.checkUndefined(__settings.zoom_out_button.text.data, "Show all");
        __config.help = new Object();
        __config.help.button = new Object();
        __config.help.button.x = __settings.help.button.x.data;
        __config.help.button.y = __settings.help.button.y.data;
        __config.help.button.color = com.amcharts.Utils.toColor(__settings.help.button.color.data, 0);
        __config.help.button.alpha = com.amcharts.Utils.toNumber(__settings.help.button.alpha.data, 100);
        __config.help.button.text_color = com.amcharts.Utils.toColor(__settings.help.button.text_color.data, 16777215);
        __config.help.button.text_color_hover = com.amcharts.Utils.toColor(__settings.help.button.text_color_hover.data, 12303104);
        __config.help.button.text_size = com.amcharts.Utils.toNumber(__settings.help.button.text_size.data, __config.text_size);
        __config.help.button.text = com.amcharts.Utils.checkUndefined(__settings.help.button.text.data, "?");
        __config.help.balloon = new Object();
        __config.help.balloon.color = com.amcharts.Utils.toColor(__settings.help.balloon.color.data, 0);
        __config.help.balloon.alpha = com.amcharts.Utils.toNumber(__settings.help.balloon.alpha.data, 100);
        __config.help.balloon.width = com.amcharts.Utils.toNumber(__settings.help.balloon.width.data, 300);
        __config.help.balloon.text_color = com.amcharts.Utils.toColor(__settings.help.balloon.text_color.data, 16777215);
        __config.help.balloon.text_size = com.amcharts.Utils.toNumber(__settings.help.balloon.text_size.data, __config.text_size);
        __config.help.balloon.text = __settings.help.balloon.text.data;
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
        __config.strings.error_in_data_file = com.amcharts.Utils.checkUndefined(__settings.strings.error_in_data_file.data, "Error in data file");
        __config.strings.collecting_data = com.amcharts.Utils.checkUndefined(__settings.strings.collecting_data.data, "Collecting data");
        __config.strings.wrong_zoom_value = com.amcharts.Utils.checkUndefined(__settings.strings.wrong_zoom_value.data, "Incorrect values");
        __config.strings.logarithm_scale_error = com.amcharts.Utils.checkUndefined(__settings.strings.logarithm_scale_error.data, "Logarithmic chart can\'t display values less or equal zero");
        __config.strings.ss = com.amcharts.Utils.checkUndefined(__settings.strings.ss.data, " ");
        __config.strings.mm = com.amcharts.Utils.checkUndefined(__settings.strings.mm.data, ":");
        __config.strings.hh = com.amcharts.Utils.checkUndefined(__settings.strings.hh.data, ":");
        __config.strings.DD = com.amcharts.Utils.checkUndefined(__settings.strings.DD.data, "d. ");
        __config.vertical_lines = new Object();
        __config.vertical_lines.width = com.amcharts.Utils.toNumber(__settings.vertical_lines.width.data, 0);
        __config.vertical_lines.alpha = com.amcharts.Utils.toNumber(__settings.vertical_lines.alpha.data, 100);
        __config.vertical_lines.clustered = com.amcharts.Utils.toBoolean(__settings.vertical_lines.clustered.data, false);
        __config.vertical_lines.mask = com.amcharts.Utils.toBoolean(__settings.vertical_lines.mask.data, true);
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
        __settings.guides.guide = com.amcharts.Utils.objectToArray(__settings.guides.guide);
        __config.guides = new Object();
        __config.guides.max_min = com.amcharts.Utils.toBoolean(__settings.guides.max_min.data, false);
        __config.guides.guide = new Array();
        for (var _loc5 = 0; _loc5 < __settings.guides.guide.length; ++_loc5)
        {
            __config.guides.guide[_loc5] = new Object();
            __config.guides.guide[_loc5].gid = __settings.guides.guide[_loc5].attributes.gid;
            __config.guides.guide[_loc5].axis = com.amcharts.Utils.checkUndefined(__settings.guides.guide[_loc5].axis.data, "left");
            __config.guides.guide[_loc5].start_value = com.amcharts.Utils.toNumber(__settings.guides.guide[_loc5].start_value.data);
            __config.guides.guide[_loc5].end_value = com.amcharts.Utils.toNumber(__settings.guides.guide[_loc5].end_value.data);
            __config.guides.guide[_loc5].title = com.amcharts.Utils.checkUndefined(__settings.guides.guide[_loc5].title.data, "");
            __config.guides.guide[_loc5].width = com.amcharts.Utils.toNumber(__settings.guides.guide[_loc5].width.data, 0);
            __config.guides.guide[_loc5].alpha = com.amcharts.Utils.toNumber(__settings.guides.guide[_loc5].alpha.data, 100);
            __config.guides.guide[_loc5].color = com.amcharts.Utils.toColor(__settings.guides.guide[_loc5].color.data, 0);
            __config.guides.guide[_loc5].fill_color = com.amcharts.Utils.toColor(__settings.guides.guide[_loc5].fill_color.data, __config.guides.guide[_loc5].color);
            __config.guides.guide[_loc5].fill_alpha = com.amcharts.Utils.toNumber(__settings.guides.guide[_loc5].fill_alpha.data, 0);
            __config.guides.guide[_loc5].rotate = com.amcharts.Utils.toNumber(__settings.guides.guide[_loc5].rotate.data, __config.values["y_" + __config.guides.guide[_loc5].axis].rotate);
            __config.guides.guide[_loc5].text_size = com.amcharts.Utils.toNumber(__settings.guides.guide[_loc5].text_size.data, __config.values["y_" + __config.guides.guide[_loc5].axis].text_size);
            __config.guides.guide[_loc5].text_color = com.amcharts.Utils.toColor(__settings.guides.guide[_loc5].text_color.data, __config.values["y_" + __config.guides.guide[_loc5].axis].color);
            __config.guides.guide[_loc5].inside = com.amcharts.Utils.toBoolean(__settings.guides.guide[_loc5].inside.data, __config.values["y_" + __config.guides.guide[_loc5].axis].inside);
            __config.guides.guide[_loc5].dashed = com.amcharts.Utils.toBoolean(__settings.guides.guide[_loc5].dashed.data, false);
            __config.guides.guide[_loc5].dash_length = com.amcharts.Utils.toNumber(__settings.guides.guide[_loc5].dash_length.data, 5);
            __config.guides.guide[_loc5].centered = com.amcharts.Utils.toBoolean(__settings.guides.guide[_loc5].centered.data, true);
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
            __config.graphs.temp_graphs[_loc3].axis = com.amcharts.Utils.checkUndefined(_loc4.axis.data, "left").toLowerCase();
            if (__config.graphs.temp_graphs[_loc3].axis != "left" && __config.graphs.temp_graphs[_loc3].axis != "right")
            {
                __config.graphs.temp_graphs[_loc3].axis = "left";
            } // end if
            __config.graphs.temp_graphs[_loc3].title = com.amcharts.Utils.checkUndefined(_loc4.title.data, "");
            __config.graphs.temp_graphs[_loc3].color = com.amcharts.Utils.toColor(_loc4.color.data, __config.colors[_loc5]);
            __config.graphs.temp_graphs[_loc3].color_hover = com.amcharts.Utils.toColor(_loc4.color_hover.data, 12303104);
            __config.graphs.temp_graphs[_loc3].line_alpha = com.amcharts.Utils.toNumber(_loc4.line_alpha.data, 100);
            __config.graphs.temp_graphs[_loc3].line_width = com.amcharts.Utils.toNumber(_loc4.line_width.data, 0);
            __config.graphs.temp_graphs[_loc3].fill_alpha = com.amcharts.Utils.toNumber(_loc4.fill_alpha.data, 0);
            __config.graphs.temp_graphs[_loc3].fill_color = com.amcharts.Utils.toColor(_loc4.fill_color.data, __config.graphs.temp_graphs[_loc3].color);
            __config.graphs.temp_graphs[_loc3].balloon_color = com.amcharts.Utils.toColor(_loc4.balloon_color.data, com.amcharts.Utils.checkUndefined(__config.balloon.color, __config.graphs.temp_graphs[_loc3].color));
            __config.graphs.temp_graphs[_loc3].balloon_alpha = com.amcharts.Utils.toNumber(_loc4.balloon_alpha.data, com.amcharts.Utils.checkUndefined(__config.balloon.alpha, 100));
            __config.graphs.temp_graphs[_loc3].balloon_text_color = com.amcharts.Utils.toColor(_loc4.balloon_text_color.data, com.amcharts.Utils.checkUndefined(__config.balloon.text_color, 16777215));
            __config.graphs.temp_graphs[_loc3].bullet = _loc4.bullet.data;
            __config.graphs.temp_graphs[_loc3].bullet_color = com.amcharts.Utils.toColor(_loc4.bullet_color.data, __config.graphs.temp_graphs[_loc3].color);
            __config.graphs.temp_graphs[_loc3].bullet_size = com.amcharts.Utils.toNumber(_loc4.bullet_size.data, 8);
            __config.graphs.temp_graphs[_loc3].bullet_alpha = com.amcharts.Utils.toNumber(_loc4.bullet_alpha.data, __config.graphs.temp_graphs[_loc3].line_alpha);
            __config.graphs.temp_graphs[_loc3].unit = _loc4.unit.data;
            __config.graphs.temp_graphs[_loc3].unit_position = com.amcharts.Utils.checkUndefined(_loc4.unit_position.data, "right");
            __config.graphs.temp_graphs[_loc3].balloon_text = _loc4.balloon_text.data;
            __config.graphs.temp_graphs[_loc3].data_labels = _loc4.data_labels.data;
            __config.graphs.temp_graphs[_loc3].data_labels_text_size = com.amcharts.Utils.toNumber(_loc4.data_labels_text_size.data, __config.text_size);
            __config.graphs.temp_graphs[_loc3].data_labels_text_color = com.amcharts.Utils.toColor(_loc4.data_labels_text_color.data, __config.text_color);
            __config.graphs.temp_graphs[_loc3].data_labels_position = com.amcharts.Utils.checkUndefined(_loc4.data_labels_position.data, "above");
            __config.graphs.temp_graphs[_loc3].hidden = com.amcharts.Utils.toBoolean(_loc4.hidden.data, false);
            __config.graphs.temp_graphs[_loc3].selected = com.amcharts.Utils.toBoolean(_loc4.selected.data, true);
            __config.graphs.temp_graphs[_loc3].vertical_lines = com.amcharts.Utils.toBoolean(_loc4.vertical_lines.data, false);
            __config.graphs.temp_graphs[_loc3].visible_in_legend = com.amcharts.Utils.toBoolean(_loc4.visible_in_legend.data, true);
            __config.graphs.temp_graphs[_loc3].clickable_bullets = com.amcharts.Utils.toBoolean(_loc4.clickable_bullets.data, false);
        } // end of for
        __settings.plugins.plugin = com.amcharts.Utils.objectToArray(__settings.plugins.plugin);
        __config.plugins = __settings.plugins;
        __config.old_hidden = new Array();
        __config.old_selected = new Array();
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
    } // End of the function
    function get obj()
    {
        return (__config);
    } // End of the function
} // End of Class
