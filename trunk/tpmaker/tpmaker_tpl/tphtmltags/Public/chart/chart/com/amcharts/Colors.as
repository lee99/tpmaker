class com.amcharts.Colors
{
    function Colors()
    {
    } // End of the function
    static function number2RGB(color)
    {
        color = isNaN(color) ? (0) : (color);
        var _loc4 = color >> 16;
        var _loc5 = color >> 8 & 255;
        var _loc3 = color & 255;
        var _loc2 = {r: _loc4, g: _loc5, b: _loc3};
        return (_loc2);
    } // End of the function
    static function rgb2Number(colorObj)
    {
        var _loc3 = colorObj.r;
        var _loc4 = colorObj.g;
        var _loc2 = colorObj.b;
        return (_loc3 * 256 * 256 + _loc4 * 256 + _loc2);
    } // End of the function
    static function rgb2HLS(rgb)
    {
        var _loc3 = rgb.r;
        var _loc5 = rgb.g;
        var _loc2 = rgb.b;
        var _loc10;
        var _loc9;
        var _loc8;
        var _loc1 = Math.max(Math.max(_loc3, _loc5), _loc2) / 255;
        var _loc6 = Math.min(Math.min(_loc3, _loc5), _loc2) / 255;
        var _loc4 = _loc1 - _loc6;
        _loc9 = (_loc1 + _loc6) / 2;
        _loc8 = _loc1 == _loc6 ? (0) : (_loc9 <= 5.000000E-001 ? (_loc4 / _loc9 / 2) : (_loc4 / (2 - _loc9 * 2)));
        if (_loc3 / 255 == _loc1)
        {
            _loc10 = (_loc5 - _loc2) / _loc4 / 255;
        }
        else if (_loc5 / 255 == _loc1)
        {
            _loc10 = 2 + (_loc2 - _loc3) / _loc4 / 255;
        }
        else if (_loc2 / 255 == _loc1)
        {
            _loc10 = 4 + (_loc3 - _loc5) / _loc4 / 255;
        } // end else if
        _loc10 = _loc10 * 40;
        if (_loc10 < 0)
        {
            _loc10 = _loc10 + 240;
        } // end if
        _loc10 = Math.round(_loc10);
        return ({h: isNaN(_loc10) ? (0) : (_loc10), l: Math.round(_loc9 * 240), s: Math.round(_loc8 * 240)});
    } // End of the function
    static function hls2RGB(hls)
    {
        var _loc5 = hls.h;
        var _loc7 = hls.l;
        var _loc8 = hls.s;
        var _loc11;
        var _loc12;
        var _loc10;
        if (_loc8 == 0)
        {
            _loc10 = Math.round(_loc7 / 240 * 255);
            _loc12 = Math.round(_loc7 / 240 * 255);
            _loc11 = Math.round(_loc7 / 240 * 255);
        }
        else
        {
            _loc5 = _loc5 / 240;
            _loc7 = _loc7 / 240;
            _loc8 = _loc8 / 240;
            var _loc2;
            var _loc1;
            var _loc6 = _loc7 < 5.000000E-001 ? (_loc7 * (_loc8 + 1)) : (_loc7 + _loc8 - _loc7 * _loc8);
            var _loc4 = _loc7 * 2 - _loc6;
            for (var _loc3 = 0; _loc3 < 3; ++_loc3)
            {
                switch (_loc3)
                {
                    case 0:
                    {
                        _loc1 = _loc5 + 3.333333E-001;
                        break;
                    } 
                    case 1:
                    {
                        _loc1 = _loc5;
                        break;
                    } 
                    case 2:
                    {
                        _loc1 = _loc5 - 3.333333E-001;
                        break;
                    } 
                } // End of switch
                if (_loc1 < 0)
                {
                    ++_loc1;
                }
                else if (_loc1 > 1)
                {
                    --_loc1;
                } // end else if
                if (_loc1 * 6 < 1)
                {
                    _loc2 = _loc4 + (_loc6 - _loc4) * 6 * _loc1;
                }
                else if (_loc1 * 2 < 1)
                {
                    _loc2 = _loc6;
                }
                else if (_loc1 * 3 < 2)
                {
                    _loc2 = _loc4 + (_loc6 - _loc4) * (6.666667E-001 - _loc1) * 6;
                }
                else
                {
                    _loc2 = _loc4;
                } // end else if
                switch (_loc3)
                {
                    case 0:
                    {
                        _loc11 = Math.round(_loc2 * 255);
                        break;
                    } 
                    case 1:
                    {
                        _loc12 = Math.round(_loc2 * 255);
                        break;
                    } 
                    case 2:
                    {
                        _loc10 = Math.round(_loc2 * 255);
                        break;
                    } 
                } // End of switch
            } // end of for
        } // end else if
        return ({r: _loc11, g: _loc12, b: _loc10});
    } // End of the function
    static function adjustLuminosity(color, step)
    {
        var _loc2 = com.amcharts.Colors.number2RGB(color);
        var _loc1 = com.amcharts.Colors.rgb2HLS(_loc2);
        _loc1.l = _loc1.l + step;
        if (_loc1.l >= 240)
        {
            _loc1.l = 240;
        } // end if
        if (_loc1.l <= 0)
        {
            _loc1.l = 0;
        } // end if
        _loc2 = com.amcharts.Colors.hls2RGB(_loc1);
        color = com.amcharts.Colors.rgb2Number(_loc2);
        return (color);
    } // End of the function
    static function dec2hex(color)
    {
        var _loc2 = color.toString(16).toUpperCase().split("");
        var _loc3 = _loc2.length;
        for (var _loc1 = 0; _loc1 < 6 - _loc3; ++_loc1)
        {
            _loc2.unshift("0");
        } // end of for
        return ("#" + _loc2.join(""));
    } // End of the function
} // End of Class
