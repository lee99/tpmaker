class com.amcharts.column.MinMax
{
    function MinMax()
    {
    } // End of the function
    static function calculate(min_defined, max_defined, data, grid_count, config)
    {
        if (config.column.type == "clustered" || config.column.type == "3d column")
        {
            var _loc2 = com.amcharts.column.MinMax.getMax(data, -Number.MAX_VALUE, "value");
            _loc2 = com.amcharts.column.MinMax.getMax(data, _loc2, "start", config);
        } // end if
        if (config.column.type == "stacked")
        {
            _loc2 = com.amcharts.column.MinMax.getSumMax(data, -Number.MAX_VALUE, "value", config);
            _loc2 = com.amcharts.column.MinMax.getMax(data, _loc2, "value", config);
        } // end if
        if (config.column.type == "100% stacked")
        {
            _loc2 = com.amcharts.column.MinMax.getSumMax(data, -Number.MAX_VALUE, "percent", config);
            _loc2 = com.amcharts.column.MinMax.getMax(data, _loc2, "percent", config);
        } // end if
        if (isNaN(max_defined) == false && (max_defined >= _loc2 || config.values.value.strict_min_max == true))
        {
            _loc2 = max_defined;
        }
        else
        {
            max_defined = undefined;
        } // end else if
        if (config.column.type == "clustered" || config.column.type == "3d column")
        {
            var _loc1 = com.amcharts.column.MinMax.getMin(data, Number.MAX_VALUE, "value");
            _loc1 = com.amcharts.column.MinMax.getMin(data, _loc1, "start", config);
        } // end if
        if (config.column.type == "stacked")
        {
            _loc1 = com.amcharts.column.MinMax.getSumMin(data, Number.MAX_VALUE, "value", config);
            _loc1 = com.amcharts.column.MinMax.getMin(data, _loc1, "value", config);
        } // end if
        if (config.column.type == "100% stacked")
        {
            _loc1 = com.amcharts.column.MinMax.getSumMin(data, Number.MAX_VALUE, "percent", config);
            _loc1 = com.amcharts.column.MinMax.getMin(data, _loc1, "percent", config);
        } // end if
        var _loc4 = _loc1;
        if (isNaN(min_defined) == false && (min_defined <= _loc1 || config.values.value.strict_min_max == true))
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
        var _loc14 = _loc2 - _loc1;
        var _loc6;
        if (_loc14 == 0)
        {
            _loc6 = Math.pow(10, Math.floor(Math.log(Math.abs(_loc2)) * 4.342945E-001)) / 10;
        }
        else
        {
            _loc6 = Math.pow(10, Math.floor(Math.log(Math.abs(_loc14)) * 4.342945E-001)) / 10;
        } // end else if
        if (isNaN(max_defined) == true)
        {
            _loc2 = Math.ceil(_loc2 / _loc6) * _loc6 + _loc6;
        } // end if
        if (isNaN(min_defined) == true)
        {
            _loc1 = Math.floor(_loc1 / _loc6) * _loc6 - _loc6;
        } // end if
        if (config.column.type == "100% stacked")
        {
            if (_loc1 < -100)
            {
                _loc1 = -100;
            } // end if
            if (_loc2 > 100)
            {
                _loc2 = 100;
            } // end if
        } // end if
        _loc14 = _loc2 - _loc1;
        _loc6 = Math.pow(10, Math.floor(Math.log(Math.abs(_loc14)) * 4.342945E-001)) / 10;
        var _loc5 = Math.ceil(_loc14 / grid_count / _loc6) * _loc6;
        var _loc11 = Math.pow(10, Math.floor(Math.log(Math.abs(_loc5)) * 4.342945E-001));
        var _loc8 = Math.ceil(_loc5 / _loc11);
        if (_loc8 > 5)
        {
            _loc8 = 10;
        } // end if
        if (_loc8 <= 5 && _loc8 > 2)
        {
            _loc8 = 5;
        } // end if
        _loc5 = Math.ceil(_loc5 / (_loc11 * _loc8)) * _loc11 * _loc8;
        _loc1 = _loc5 * Math.floor(_loc1 / _loc5);
        _loc2 = _loc5 * Math.ceil(_loc2 / _loc5);
        if (_loc1 < 0 && _loc13 >= 0)
        {
            _loc1 = 0;
        } // end if
        if (_loc2 > 0 && _loc12 <= 0)
        {
            _loc2 = 0;
        } // end if
        if (_loc4 > 1 && _loc2 - _loc4 > 1)
        {
            _loc4 = Math.floor(_loc4);
        } // end if
        _loc14 = Math.pow(10, Math.floor(Math.log(Math.abs(_loc4)) * 4.342945E-001));
        if (_loc1 == 0)
        {
            _loc4 = _loc14;
        } // end if
        if (_loc1 == 0 && _loc4 > 1)
        {
            _loc4 = 1;
        } // end if
        if (_loc1 > 0 && _loc4 - _loc5 > 0)
        {
            if (_loc1 + _loc5 < _loc4)
            {
                _loc4 = _loc1 + _loc5;
            }
            else
            {
                _loc4 = _loc1;
            } // end if
        } // end else if
        return ([_loc1, _loc2, _loc5, _loc4]);
    } // End of the function
    static function getMax(data, max, val, config)
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
        max = com.amcharts.column.MinMax.getMaxOfGuides(max, config);
        return (max);
    } // End of the function
    static function getSumMax(data, max, val, config)
    {
        for (var _loc2 = 0; _loc2 < data[0].values.length; ++_loc2)
        {
            var _loc5 = 0;
            for (var _loc1 = 0; _loc1 < data.length; ++_loc1)
            {
                if (data[_loc1].values[_loc2][val] != null && data[_loc1].values[_loc2][val] > 0 && config.graphs.graph[_loc1].type != "line")
                {
                    _loc5 = _loc5 + data[_loc1].values[_loc2][val];
                } // end if
            } // end of for
            if (_loc5 > max)
            {
                max = _loc5;
            } // end if
        } // end of for
        max = com.amcharts.column.MinMax.getMaxOfGuides(max, config);
        return (max);
    } // End of the function
    static function getSumMin(data, min, val, config)
    {
        for (var _loc2 = 0; _loc2 < data[0].values.length; ++_loc2)
        {
            var _loc5 = 0;
            for (var _loc1 = 0; _loc1 < data.length; ++_loc1)
            {
                if (config.axes.value.logarithmic == true)
                {
                    if (data[_loc1].values[_loc2][val] != null && config.graphs.graph[_loc1].type != "line")
                    {
                        _loc5 = _loc5 + data[_loc1].values[_loc2][val];
                    } // end if
                    continue;
                } // end if
                if (data[_loc1].values[_loc2][val] != null && data[_loc1].values[_loc2][val] < 0 && config.graphs.graph[_loc1].type != "line")
                {
                    _loc5 = _loc5 + data[_loc1].values[_loc2][val];
                } // end if
            } // end of for
            if (_loc5 < min)
            {
                min = _loc5;
            } // end if
        } // end of for
        min = com.amcharts.column.MinMax.getMinOfGuides(min, config);
        return (min);
    } // End of the function
    static function getMin(data, min, val, config)
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
        min = com.amcharts.column.MinMax.getMinOfGuides(min, config);
        return (min);
    } // End of the function
    static function getMaxOfGuides(max, config)
    {
        if (config.guides.max_min == true)
        {
            for (var _loc1 = 0; _loc1 < config.guides.guide.length; ++_loc1)
            {
                if (config.guides.guide[_loc1].start_value > max)
                {
                    max = config.guides.guide[_loc1].start_value;
                } // end if
                if (config.guides.guide[_loc1].end_value > max)
                {
                    max = config.guides.guide[_loc1].end_value;
                } // end if
            } // end of for
        } // end if
        return (max);
    } // End of the function
    static function getMinOfGuides(min, config)
    {
        if (config.guides.max_min == true)
        {
            for (var _loc1 = 0; _loc1 < config.guides.guide.length; ++_loc1)
            {
                if (config.guides.guide[_loc1].start_value < min)
                {
                    min = config.guides.guide[_loc1].start_value;
                } // end if
                if (config.guides.guide[_loc1].end_value < min)
                {
                    min = config.guides.guide[_loc1].end_value;
                } // end if
            } // end of for
        } // end if
        return (min);
    } // End of the function
} // End of Class
