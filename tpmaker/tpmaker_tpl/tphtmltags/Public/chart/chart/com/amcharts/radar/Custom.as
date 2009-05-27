class com.amcharts.radar.Custom
{
    function Custom()
    {
    } // End of the function
    static function formatText(config, text, title, value, percents, description, axis)
    {
        if (title != undefined)
        {
            text = com.amcharts.Utils.replace(text, "{title}", title);
        }
        else
        {
            text = com.amcharts.Utils.replace(text, "{title}", "");
        } // end else if
        var _loc3 = false;
        if (Math.abs(value) <= config.scientific_min || Math.abs(value) >= config.scientific_max)
        {
            _loc3 = true;
        } // end if
        text = com.amcharts.Utils.replace(text, "{value}", com.amcharts.Utils.formatNumber(value, config.decimals_separator, config.thousands_separator, config.digits_after_decimal, false, false, undefined, _loc3));
        text = com.amcharts.Utils.replace(text, "{percents}", com.amcharts.Utils.formatNumber(com.amcharts.Utils.roundTo(percents, config.precision), config.decimals_separator, config.thousands_separator, config.digits_after_decimal));
        if (description != undefined)
        {
            text = com.amcharts.Utils.replace(text, "{description}", description);
        }
        else
        {
            text = com.amcharts.Utils.replace(text, "{description}", "");
        } // end else if
        if (axis != undefined)
        {
            text = com.amcharts.Utils.replace(text, "{axis}", axis);
        }
        else
        {
            text = com.amcharts.Utils.replace(text, "{axis}", "");
        } // end else if
        return (text);
    } // End of the function
} // End of Class
