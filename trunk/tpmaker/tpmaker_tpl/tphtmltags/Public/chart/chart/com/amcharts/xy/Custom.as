class com.amcharts.xy.Custom
{
    function Custom()
    {
    } // End of the function
    static function formatText(config, text, title, value, percents, description, start, x, y, date_output_format)
    {
        if (description != undefined)
        {
            text = com.amcharts.Utils.replace(text, "{description}", description);
        }
        else
        {
            text = com.amcharts.Utils.replace(text, "{description}", "");
        } // end else if
        if (title != undefined)
        {
            text = com.amcharts.Utils.replace(text, "{title}", title);
        }
        else
        {
            text = com.amcharts.Utils.replace(text, "{title}", "");
        } // end else if
        if (value != undefined)
        {
            var _loc3 = false;
            if (Math.abs(value) <= config.scientific_min || Math.abs(value) >= config.scientific_max)
            {
                _loc3 = true;
            } // end if
            text = com.amcharts.Utils.replace(text, "{value}", com.amcharts.Utils.formatNumber(value, config.decimals_separator, config.thousands_separator, config.digits_after_decimal, false, false, undefined, _loc3));
        }
        else
        {
            text = com.amcharts.Utils.replace(text, "{value}", "");
        } // end else if
        if (x != undefined)
        {
            if (config.values.x.type == "duration")
            {
                var _loc9 = com.amcharts.Durations.formatDuration(x, config.date_formats.duration_input, "", config.strings, undefined, config.decimals_separator, config.thousands_separator);
            }
            else if (config.values.x.type == "date")
            {
                _loc9 = com.amcharts.Dates.dateToString(date_output_format, new Date(x), config.strings.months);
            }
            else
            {
                _loc3 = false;
                if (Math.abs(x) <= config.scientific_min || Math.abs(x) >= config.scientific_max)
                {
                    _loc3 = true;
                } // end if
                _loc9 = com.amcharts.Utils.formatNumber(x, config.decimals_separator, config.thousands_separator, config.digits_after_decimal, false, false, undefined, _loc3);
            } // end else if
            text = com.amcharts.Utils.replace(text, "{x}", _loc9);
        }
        else
        {
            text = com.amcharts.Utils.replace(text, "{x}", "");
        } // end else if
        if (y != undefined)
        {
            if (config.values.y.type == "duration")
            {
                var _loc8 = com.amcharts.Durations.formatDuration(y, config.date_formats.duration_input, "", config.strings, undefined, config.decimals_separator, config.thousands_separator);
            }
            else if (config.values.y.type == "date")
            {
                _loc8 = com.amcharts.Dates.dateToString(date_output_format, new Date(y));
            }
            else
            {
                _loc3 = false;
                if (Math.abs(y) <= config.scientific_min || Math.abs(y) >= config.scientific_max)
                {
                    _loc3 = true;
                } // end if
                _loc8 = com.amcharts.Utils.formatNumber(y, config.decimals_separator, config.thousands_separator, config.digits_after_decimal, false, false, undefined, _loc3);
            } // end else if
            text = com.amcharts.Utils.replace(text, "{y}", _loc8);
        }
        else
        {
            text = com.amcharts.Utils.replace(text, "{y}", "");
        } // end else if
        text = com.amcharts.Utils.replace(text, "{percents}", com.amcharts.Utils.formatNumber(com.amcharts.Utils.roundTo(percents, config.precision), config.decimals_separator, config.thousands_separator, config.digits_after_decimal));
        if (start != undefined)
        {
            _loc3 = false;
            if (Math.abs(start) <= config.scientific_min || Math.abs(start) >= config.scientific_max)
            {
                _loc3 = true;
            } // end if
            text = com.amcharts.Utils.replace(text, "{start}", com.amcharts.Utils.formatNumber(start, config.decimals_separator, config.thousands_separator, config.digits_after_decimal, false, false, undefined, _loc3));
        }
        else
        {
            text = com.amcharts.Utils.replace(text, "{start}", "");
        } // end else if
        return (text);
    } // End of the function
} // End of Class
