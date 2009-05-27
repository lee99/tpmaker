class com.amcharts.Durations
{
    function Durations()
    {
    } // End of the function
    static function getMaxInterval(duration, interval)
    {
        var _loc1 = new Object();
        _loc1.s = {next_interval: "ss", contains: 1000};
        _loc1.ss = {next_interval: "mm", contains: 60};
        _loc1.mm = {next_interval: "hh", contains: 60};
        _loc1.hh = {next_interval: "DD", contains: 24};
        _loc1.DD = {next_interval: "", contains: Infinity};
        if (duration >= _loc1[interval].contains)
        {
            duration = int(duration / _loc1[interval].contains);
            interval = _loc1[interval].next_interval;
            return (com.amcharts.Durations.getMaxInterval(duration, interval));
        }
        else
        {
            return (interval);
        } // end else if
    } // End of the function
    static function formatDuration(duration, interval, result, units, max_interval, decimals_separator, thousands_separator, max_dec_count)
    {
        var _loc2 = new Object();
        _loc2.ss = {next_interval: "mm", contains: 60, count: 0};
        _loc2.mm = {next_interval: "hh", contains: 60, count: 1};
        _loc2.hh = {next_interval: "DD", contains: 24, count: 2};
        _loc2.DD = {next_interval: "", contains: Infinity, count: 3};
        if (duration >= _loc2[interval].contains)
        {
            var _loc7 = com.amcharts.Utils.fixedMath(duration, int(duration / _loc2[interval].contains) * _loc2[interval].contains, "minus");
            if (interval == "ss")
            {
                _loc7 = com.amcharts.Utils.formatNumber(_loc7, decimals_separator, thousands_separator, max_dec_count);
                if (_loc7.split(decimals_separator)[0].length == 1)
                {
                    _loc7 = "0" + _loc7;
                } // end if
            } // end if
            if ((interval == "mm" || interval == "hh") && _loc7 < 10)
            {
                _loc7 = "0" + _loc7;
            } // end if
            result = _loc7 + "" + units[interval] + "" + result;
            duration = int(duration / _loc2[interval].contains);
            interval = _loc2[interval].next_interval;
            return (com.amcharts.Durations.formatDuration(duration, interval, result, units, max_interval, decimals_separator, thousands_separator, max_dec_count));
        }
        else
        {
            if (interval == "ss")
            {
                duration = com.amcharts.Utils.formatNumber(duration, decimals_separator, thousands_separator, max_dec_count);
                if (duration.split(decimals_separator)[0].length == 1)
                {
                    duration = "0" + duration;
                } // end if
            } // end if
            if ((interval == "mm" || interval == "hh") && duration < 10)
            {
                duration = "0" + duration;
            } // end if
            result = duration + "" + units[interval] + "" + result;
            if (_loc2[max_interval].count > _loc2[interval].count)
            {
                for (var _loc4 = _loc2[interval].count; _loc4 < _loc2[max_interval].count; ++_loc4)
                {
                    interval = _loc2[interval].next_interval;
                    if (interval == "ss" || interval == "mm" || interval == "hh")
                    {
                        result = "00" + units[interval] + "" + result;
                        continue;
                    } // end if
                    if (interval == "DD")
                    {
                        result = "0" + units[interval] + "" + result;
                    } // end if
                } // end of for
            } // end if
            return (result);
        } // end else if
    } // End of the function
} // End of Class
