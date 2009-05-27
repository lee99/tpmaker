class com.amcharts.line.Custom
{
    function Custom()
    {
    } // End of the function
    static function formatText(config, text, title, value, series, description, percents, duration)
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
        if (series != undefined)
        {
            text = com.amcharts.Utils.replace(text, "{series}", series);
        }
        else
        {
            text = com.amcharts.Utils.replace(text, "{title}", "");
        } // end else if
        if (duration != undefined)
        {
            var _loc3 = duration;
        }
        else
        {
            var _loc4 = false;
            if (Math.abs(value) <= config.scientific_min || Math.abs(value) >= config.scientific_max)
            {
                _loc4 = true;
            } // end if
            _loc3 = com.amcharts.Utils.formatNumber(value, config.decimals_separator, config.thousands_separator, config.digits_after_decimal, false, false, undefined, _loc4);
        } // end else if
        if (_loc3 != undefined)
        {
            text = com.amcharts.Utils.replace(text, "{value}", _loc3);
        }
        else
        {
            text = com.amcharts.Utils.replace(text, "{value}", "");
        } // end else if
        if (percents != undefined)
        {
            text = com.amcharts.Utils.replace(text, "{percents}", com.amcharts.Utils.formatNumber(com.amcharts.Utils.roundTo(percents, config.precision), config.decimals_separator, config.thousands_separator, config.digits_after_decimal));
        }
        else
        {
            text = com.amcharts.Utils.replace(text, "{percents}", "");
        } // end else if
        return (text);
    } // End of the function
} // End of Class
