class com.amcharts.column.Custom
{
    function Custom()
    {
    } // End of the function
    static function formatText(config, text, title, value, percents, series, description, start, total, duration)
    {
        var _loc4 = com.amcharts.Utils.fixedMath(value, start, "minus");
        if (title != undefined)
        {
            text = com.amcharts.Utils.replace(text, "{title}", title);
        }
        else
        {
            text = com.amcharts.Utils.replace(text, "{title}", "");
        } // end else if
        if (config.values.value.duration != undefined)
        {
            var _loc8 = duration;
        }
        else
        {
            var _loc3 = false;
            if (Math.abs(value) <= config.scientific_min || Math.abs(value) >= config.scientific_max)
            {
                _loc3 = true;
            } // end if
            _loc8 = com.amcharts.Utils.formatNumber(value, config.decimals_separator, config.thousands_separator, config.digits_after_decimal, false, false, undefined, _loc3);
        } // end else if
        text = com.amcharts.Utils.replace(text, "{value}", _loc8);
        if (series != undefined)
        {
            text = com.amcharts.Utils.replace(text, "{series}", series);
        }
        else
        {
            text = com.amcharts.Utils.replace(text, "{series}", "");
        } // end else if
        text = com.amcharts.Utils.replace(text, "{percents}", com.amcharts.Utils.formatNumber(com.amcharts.Utils.roundTo(percents, config.precision), config.decimals_separator, config.thousands_separator, config.digits_after_decimal));
        if (start != undefined)
        {
            _loc3 = false;
            if (Math.abs(start) < config.scientific.min || Math.abs(start) > config.scientific.max)
            {
                _loc3 = true;
            } // end if
            text = com.amcharts.Utils.replace(text, "{start}", com.amcharts.Utils.formatNumber(start, config.decimals_separator, config.thousands_separator, config.digits_after_decimal, false, false, undefined, _loc3));
        }
        else
        {
            text = com.amcharts.Utils.replace(text, "{start}", "");
        } // end else if
        if (_loc4 != undefined)
        {
            _loc3 = false;
            if (Math.abs(_loc4) < config.scientific.min || Math.abs(_loc4) > config.scientific.max)
            {
                _loc3 = true;
            } // end if
            text = com.amcharts.Utils.replace(text, "{difference}", com.amcharts.Utils.formatNumber(_loc4, config.decimals_separator, config.thousands_separator, config.digits_after_decimal, false, false, undefined, _loc3));
        }
        else
        {
            text = com.amcharts.Utils.replace(text, "{difference}", "");
        } // end else if
        if (total != undefined)
        {
            _loc3 = false;
            if (Math.abs(total) < config.scientific.min || Math.abs(total) > config.scientific.max)
            {
                _loc3 = true;
            } // end if
            text = com.amcharts.Utils.replace(text, "{total}", com.amcharts.Utils.formatNumber(total, config.decimals_separator, config.thousands_separator, config.digits_after_decimal, false, false, undefined, _loc3));
        }
        else
        {
            text = com.amcharts.Utils.replace(text, "{total}", "");
        } // end else if
        if (description != undefined)
        {
            text = com.amcharts.Utils.replace(text, "{description}", description);
        }
        else
        {
            text = com.amcharts.Utils.replace(text, "{description}", "");
        } // end else if
        return (text);
    } // End of the function
} // End of Class
