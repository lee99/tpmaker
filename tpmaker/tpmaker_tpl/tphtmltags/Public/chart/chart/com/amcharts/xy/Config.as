class com.amcharts.xy.Config
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
        __config.period_duration = new Object();
        __config.period_duration.ss = 1000;
        __config.period_duration.mm = 60000;
        __config.period_duration["5mm"] = 300000;
        __config.period_duration["10mm"] = 600000;
        __config.period_duration["15mm"] = 900000;
        __config.period_duration["30mm"] = 1800000;
        __config.period_duration.hh = 3600000;
        __config.period_duration["6hh"] = 21600000;
        __config.period_duration["12hh"] = 43200000;
        __config.period_duration.DD = 86400000;
        __config.period_duration.WW = 604800000;
        __config.period_duration.MM = 2.629744E+009;
        __config.period_duration["3MM"] = 7.889231E+009;
        __config.period_duration["6MM"] = 1.577846E+010;
        __config.period_duration.YYYY = 3.155693E+010;
        __config.period_duration["5YYYY"] = 1.577846E+011;
        __config.period_duration["10YYYY"] = 3.155693E+011;
        __config.period_duration["50YYYY"] = 1.577846E+012;
        __config.period_duration["100YYYY"] = 3.155693E+012;
        __config.period_array = ["ss", "mm", "5mm", "10mm", "15mm", "30mm", "hh", "6hh", "12hh", "DD", "WW", "MM", "3MM", "6MM", "YYYY", "5YYYY", "10YYYY", "50YYYY", "100YYYY"];
        __config.js_enabled = com.amcharts.Utils.toBoolean(__settings.js_enabled.data, true);
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
        __config.scientific_min = com.amcharts.Utils.toNumber(__settings.scientific_min.data, 1.000000E-006);
        __config.scientific_max = com.amcharts.Utils.toNumber(__settings.scientific_max.data, 1.000000E+015);
        __config.digits_after_decimal = Math.abs(com.amcharts.Utils.toNumber(__settings.digits_after_decimal.data, undefined));
        __config.preloader_on_reload = com.amcharts.Utils.toBoolean(__settings.preloader_on_reload.data, false);
        __config.mask = com.amcharts.Utils.toBoolean(__settings.mask.data, true);
        __config.data_type = __settings.data_type.data.toLowerCase();
        if (__config.data_type != "xml" && __config.data_type != "csv")
        {
            __config.data_type = "xml";
        } // end if
        __config.reload_data_interval = com.amcharts.Utils.toNumber(__settings.reload_data_interval.data, 0);
        __config.add_time_stamp = com.amcharts.Utils.toBoolean(__settings.add_time_stamp.data, false);
        __config.depth = Math.abs(com.amcharts.Utils.toNumber(__settings.depth.data, 0));
        __config.angle = com.amcharts.Utils.fitToBounds(com.amcharts.Utils.toNumber(__settings.angle.data, 30), 0, 90);
        __config.precision = Math.abs(com.amcharts.Utils.toNumber(__settings.precision.data, 2));
        __config.export_image_file = __settings.export_image_file.data;
        __config.balloon = new Object();
        __config.balloon.enabled = com.amcharts.Utils.toBoolean(__settings.balloon.enabled.data, true);
        __config.balloon.color = com.amcharts.Utils.toColor(__settings.balloon.color.data);
        __config.balloon.alpha = com.amcharts.Utils.toNumber(__settings.balloon.alpha.data, 100);
        __config.balloon.text_color = com.amcharts.Utils.toColor(__settings.balloon.text_color.data, 16777215);
        __config.balloon.text_size = com.amcharts.Utils.toNumber(__settings.balloon.text_size.data, __config.text_size);
        __config.balloon.max_width = com.amcharts.Utils.toNumber(__settings.balloon.max_width.data, 220);
        __config.balloon.corner_radius = com.amcharts.Utils.toNumber(__settings.balloon.corner_radius.data, 0);
        __config.balloon.border_width = com.amcharts.Utils.toNumber(__settings.balloon.border_width.data, 0);
        __config.balloon.border_alpha = com.amcharts.Utils.toNumber(__settings.balloon.border_alpha.data, __config.balloon.alpha);
        __config.balloon.border_color = com.amcharts.Utils.toColor(__settings.balloon.border_color.data, __config.balloon.color);
        __config.link_target = __settings.link_target.data;
        if (__config.link_target == undefined)
        {
            __config.link_target = "";
        } // end if
        __config.csv_separator = com.amcharts.Utils.checkUndefined(__settings.csv_separator.data, ";");
        __config.skip_rows = com.amcharts.Utils.toNumber(__settings.skip_rows.data, 0);
        __config.redraw = com.amcharts.Utils.toBoolean(__settings.redraw.data, false);
        __config.plot_area = new Object();
        __config.plot_area.color = com.amcharts.Utils.toColor(__settings.plot_area.color.data, 16777215);
        __config.plot_area.alpha = com.amcharts.Utils.toNumber(__settings.plot_area.alpha.data, 0);
        __config.plot_area.border_color = com.amcharts.Utils.toColor(__settings.plot_area.border_color.data, 0);
        __config.plot_area.border_alpha = com.amcharts.Utils.toNumber(__settings.plot_area.border_alpha.data, 0);
        __config.background = new Object();
        __config.background.color = com.amcharts.Utils.toColor(__settings.background.color.data, 16777215);
        __config.background.alpha = com.amcharts.Utils.toNumber(__settings.background.alpha.data, 0);
        __config.background.file = __settings.background.file.data;
        __config.background.border_color = com.amcharts.Utils.toColor(__settings.background.border_color.data, 0);
        __config.background.border_alpha = com.amcharts.Utils.toNumber(__settings.background.border_alpha.data, 0);
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
        __config.grid.x = new Object();
        __config.grid.x.approx_count = com.amcharts.Utils.toNumber(__settings.grid.x.approx_count.data, 10);
        __config.grid.x.dashed = com.amcharts.Utils.toBoolean(__settings.grid.x.dashed.data, false);
        __config.grid.x.dash_length = com.amcharts.Utils.toNumber(__settings.grid.x.dash_length.data, 5);
        __config.grid.x.alpha = com.amcharts.Utils.toNumber(__settings.grid.x.alpha.data, 15);
        __config.grid.x.color = com.amcharts.Utils.toColor(__settings.grid.x.color.data, 0);
        __config.grid.x.fill_alpha = com.amcharts.Utils.toNumber(__settings.grid.x.fill_alpha.data, 0);
        __config.grid.x.fill_color = com.amcharts.Utils.toColor(__settings.grid.x.fill_color.data, 16777215);
        __config.grid.y = new Object();
        __config.grid.y.approx_count = com.amcharts.Utils.toNumber(__settings.grid.y.approx_count.data, 10);
        __config.grid.y.dashed = com.amcharts.Utils.toBoolean(__settings.grid.y.dashed.data, false);
        __config.grid.y.dash_length = com.amcharts.Utils.toNumber(__settings.grid.y.dash_length.data, 5);
        __config.grid.y.alpha = com.amcharts.Utils.toNumber(__settings.grid.y.alpha.data, 15);
        __config.grid.y.color = com.amcharts.Utils.toColor(__settings.grid.y.color.data, 0);
        __config.grid.y.fill_alpha = com.amcharts.Utils.toNumber(__settings.grid.y.fill_alpha.data, 0);
        __config.grid.y.fill_color = com.amcharts.Utils.toColor(__settings.grid.y.fill_color.data, 16777215);
        __config.date_formats = new Object();
        __config.date_formats.date_input = com.amcharts.Utils.checkUndefined(__settings.date_formats.date_input.data, "YYYY-MM-DD hh:mm:ss");
        __config.date_formats.duration_input = com.amcharts.Utils.checkUndefined(__settings.date_formats.duration_input.data, "ss");
        __config.date_formats.axis_values = new Object();
        __config.date_formats.axis_values.ss = new Object();
        __config.date_formats.axis_values.ss.first = com.amcharts.Utils.checkUndefined(__settings.date_formats.axis_values.ss.attributes.first, "month DD, YYYY");
        __config.date_formats.axis_values.ss.regular = com.amcharts.Utils.checkUndefined(__settings.date_formats.axis_values.ss.attributes.regular, "hh:mm:ss");
        __config.date_formats.axis_values.mm = new Object();
        __config.date_formats.axis_values.mm.first = com.amcharts.Utils.checkUndefined(__settings.date_formats.axis_values.mm.attributes.first, "month DD, YYYY");
        __config.date_formats.axis_values.mm.regular = com.amcharts.Utils.checkUndefined(__settings.date_formats.axis_values.mm.attributes.regular, "hh:mm");
        __config.date_formats.axis_values.hh = new Object();
        __config.date_formats.axis_values.hh.first = com.amcharts.Utils.checkUndefined(__settings.date_formats.axis_values.hh.attributes.first, "month DD, YYYY");
        __config.date_formats.axis_values.hh.regular = com.amcharts.Utils.checkUndefined(__settings.date_formats.axis_values.hh.attributes.regular, "hh:mm");
        __config.date_formats.axis_values.DD = new Object();
        __config.date_formats.axis_values.DD.first = com.amcharts.Utils.checkUndefined(__settings.date_formats.axis_values.DD.attributes.first, "month DD, YYYY");
        __config.date_formats.axis_values.DD.regular = com.amcharts.Utils.checkUndefined(__settings.date_formats.axis_values.DD.attributes.regular, "month DD");
        __config.date_formats.axis_values.MM = new Object();
        __config.date_formats.axis_values.MM.first = com.amcharts.Utils.checkUndefined(__settings.date_formats.axis_values.MM.attributes.first, "month, YYYY");
        __config.date_formats.axis_values.MM.regular = com.amcharts.Utils.checkUndefined(__settings.date_formats.axis_values.MM.attributes.regular, "month");
        __config.date_formats.axis_values.YYYY = new Object();
        __config.date_formats.axis_values.YYYY.first = com.amcharts.Utils.checkUndefined(__settings.date_formats.axis_values.YYYY.attributes.first, "YYYY");
        __config.date_formats.axis_values.YYYY.regular = com.amcharts.Utils.checkUndefined(__settings.date_formats.axis_values.YYYY.attributes.regular, "YYYY");
        __config.date_formats.balloon = com.amcharts.Utils.checkUndefined(__settings.date_formats.balloon.data, "month DD, YYYY");
        __config.date_formats.data_labels = com.amcharts.Utils.checkUndefined(__settings.date_formats.data_labels.data, "month DD, YYYY");
        __config.values = new Object();
        __config.values.x = new Object();
        __config.values.y = new Object();
        __config.values.x.frequency = com.amcharts.Utils.fitToBounds(com.amcharts.Utils.toNumber(__settings.values.x.frequency.data, 1), 1, Number.MAX_VALUE);
        __config.values.y.frequency = com.amcharts.Utils.fitToBounds(com.amcharts.Utils.toNumber(__settings.values.y.frequency.data, 1), 1, Number.MAX_VALUE);
        __config.values.y.rotate = com.amcharts.Utils.toBoolean(__settings.values.y.rotate.data, false);
        if (__settings.values.y.rotate.data == "true")
        {
            __config.values.y.rotate = 90;
        }
        else
        {
            __config.values.y.rotate = com.amcharts.Utils.toNumber(__settings.values.y.rotate.data, 0);
        } // end else if
        if (__settings.values.x.rotate.data == "true")
        {
            __config.values.x.rotate = 90;
        }
        else
        {
            __config.values.x.rotate = com.amcharts.Utils.toNumber(__settings.values.x.rotate.data, 0);
        } // end else if
        __config.values.y.reverse = com.amcharts.Utils.toBoolean(__settings.values.y.reverse.data, false);
        __config.values.x.reverse = com.amcharts.Utils.toBoolean(__settings.values.x.reverse.data, false);
        __config.values.x.strict_min_max = com.amcharts.Utils.toBoolean(__settings.values.x.strict_min_max.data, false);
        __config.values.y.strict_min_max = com.amcharts.Utils.toBoolean(__settings.values.y.strict_min_max.data, false);
        __config.values.x.enabled = com.amcharts.Utils.toBoolean(__settings.values.x.enabled.data, true);
        __config.values.y.enabled = com.amcharts.Utils.toBoolean(__settings.values.y.enabled.data, true);
        __config.bullets = new Object();
        __config.bullets.hover_brightness = com.amcharts.Utils.toNumber(__settings.bullets.hover_brightness.data, 0);
        __config.bullets.grow_time = com.amcharts.Utils.toNumber(__settings.bullets.grow_time.data, 0);
        __config.bullets.min_size = com.amcharts.Utils.toNumber(__settings.bullets.min_size.data, 0);
        __config.bullets.max_size = com.amcharts.Utils.toNumber(__settings.bullets.max_size.data, 50);
        __config.bullets.sequenced_grow = com.amcharts.Utils.toBoolean(__settings.bullets.sequenced_grow.data, false);
        __config.bullets.grow_effect = __settings.bullets.grow_effect.data.toLowerCase();
        if (__config.bullets.grow_effect == "regular")
        {
            __config.bullets.grow_effect = mx.transitions.easing.Regular.easeOut;
        }
        else if (__config.bullets.grow_effect == "strong")
        {
            __config.bullets.grow_effect = mx.transitions.easing.Strong.easeOut;
        }
        else
        {
            __config.bullets.grow_effect = mx.transitions.easing.Elastic.easeOut;
        } // end else if
        __config.values.x.type = com.amcharts.Utils.checkUndefined(__settings.values.x.type.data, "number");
        __config.values.y.type = com.amcharts.Utils.checkUndefined(__settings.values.y.type.data, "number");
        __config.values.x.skip_first = com.amcharts.Utils.toBoolean(__settings.values.x.skip_first.data, true);
        __config.values.x.skip_last = com.amcharts.Utils.toBoolean(__settings.values.x.skip_last.data, false);
        __config.values.y.skip_first = com.amcharts.Utils.toBoolean(__settings.values.y.skip_first.data, true);
        __config.values.y.skip_last = com.amcharts.Utils.toBoolean(__settings.values.y.skip_last.data, false);
        __config.values.x.color = com.amcharts.Utils.toColor(__settings.values.x.color.data, __config.text_color);
        __config.values.y.color = com.amcharts.Utils.toColor(__settings.values.y.color.data, __config.text_color);
        __config.values.x.text_size = com.amcharts.Utils.toNumber(__settings.values.x.text_size.data, __config.text_size);
        __config.values.y.text_size = com.amcharts.Utils.toNumber(__settings.values.y.text_size.data, __config.text_size);
        if (__config.values.x.type == "date")
        {
            if (__settings.values.x.min.data != undefined)
            {
                __config.values.x.min = com.amcharts.Dates.stringToDate(__config.date_formats.date_input, __settings.values.x.min.data).getTime();
            } // end if
            if (__settings.values.x.max.data != undefined)
            {
                __config.values.x.max = com.amcharts.Dates.stringToDate(__config.date_formats.date_input, __settings.values.x.max.data).getTime();
            } // end if
        }
        else
        {
            __config.values.x.min = Number(__settings.values.x.min.data);
            __config.values.x.max = Number(__settings.values.x.max.data);
        } // end else if
        if (__config.values.y.type == "date")
        {
            if (__settings.values.y.min.data != undefined)
            {
                __config.values.y.min = com.amcharts.Dates.stringToDate(__config.date_formats.date_input, __settings.values.y.min.data).getTime();
            } // end if
            if (__settings.values.y.max.data != undefined)
            {
                __config.values.y.max = com.amcharts.Dates.stringToDate(__config.date_formats.date_input, __settings.values.y.max.data).getTime();
            } // end if
        }
        else
        {
            __config.values.y.min = Number(__settings.values.y.min.data);
            __config.values.y.max = Number(__settings.values.y.max.data);
        } // end else if
        __config.values.y.unit = com.amcharts.Utils.checkUndefined(__settings.values.y.unit.data, "");
        __config.values.y.unit_position = __settings.values.y.unit_position.data.toLowerCase();
        if (__config.values.y.unit_position != "left" && __config.values.y.unit_position != "right")
        {
            __config.values.y.unit_position = "right";
        } // end if
        __config.values.x.unit = com.amcharts.Utils.checkUndefined(__settings.values.x.unit.data, "");
        __config.values.x.unit_position = __settings.values.x.unit_position.data.toLowerCase();
        if (__config.values.x.unit_position != "left" && __config.values.x.unit_position != "right")
        {
            __config.values.x.unit_position = "right";
        } // end if
        __config.values.x.integers_only = com.amcharts.Utils.toBoolean(__settings.values.x.integers_only.data, false);
        __config.values.y.integers_only = com.amcharts.Utils.toBoolean(__settings.values.y.integers_only.data, false);
        __config.values.x.inside = com.amcharts.Utils.toBoolean(__settings.values.x.inside.data, false);
        __config.values.y.inside = com.amcharts.Utils.toBoolean(__settings.values.y.inside.data, false);
        __config.axes = new Object();
        __config.axes.x = new Object();
        __config.axes.y = new Object();
        __config.axes.x.alpha = com.amcharts.Utils.toNumber(__settings.axes.x.alpha.data, 100);
        __config.axes.x.color = com.amcharts.Utils.toColor(__settings.axes.x.color.data, 0);
        __config.axes.x.width = com.amcharts.Utils.toNumber(__settings.axes.x.width.data, 2);
        __config.axes.x.tick_length = com.amcharts.Utils.toNumber(__settings.axes.x.tick_length.data, 7);
        __config.axes.x.logarithmic = com.amcharts.Utils.toBoolean(__settings.axes.x.logarithmic.data, false);
        if (__config.values.x.type == "date")
        {
            __config.axes.x.logarithmic = false;
        } // end if
        __config.axes.y.alpha = com.amcharts.Utils.toNumber(__settings.axes.y.alpha.data, 100);
        __config.axes.y.color = com.amcharts.Utils.toColor(__settings.axes.y.color.data, 0);
        __config.axes.y.width = com.amcharts.Utils.toNumber(__settings.axes.y.width.data, 2);
        __config.axes.y.tick_length = com.amcharts.Utils.toNumber(__settings.axes.y.tick_length.data, 7);
        __config.axes.y.logarithmic = com.amcharts.Utils.toBoolean(__settings.axes.y.logarithmic.data, false);
        if (__config.values.y.type == "date")
        {
            __config.axes.y.logarithmic = false;
        } // end if
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
        __config.strings.months = new Array();
        __config.strings.months[1] = com.amcharts.Utils.checkUndefined(__settings.strings.months.month1.data, "Jan");
        __config.strings.months[2] = com.amcharts.Utils.checkUndefined(__settings.strings.months.month2.data, "Feb");
        __config.strings.months[3] = com.amcharts.Utils.checkUndefined(__settings.strings.months.month3.data, "Mar");
        __config.strings.months[4] = com.amcharts.Utils.checkUndefined(__settings.strings.months.month4.data, "Apr");
        __config.strings.months[5] = com.amcharts.Utils.checkUndefined(__settings.strings.months.month5.data, "May");
        __config.strings.months[6] = com.amcharts.Utils.checkUndefined(__settings.strings.months.month6.data, "Jun");
        __config.strings.months[7] = com.amcharts.Utils.checkUndefined(__settings.strings.months.month7.data, "Jul");
        __config.strings.months[8] = com.amcharts.Utils.checkUndefined(__settings.strings.months.month8.data, "Aug");
        __config.strings.months[9] = com.amcharts.Utils.checkUndefined(__settings.strings.months.month9.data, "Sep");
        __config.strings.months[10] = com.amcharts.Utils.checkUndefined(__settings.strings.months.month10.data, "Oct");
        __config.strings.months[11] = com.amcharts.Utils.checkUndefined(__settings.strings.months.month11.data, "Nov");
        __config.strings.months[12] = com.amcharts.Utils.checkUndefined(__settings.strings.months.month12.data, "Dec");
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
        __settings.graphs.graph = com.amcharts.Utils.objectToArray(__settings.graphs.graph);
        __config.graphs = new Object();
        __config.graphs.temp_graphs = new Array();
        __config.gids = new Array();
        __config.colors = com.amcharts.Utils.toColor(__settings.colors.data, [16737792, 16568834, 11591177, 888527, 2755792, 13438324, 13369344, 52224, 204, 14540253, 10066329, 3355443, 10027008]);
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
            __config.graphs.temp_graphs[_loc3].alpha = com.amcharts.Utils.toNumber(_loc4.alpha.data, 100);
            __config.graphs.temp_graphs[_loc3].width = com.amcharts.Utils.toNumber(_loc4.width.data, 0);
            __config.graphs.temp_graphs[_loc3].bullet = _loc4.bullet.data;
            __config.graphs.temp_graphs[_loc3].bullet_color = com.amcharts.Utils.toColor(_loc4.bullet_color.data, __config.graphs.temp_graphs[_loc3].color);
            __config.graphs.temp_graphs[_loc3].bullet_size = com.amcharts.Utils.toNumber(_loc4.bullet_size.data, 8);
            __config.graphs.temp_graphs[_loc3].bullet_alpha = com.amcharts.Utils.toNumber(_loc4.bullet_alpha.data, 100);
            __config.graphs.temp_graphs[_loc3].bullet_max_size = com.amcharts.Utils.toNumber(_loc4.bullet_max_size.data, __config.bullets.max_size);
            __config.graphs.temp_graphs[_loc3].bullet_min_size = com.amcharts.Utils.toNumber(_loc4.bullet_min_size.data, __config.bullets.min_size);
            __config.graphs.temp_graphs[_loc3].data_labels = _loc4.data_labels.data;
            __config.graphs.temp_graphs[_loc3].balloon_text = _loc4.balloon_text.data;
            __config.graphs.temp_graphs[_loc3].visible_in_legend = com.amcharts.Utils.toBoolean(_loc4.visible_in_legend.data, true);
        } // end of for
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
        __config.scroller = new Object();
        __config.scroller.enabled = com.amcharts.Utils.toBoolean(__settings.scroller.enabled.data, true);
        __config.scroller.color = com.amcharts.Utils.toColor(__settings.scroller.color.data, 14342874);
        __config.scroller.bg_color = com.amcharts.Utils.toColor(__settings.scroller.bg_color.data, 15790320);
        __config.scroller.alpha = com.amcharts.Utils.toNumber(__settings.scroller.alpha.data, 100);
        __config.scroller.bg_alpha = com.amcharts.Utils.toNumber(__settings.scroller.bg_alpha.data, 100);
        __config.scroller.height = com.amcharts.Utils.toNumber(__settings.scroller.height.data, 10);
        __config.zoom = new Object();
        __config.zoom.enabled = com.amcharts.Utils.toBoolean(__settings.zoom.enabled.data, true);
        __config.zoom.target = com.amcharts.Utils.toBoolean(__settings.zoom.target.data, true);
        __config.zoom.disable_axis = __settings.zoom.disable_axis.data;
        __config.zoom.max_factor = com.amcharts.Utils.toNumber(__settings.zoom.max_factor.data, 20);
        __config.zoom.border_color = com.amcharts.Utils.toColor(__settings.zoom.border_color.data, 12303104);
        __config.zoom.border_alpha = com.amcharts.Utils.toNumber(__settings.zoom.border_alpha.data, 100);
        __config.zoom.bg_color = com.amcharts.Utils.toColor(__settings.zoom.bg_color.data, 12303104);
        __config.zoom.bg_alpha = com.amcharts.Utils.toNumber(__settings.zoom.bg_alpha.data, 25);
        if (__config.zoom.enabled == true)
        {
            __config.mask = true;
        } // end if
        __config.zoom_out_button = new Object();
        __config.zoom_out_button.x = __settings.zoom_out_button.x.data;
        __config.zoom_out_button.y = __settings.zoom_out_button.y.data;
        __config.zoom_out_button.color = com.amcharts.Utils.toColor(__settings.zoom_out_button.color.data, 12303104);
        __config.zoom_out_button.alpha = com.amcharts.Utils.toNumber(__settings.zoom_out_button.alpha.data, 0);
        __config.zoom_out_button.text_color = com.amcharts.Utils.toColor(__settings.zoom_out_button.text_color.data, __config.text_color);
        __config.zoom_out_button.text_color_hover = com.amcharts.Utils.toColor(__settings.zoom_out_button.text_color_hover.data, 12303104);
        __config.zoom_out_button.text_size = com.amcharts.Utils.toNumber(__settings.zoom_out_button.text_size.data, __config.text_size);
        __config.zoom_out_button.text = com.amcharts.Utils.checkUndefined(__settings.zoom_out_button.text.data, "Show all");
        __settings.plugins.plugin = com.amcharts.Utils.objectToArray(__settings.plugins.plugin);
        __config.plugins = __settings.plugins;
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
    } // End of the function
    function get obj()
    {
        return (__config);
    } // End of the function
} // End of Class
