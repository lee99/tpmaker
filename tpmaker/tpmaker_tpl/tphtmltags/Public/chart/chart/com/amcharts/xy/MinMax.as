class com.amcharts.xy.MinMax
{
    function MinMax()
    {
    } // End of the function
    static function calculate(min_defined, max_defined, data, grid_count, config, axis)
    {
        var _loc2 = com.amcharts.xy.MinMax.getMax(data, -Number.MAX_VALUE, axis);
        if (isNaN(max_defined) == false && (max_defined >= _loc2 || config.values[axis].strict_min_max == true))
        {
            _loc2 = max_defined;
        }
        else
        {
            max_defined = undefined;
        } // end else if
        var _loc14 = _loc2;
        var _loc1 = com.amcharts.xy.MinMax.getMin(data, Number.MAX_VALUE, axis);
        var _loc3 = _loc1;
        if (isNaN(min_defined) == false && (min_defined <= _loc1 || config.values[axis].strict_min_max == true))
        {
            _loc1 = min_defined;
        }
        else
        {
            min_defined = undefined;
        } // end else if
        if (_loc1 == 0 && _loc2 == 0)
        {
            _loc2 = 9;
        } // end if
        var _loc13 = _loc1;
        var _loc12 = _loc2;
        var _loc15 = _loc2 - _loc1;
        var _loc5;
        if (_loc15 == 0)
        {
            _loc5 = Math.pow(10, Math.floor(Math.log(Math.abs(_loc2)) * 4.342945E-001)) / 10;
        }
        else
        {
            _loc5 = Math.pow(10, Math.floor(Math.log(Math.abs(_loc15)) * 4.342945E-001)) / 10;
        } // end else if
        if (isNaN(max_defined) == true)
        {
            _loc2 = Math.ceil(_loc2 / _loc5) * _loc5 + _loc5;
        } // end if
        if (isNaN(min_defined) == true)
        {
            _loc1 = Math.floor(_loc1 / _loc5) * _loc5 - _loc5;
        } // end if
        _loc15 = _loc2 - _loc1;
        _loc5 = Math.pow(10, Math.floor(Math.log(Math.abs(_loc15)) * 4.342945E-001)) / 10;
        var _loc4 = Math.ceil(_loc15 / grid_count / _loc5) * _loc5;
        var _loc10 = Math.pow(10, Math.floor(Math.log(Math.abs(_loc4)) * 4.342945E-001));
        var _loc6 = Math.ceil(_loc4 / _loc10);
        if (_loc6 > 5)
        {
            _loc6 = 10;
        } // end if
        if (_loc6 <= 5 && _loc6 > 2)
        {
            _loc6 = 5;
        } // end if
        _loc4 = Math.ceil(_loc4 / (_loc10 * _loc6)) * _loc10 * _loc6;
        _loc1 = _loc4 * Math.floor(_loc1 / _loc4);
        _loc2 = _loc4 * Math.ceil(_loc2 / _loc4);
        if (_loc1 < 0 && _loc13 >= 0)
        {
            _loc1 = 0;
        } // end if
        if (_loc2 > 0 && _loc12 <= 0)
        {
            _loc2 = 0;
        } // end if
        if (config.values[axis].type == "date")
        {
            _loc1 = _loc3;
            _loc2 = _loc14;
            if (max_defined)
            {
                _loc2 = max_defined;
            } // end if
            if (min_defined)
            {
                _loc1 = min_defined;
            } // end if
            if (_loc1 == _loc2)
            {
                _loc2 = _loc1 + config.smallest_duration;
                _loc1 = _loc1 - config.smallest_duration;
                _loc3 = _loc1;
            } // end if
        }
        else
        {
            if (_loc3 > 1 && _loc2 - _loc3 > 1)
            {
                _loc3 = Math.floor(_loc3);
            } // end if
            _loc15 = Math.pow(10, Math.floor(Math.log(Math.abs(_loc3)) * 4.342945E-001));
            if (_loc1 == 0)
            {
                _loc3 = _loc15;
            } // end if
            if (_loc1 == 0 && _loc3 > 1)
            {
                _loc3 = 1;
            } // end if
            if (_loc1 > 0 & _loc3 - _loc4 > 0)
            {
                if (_loc1 + _loc4 < _loc3)
                {
                    _loc3 = _loc1 + _loc4;
                }
                else
                {
                    _loc3 = _loc1;
                } // end if
            } // end else if
        } // end else if
        return ([_loc1, _loc2, _loc4, _loc3]);
    } // End of the function
    static function getMax(data, max, val)
    {
        for (var _loc2 = 0; _loc2 < data.length; ++_loc2)
        {
            for (var _loc1 = 0; _loc1 < data[_loc2].values.length; ++_loc1)
            {
                if (data[_loc2].values[_loc1][val] > max)
                {
                    max = data[_loc2].values[_loc1][val];
                } // end if
            } // end of for
        } // end of for
        return (max);
    } // End of the function
    static function getMin(data, min, val)
    {
        for (var _loc2 = 0; _loc2 < data.length; ++_loc2)
        {
            for (var _loc1 = 0; _loc1 < data[_loc2].values.length; ++_loc1)
            {
                if (data[_loc2].values[_loc1][val] < min)
                {
                    min = data[_loc2].values[_loc1][val];
                } // end if
            } // end of for
        } // end of for
        return (min);
    } // End of the function
} // End of Class
