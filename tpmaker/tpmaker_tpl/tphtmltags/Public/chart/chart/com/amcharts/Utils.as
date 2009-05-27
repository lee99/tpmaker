class com.amcharts.Utils
{
    function Utils()
    {
    } // End of the function
    static function toBoolean(value, if_undefined)
    {
        var _loc1 = false;
        if (value == true)
        {
            _loc1 = true;
        } // end if
        if (com.amcharts.Utils.stripSymbols(value.toLowerCase(), " ") == "true")
        {
            _loc1 = true;
        } // end if
        if (com.amcharts.Utils.stripSymbols(value.toLowerCase(), " ") == "yes")
        {
            _loc1 = true;
        } // end if
        if (value > 0)
        {
            _loc1 = true;
        } // end if
        if (value == "" || value == undefined)
        {
            _loc1 = if_undefined;
        } // end if
        return (_loc1);
    } // End of the function
    static function toNumber(value, if_nan)
    {
        if (value.indexOf(",") != -1 && value.indexOf(",") != undefined)
        {
            value = value.split(",");
            var _loc4 = new Array();
            for (var _loc1 = 0; _loc1 < value.length; ++_loc1)
            {
                value[_loc1] = com.amcharts.Utils.stripSymbols(value[_loc1], " ");
                _loc4[_loc1] = Number(value[_loc1]);
                if (isNaN(_loc4[_loc1]) == true)
                {
                    _loc4[_loc1] = if_nan;
                } // end if
            } // end of for
        }
        else
        {
            value = com.amcharts.Utils.stripSymbols(value, " ");
            _loc4 = Number(value);
            if (isNaN(_loc4) == true)
            {
                _loc4 = if_nan;
            } // end if
        } // end else if
        return (_loc4);
    } // End of the function
    static function toColor(value, if_undefined)
    {
        if (value.indexOf(",") != -1 && value.indexOf(",") != undefined)
        {
            value = value.split(",");
            var _loc4 = new Array();
            for (var _loc1 = 0; _loc1 < value.length; ++_loc1)
            {
                _loc4[_loc1] = Number("0x" + value[_loc1].substr(-6));
                if (isNaN(_loc4[_loc1]) == true)
                {
                    _loc4[_loc1] = if_undefined;
                } // end if
            } // end of for
        }
        else
        {
            _loc4 = Number("0x" + value.substr(-6));
            if (isNaN(_loc4) == true)
            {
                _loc4 = if_undefined;
            } // end if
        } // end else if
        return (_loc4);
    } // End of the function
    static function checkUndefined(value, if_undefined)
    {
        if (value == undefined)
        {
            return (if_undefined);
        } // end if
        return (value);
    } // End of the function
    static function toCoordinate(value, full)
    {
        if (value.substr(0, 1) == "!")
        {
            value = full - Number(value.substr(1));
        } // end if
        if (value.substr(-1) == "%")
        {
            var _loc2 = full * Number(value.substr(0, value.length - 1)) / 100;
        }
        else
        {
            _loc2 = Number(value);
            if (isNaN(_loc2))
            {
                _loc2 = undefined;
            } // end if
        } // end else if
        return (_loc2);
    } // End of the function
    static function replace(string, find, replace)
    {
        return (string.split(find).join(replace));
    } // End of the function
    static function stripSymbols(string, symbol)
    {
        var _loc1 = string.split(symbol);
        return (_loc1.join(""));
    } // End of the function
    static function validateFileName(string)
    {
        string = com.amcharts.Utils.replace(string, "<", "&lt;");
        string = com.amcharts.Utils.replace(string, ">", "&gt;");
        return (string);
    } // End of the function
    static function scientificToNormal(num)
    {
        var _loc5 = num.toString();
        var _loc2 = _loc5.split("e");
        if (_loc2[1].substr(0, 1) == "-")
        {
            var _loc3 = "0.";
            for (var _loc1 = 0; _loc1 < Math.abs(Number(_loc2[1])); ++_loc1)
            {
                _loc3 = _loc3 + "0";
            } // end of for
            _loc3 = _loc3 + _loc2[0].split(".").join("");
        }
        else
        {
            var _loc4 = com.amcharts.Utils.checkUndefined(_loc2[0].split(".")[1].length, 0);
            _loc3 = _loc2[0].split(".").join("");
            for (var _loc1 = 0; _loc1 < Math.abs(Number(_loc2[1])) - _loc4; ++_loc1)
            {
                _loc3 = _loc3 + "0";
            } // end of for
        } // end else if
        return (_loc3);
    } // End of the function
    static function toScientific(num, decimals_separator)
    {
        if (num == 0)
        {
            return ("0");
        } // end if
        var _loc2 = Math.floor(Math.log(Math.abs(num)) * 4.342945E-001);
        var _loc4 = Math.pow(10, _loc2);
        var _loc1 = num / _loc4;
        _loc1 = _loc1.toString().split(".").join(decimals_separator);
        return (_loc1.toString() + "e" + _loc2);
    } // End of the function
    static function formatNumber(num, decimals_separator, thousands_separator, zero_count, add_plus, add_percents, letters, scientific)
    {
        if (decimals_separator == undefined)
        {
            decimals_separator = ",";
        } // end if
        if (thousands_separator == undefined)
        {
            thousands_separator = " ";
        } // end if
        if (num < 0)
        {
            var _loc9 = "-";
        }
        else
        {
            _loc9 = "";
        } // end else if
        num = Math.abs(num);
        if (scientific == true)
        {
            formated = com.amcharts.Utils.toScientific(num, decimals_separator);
        }
        else
        {
            for (var _loc1 = letters.length - 1; _loc1 > -1; --_loc1)
            {
                if (num >= 5.000000E-001 * letters[_loc1].number)
                {
                    num = num / letters[_loc1].number;
                    var _loc5 = letters[_loc1].letter;
                    break;
                } // end if
            } // end of for
            if (num.toString().indexOf("e") != -1)
            {
                var _loc11 = com.amcharts.Utils.scientificToNormal(num);
            }
            else
            {
                _loc11 = num.toString();
            } // end else if
            var _loc8 = _loc11.split(".");
            var formated = "";
            var _loc2 = _loc8[0].toString();
            for (var _loc1 = _loc2.length; _loc1 >= 0; _loc1 = _loc1 - 3)
            {
                if (_loc1 != _loc2.length)
                {
                    if (_loc1 != 0)
                    {
                        formated = _loc2.substring(_loc1 - 3, _loc1) + thousands_separator + formated;
                    }
                    else
                    {
                        formated = _loc2.substring(_loc1 - 3, _loc1) + formated;
                    } // end else if
                    continue;
                } // end if
                formated = _loc2.substring(_loc1 - 3, _loc1);
            } // end of for
            if (_loc8[1] != undefined)
            {
                formated = formated + decimals_separator + _loc8[1];
            } // end if
            if (zero_count != undefined && zero_count > 0 && formated != "0")
            {
                formated = com.amcharts.Utils.addZeroes(formated, decimals_separator, zero_count);
            } // end if
            if (_loc5 != undefined)
            {
                formated = formated + _loc5;
            } // end if
        } // end else if
        formated = _loc9 + formated;
        if (_loc9 == "" && add_plus == true && num != 0)
        {
            formated = "+" + formated;
        } // end if
        if (add_percents == true)
        {
            formated = formated + "%";
        } // end if
        return (formated);
    } // End of the function
    static function addZeroes(number, decimals_separator, count)
    {
        var _loc1 = number.split(decimals_separator);
        if (_loc1[1] == undefined && count > 0)
        {
            _loc1[1] = "0";
        } // end if
        if (_loc1[1].length < count)
        {
            _loc1[1] = _loc1[1] + "0";
            return (com.amcharts.Utils.addZeroes(_loc1[0] + decimals_separator + _loc1[1], decimals_separator, count));
        }
        else if (_loc1[1] != undefined)
        {
            return (_loc1[0] + decimals_separator + _loc1[1]);
        }
        else
        {
            return (_loc1[0]);
        } // end else if
    } // End of the function
    static function isArray(obj)
    {
        if (typeof(obj) == "object")
        {
            if (isNaN(obj.length) == true)
            {
                return (false);
            }
            else
            {
                return (true);
            } // end else if
        }
        else
        {
            return (false);
        } // end else if
    } // End of the function
    static function objectToArray(obj)
    {
        if (typeof(obj) == "object" && com.amcharts.Utils.isArray(obj) == false)
        {
            var _loc2 = obj;
            obj = new Array();
            obj.push(_loc2);
        } // end if
        return (obj);
    } // End of the function
    static function fitToBounds(number, min, max)
    {
        if (number < min)
        {
            number = min;
        } // end if
        if (number > max)
        {
            number = max;
        } // end if
        return (number);
    } // End of the function
    static function roundTo(number, precision)
    {
        return (Math.round(number * Math.pow(10, precision)) / Math.pow(10, precision));
    } // End of the function
    static function getRef(obj, string)
    {
        if (string.indexOf(".") != -1)
        {
            var _loc1 = substring(string, 0, string.indexOf("."));
            var _loc3 = substring(string, string.indexOf(".") + 2, string.length);
        }
        else
        {
            _loc1 = string;
            _loc3 = undefined;
        } // end else if
        if (_loc1.indexOf("[") != -1 && _loc1.indexOf("]") != -1)
        {
            var _loc5 = _loc1.substring(0, _loc1.indexOf("["));
            var _loc6 = _loc1.substring(_loc1.indexOf("[") + 1, _loc1.indexOf("]"));
            var _loc4 = obj[_loc5][_loc6];
        }
        else
        {
            _loc4 = obj[_loc1];
        } // end else if
        if (_loc3 != undefined)
        {
            return (com.amcharts.Utils.getRef(_loc4, _loc3));
        } // end if
        return (_loc4);
    } // End of the function
    static function rotateText(text_field, bg_color, target_mc, name, depth)
    {
        text_field.autoSize = "left";
        text_field.multiline = false;
        text_field.wordWrap = false;
        text_field.textWidth = 2000;
        var _loc3 = new flash.display.BitmapData(text_field._width, text_field._height, true, bg_color);
        _loc3.draw(text_field);
        var _loc2 = target_mc.createEmptyMovieClip(name, depth);
        _loc2.attachBitmap(_loc3, 0);
        _loc2._rotation = -90;
        text_field._visible = false;
        _loc2._x = text_field._x;
        _loc2._y = text_field._y;
        return (_loc2);
    } // End of the function
    static function changeBoolean(value)
    {
        if (value == true)
        {
            return (false);
        } // end if
        if (value == false)
        {
            return (true);
        } // end if
    } // End of the function
    static function fixedMath(val1, val2, op)
    {
        var _loc5 = val1.toString();
        if (_loc5.indexOf("e") != -1)
        {
            var _loc6 = _loc5.split("e");
            var _loc1 = Math.abs(_loc6[1]) + _loc6[0].length - 1;
        }
        else
        {
            _loc1 = com.amcharts.Utils.checkUndefined(val1.toString().split(".")[1].length, 0);
        } // end else if
        var _loc2 = val2.toString();
        if (_loc2.indexOf("e") != -1)
        {
            var _loc3 = _loc2.split("e");
            var _loc4 = Math.abs(_loc3[1]) + _loc3[0].length - 1;
        }
        else
        {
            _loc4 = com.amcharts.Utils.checkUndefined(val2.toString().split(".")[1].length, 0);
        } // end else if
        if (_loc4 > _loc1)
        {
            _loc1 = _loc4;
        } // end if
        if (op == "plus")
        {
            var _loc9 = com.amcharts.Utils.roundTo(val1 + val2, _loc1);
        } // end if
        if (op == "minus")
        {
            _loc9 = com.amcharts.Utils.roundTo(val1 - val2, _loc1);
        } // end if
        return (_loc9);
    } // End of the function
    static function stripNumbers(string)
    {
        var _loc2 = string.split("");
        string = "";
        for (var _loc1 = 0; _loc1 < _loc2.length; ++_loc1)
        {
            if (isNaN(Number(_loc2[_loc1])))
            {
                string = string + _loc2[_loc1];
            } // end if
        } // end of for
        return (string);
    } // End of the function
    static function checkNaN(value, if_nan)
    {
        if (isNaN(value) == true)
        {
            return (if_nan);
        } // end if
        return (value);
    } // End of the function
} // End of Class
