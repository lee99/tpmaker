class com.amcharts.Dates
{
    function Dates()
    {
    } // End of the function
    static function stringToDate(date_format, date)
    {
        var _loc4 = com.amcharts.Dates.getFromDateString(date_format, date, "MM");
        if (_loc4 != undefined)
        {
            --_loc4;
        }
        else
        {
            _loc4 = 0;
        } // end else if
        var _loc1 = new Date();
        _loc1.setUTCFullYear(com.amcharts.Dates.getFromDateString(date_format, date, "YYYY"));
        _loc1.setUTCMonth(_loc4);
        _loc1.setUTCDate(com.amcharts.Dates.getFromDateString(date_format, date, "DD"));
        _loc1.setUTCHours(com.amcharts.Dates.getFromDateString(date_format, date, "hh"));
        _loc1.setUTCMinutes(com.amcharts.Dates.getFromDateString(date_format, date, "mm"));
        _loc1.setUTCSeconds(com.amcharts.Dates.getFromDateString(date_format, date, "ss"), 0);
        return (_loc1);
    } // End of the function
    static function getFromDateString(date_format, date, what)
    {
        var _loc2 = date_format.indexOf(what);
        if (_loc2 != -1)
        {
            var _loc1 = Number(date.substr(_loc2, what.length));
            if (isNaN(_loc1))
            {
                _loc1 = 0;
            } // end if
            return (_loc1);
        }
        else
        {
            return (0);
        } // end else if
    } // End of the function
    static function dateToString(date_format, date, months, weekdays, hour_format)
    {
        date_format = com.amcharts.Utils.replace(date_format, "YYYY", date.getUTCFullYear());
        var _loc9 = date.getUTCDay();
        var _loc4 = date.getUTCMonth() + 1;
        var _loc8 = _loc4;
        if (_loc4 < 10)
        {
            _loc8 = "0" + _loc4.toString();
        } // end if
        date_format = com.amcharts.Utils.replace(date_format, "MM", _loc8);
        var _loc6 = date.getUTCDate();
        if (_loc6 < 10)
        {
            _loc6 = "0" + _loc6.toString();
        } // end if
        date_format = com.amcharts.Utils.replace(date_format, "DD", _loc6);
        var _loc2 = date.getUTCHours();
        if (hour_format == 12)
        {
            if (_loc2 < 12)
            {
                var _loc5 = " AM";
            }
            else
            {
                _loc5 = " PM";
            } // end else if
            if (_loc2 > 12)
            {
                _loc2 = _loc2 - 12;
            } // end if
            if (_loc2 == 0)
            {
                _loc2 = 12;
            } // end if
        }
        else if (_loc2 < 10)
        {
            _loc2 = "0" + _loc2.toString();
        } // end else if
        if (hour_format == 12)
        {
            if (date_format.indexOf("ss") != -1)
            {
                date_format = com.amcharts.Utils.replace(date_format, "ss", "ss" + _loc5);
            }
            else if (date_format.indexOf("mm") != -1)
            {
                date_format = com.amcharts.Utils.replace(date_format, "mm", "mm" + _loc5);
            }
            else if (date_format.indexOf("hh") != -1)
            {
                date_format = com.amcharts.Utils.replace(date_format, "hh", "hh" + _loc5);
            } // end else if
        } // end else if
        date_format = com.amcharts.Utils.replace(date_format, "hh", _loc2);
        var _loc10 = date.getUTCMinutes();
        if (_loc10 < 10)
        {
            _loc10 = "0" + _loc10.toString();
        } // end if
        date_format = com.amcharts.Utils.replace(date_format, "mm", _loc10);
        var _loc7 = date.getUTCSeconds();
        if (_loc7 < 10)
        {
            _loc7 = "0" + _loc7.toString();
        } // end if
        date_format = com.amcharts.Utils.replace(date_format, "ss", _loc7);
        date_format = com.amcharts.Utils.replace(date_format, "month", months[_loc4]);
        date_format = com.amcharts.Utils.replace(date_format, "WW", weekdays[_loc9]);
        return (date_format);
    } // End of the function
    static function resetDateToMin(date, period)
    {
        switch (period)
        {
            case "100YYYY":
            {
                date.setUTCFullYear(Math.floor(date.getUTCFullYear() / 100) * 100);
                date.setUTCMonth(0, 1);
                date.setUTCHours(0);
                date.setUTCMinutes(0);
                date.setUTCSeconds(0);
                date.setUTCMilliseconds(0);
                return (date);
                break;
            } 
            case "50YYYY":
            {
                date.setUTCFullYear(Math.floor(date.getUTCFullYear() / 50) * 50);
                date.setUTCMonth(0, 1);
                date.setUTCHours(0);
                date.setUTCMinutes(0);
                date.setUTCSeconds(0);
                date.setUTCMilliseconds(0);
                return (date);
                break;
            } 
            case "10YYYY":
            {
                date.setUTCFullYear(Math.floor(date.getUTCFullYear() / 10) * 10);
                date.setUTCMonth(0, 1);
                date.setUTCHours(0);
                date.setUTCMinutes(0);
                date.setUTCSeconds(0);
                date.setUTCMilliseconds(0);
                return (date);
                break;
            } 
            case "5YYYY":
            {
                date.setUTCFullYear(Math.floor(date.getUTCFullYear() / 5) * 5);
                date.setUTCMonth(0, 1);
                date.setUTCHours(0);
                date.setUTCMinutes(0);
                date.setUTCSeconds(0);
                date.setUTCMilliseconds(0);
                return (date);
                break;
            } 
            case "2YYYY":
            {
                date.setUTCFullYear(Math.floor(date.getUTCFullYear() / 2) * 2);
                date.setUTCMonth(0, 1);
                date.setUTCHours(0);
                date.setUTCMinutes(0);
                date.setUTCSeconds(0);
                date.setUTCMilliseconds(0);
                return (date);
                break;
            } 
            case "YYYY":
            {
                date.setUTCMonth(0, 1);
                date.setUTCHours(0);
                date.setUTCMinutes(0);
                date.setUTCSeconds(0);
                date.setUTCMilliseconds(0);
                return (date);
                break;
            } 
            case "6MM":
            {
                date.setUTCMonth(Math.floor(date.getUTCMonth() / 6) * 6);
                date.setUTCDate(1);
                date.setUTCHours(0);
                date.setUTCMinutes(0);
                date.setUTCSeconds(0);
                date.setUTCMilliseconds(0);
                return (date);
                break;
            } 
            case "3MM":
            {
                date.setUTCMonth(Math.floor(date.getUTCMonth() / 3) * 3);
                date.setUTCDate(1);
                date.setUTCHours(0);
                date.setUTCMinutes(0);
                date.setUTCSeconds(0);
                date.setUTCMilliseconds(0);
                return (date);
                break;
            } 
            case "2MM":
            {
                date.setUTCMonth(Math.floor(date.getUTCMonth() / 2) * 2);
                date.setUTCDate(1);
                date.setUTCHours(0);
                date.setUTCMinutes(0);
                date.setUTCSeconds(0);
                date.setUTCMilliseconds(0);
                return (date);
                break;
            } 
            case "MM":
            {
                date.setUTCDate(1);
                date.setUTCHours(0);
                date.setUTCMinutes(0);
                date.setUTCSeconds(0);
                date.setUTCMilliseconds(0);
                return (date);
                break;
            } 
            case "WW":
            {
                var _loc2 = date.getUTCDay();
                if (_loc2 == 0)
                {
                    _loc2 = 7;
                } // end if
                date.setUTCDate(date.getUTCDate() - _loc2 + 1);
                date.setUTCHours(0);
                date.setUTCMinutes(0);
                date.setUTCSeconds(0);
                date.setUTCMilliseconds(0);
                return (date);
                break;
            } 
            case "DD":
            {
                date.setUTCHours(0);
                date.setUTCMinutes(0);
                date.setUTCSeconds(0);
                date.setUTCMilliseconds(0);
                return (date);
                break;
            } 
            case "hh":
            {
                date.setUTCMinutes(0);
                date.setUTCSeconds(0);
                date.setUTCMilliseconds(0);
                return (date);
                break;
            } 
            case "6hh":
            {
                date.setUTCHours(Math.floor(date.getUTCHours() / 6) * 6);
                date.setUTCMinutes(0);
                date.setUTCSeconds(0);
                date.setUTCMilliseconds(0);
                return (date);
                break;
            } 
            case "12hh":
            {
                date.setUTCHours(Math.floor(date.getUTCHours() / 12) * 12);
                date.setUTCMinutes(0);
                date.setUTCSeconds(0);
                date.setUTCMilliseconds(0);
                return (date);
                break;
            } 
            case "mm":
            {
                date.setUTCSeconds(0);
                date.setUTCMilliseconds(0);
                return (date);
                break;
            } 
            case "5mm":
            {
                date.setUTCMinutes(Math.floor(date.getUTCMinutes() / 5) * 5);
                date.setUTCSeconds(0);
                date.setUTCMilliseconds(0);
                return (date);
                break;
            } 
            case "10mm":
            {
                date.setUTCMinutes(Math.floor(date.getUTCMinutes() / 10) * 10);
                date.setUTCSeconds(0);
                date.setUTCMilliseconds(0);
                return (date);
                break;
            } 
            case "10mm":
            {
                date.setUTCMinutes(Math.floor(date.getUTCMinutes() / 10) * 10);
                date.setUTCSeconds(0);
                date.setUTCMilliseconds(0);
                return (date);
                break;
            } 
            case "15mm":
            {
                date.setUTCMinutes(Math.floor(date.getUTCMinutes() / 15) * 15);
                date.setUTCSeconds(0);
                date.setUTCMilliseconds(0);
                return (date);
                break;
            } 
            case "30mm":
            {
                date.setUTCMinutes(Math.floor(date.getUTCMinutes() / 30) * 30);
                date.setUTCSeconds(0);
                date.setUTCMilliseconds(0);
                return (date);
                break;
            } 
            case "ss":
            {
                date.setUTCMilliseconds(0);
                return (date);
                break;
            } 
        } // End of switch
    } // End of the function
    static function changeDate(date, period, count, forward, full)
    {
        var _loc2 = -1;
        if (forward == true)
        {
            _loc2 = 1;
        } // end if
        if (period == "YYYY")
        {
            date.setUTCFullYear(date.getUTCFullYear() + count * _loc2);
            if (forward != true && full != true)
            {
                date.setUTCDate(date.getUTCDate() + 1);
            } // end if
        } // end if
        if (period == "MM")
        {
            date.setUTCMonth(date.getUTCMonth() + count * _loc2);
            if (forward != true && full != true)
            {
                date.setUTCDate(date.getUTCDate() + 1);
            } // end if
        } // end if
        if (period == "DD")
        {
            date.setUTCDate(date.getUTCDate() + count * _loc2);
        } // end if
        if (period == "WW")
        {
            date.setUTCDate(date.getUTCDate() + count * _loc2 * 7 + 1);
        } // end if
        if (period == "hh")
        {
            date.setUTCHours(date.getUTCHours() + count * _loc2);
        } // end if
        if (period == "mm")
        {
            date.setUTCMinutes(date.getUTCMinutes() + count * _loc2);
        } // end if
        if (period == "ss")
        {
            date.setUTCSeconds(date.getUTCSeconds() + count * _loc2);
        } // end if
        return (date);
    } // End of the function
    static function dateStrToIndex(date_format, date, stop_at)
    {
        var _loc2 = "";
        var _loc1 = date_format.indexOf("YYYY");
        if (_loc1 != -1)
        {
            _loc2 = _loc2 + ("" + date.substr(_loc1, 4));
            if (stop_at == "YYYY")
            {
                return (Number(_loc2));
            } // end if
        } // end if
        _loc1 = date_format.indexOf("MM");
        if (_loc1 != -1)
        {
            _loc2 = _loc2 + ("" + date.substr(_loc1, 2));
            if (stop_at == "MM")
            {
                return (Number(_loc2));
            } // end if
        } // end if
        _loc1 = date_format.indexOf("DD");
        if (_loc1 != -1)
        {
            _loc2 = _loc2 + ("" + date.substr(_loc1, 2));
            if (stop_at == "DD")
            {
                return (Number(_loc2));
            } // end if
        } // end if
        _loc1 = date_format.indexOf("hh");
        if (_loc1 != -1)
        {
            _loc2 = _loc2 + ("" + date.substr(_loc1, 2));
            if (stop_at == "hh")
            {
                return (Number(_loc2));
            } // end if
        } // end if
        _loc1 = date_format.indexOf("mm");
        if (_loc1 != -1)
        {
            _loc2 = _loc2 + ("" + date.substr(_loc1, 2));
            if (stop_at == "mm")
            {
                return (Number(_loc2));
            } // end if
        } // end if
        _loc1 = date_format.indexOf("ss");
        if (_loc1 != -1)
        {
            _loc2 = _loc2 + ("" + date.substr(_loc1, 2));
            if (stop_at == "ss")
            {
                return (Number(_loc2));
            } // end if
        } // end if
        return (Number(_loc2));
    } // End of the function
    static function dateFromatToArray(date_format)
    {
        var _loc1 = new Array();
        if (date_format.indexOf("ss") != -1)
        {
            _loc1.push("ss");
        } // end if
        if (date_format.indexOf("mm") != -1)
        {
            _loc1.push("mm");
        } // end if
        if (date_format.indexOf("hh") != -1)
        {
            _loc1.push("hh");
        } // end if
        if (date_format.indexOf("DD") != -1)
        {
            _loc1.push("DD");
        } // end if
        if (date_format.indexOf("DD") != -1 && date_format.indexOf("MM") != -1)
        {
            _loc1.push("WW");
        } // end if
        if (date_format.indexOf("MM") != -1)
        {
            _loc1.push("MM");
        } // end if
        if (date_format.indexOf("YYYY") != -1)
        {
            _loc1.push("YYYY");
        } // end if
        return (_loc1);
    } // End of the function
} // End of Class
