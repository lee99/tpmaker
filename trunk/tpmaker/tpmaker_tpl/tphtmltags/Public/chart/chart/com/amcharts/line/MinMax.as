class com.amcharts.line.MinMax
{
    function MinMax()
    {
    } // End of the function
    static function calculate(min_defined, max_defined, data, grid_count, config, axis)
    {
        if (config.axes["y_" + axis].type == "line")
        {
            var _loc2 = com.amcharts.line.MinMax.getMax(data, -Number.MAX_VALUE, axis, "value", config);
        } // end if
        if (config.axes["y_" + axis].type == "stacked")
        {
            _loc2 = com.amcharts.line.MinMax.getSumMax(data, -Number.MAX_VALUE, axis, "value", config);
            _loc2 = com.amcharts.line.MinMax.getMaxOfGraph(data[com.amcharts.line.MinMax.getGraphIndexofAxis(data, axis, config)], _loc2, "value", config);
        } // end if
        if (config.axes["y_" + axis].type == "100% stacked")
        {
            _loc2 = com.amcharts.line.MinMax.getMaxOfGraph(data[com.amcharts.line.MinMax.getGraphIndexofAxis(data, axis, config)], -Number.MAX_VALUE, "percent", config);
            _loc2 = com.amcharts.line.MinMax.getSumMax(data, _loc2, axis, "percent", config);
        } // end if
        if (isNaN(max_defined) == false && (max_defined >= _loc2 || config.values["y_" + axis].strict_min_max == true))
        {
            _loc2 = max_defined;
        }
        else
        {
            max_defined = undefined;
        } // end else if
        if (config.axes["y_" + axis].type == "line")
        {
            var _loc1 = com.amcharts.line.MinMax.getMin(data, Number.MAX_VALUE, axis, "value", config);
        } // end if
        if (config.axes["y_" + axis].type == "stacked")
        {
            _loc1 = com.amcharts.line.MinMax.getSumMin(data, Number.MAX_VALUE, axis, "value", config);
            _loc1 = com.amcharts.line.MinMax.getMinOfGraph(data[com.amcharts.line.MinMax.getGraphIndexofAxis(data, axis, config)], _loc1, "value", config);
        } // end if
        if (config.axes["y_" + axis].type == "100% stacked")
        {
            _loc1 = com.amcharts.line.MinMax.getSumMin(data, Number.MAX_VALUE, axis, "percent", config);
            if (_loc1 > 0)
            {
                _loc1 = 0;
            } // end if
        } // end if
        var _loc5 = _loc1;
        if (isNaN(min_defined) == false && (min_defined <= _loc1 || config.values["y_" + axis].strict_min_max == true))
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
        if (_loc1 > _loc2)
        {
            _loc1 = _loc2 - 1;
        } // end if
        var _loc14 = _loc1;
        var _loc13 = _loc2;
        var _loc15 = _loc2 - _loc1;
        var _loc7;
        if (_loc15 == 0)
        {
            _loc7 = Math.pow(10, Math.floor(Math.log(Math.abs(_loc2)) * 4.342945E-001)) / 10;
        }
        else
        {
            _loc7 = Math.pow(10, Math.floor(Math.log(Math.abs(_loc15)) * 4.342945E-001)) / 10;
        } // end else if
        if (isNaN(max_defined) == true)
        {
            _loc2 = Math.ceil(_loc2 / _loc7) * _loc7 + _loc7;
        } // end if
        if (isNaN(min_defined) == true)
        {
            _loc1 = Math.floor(_loc1 / _loc7) * _loc7 - _loc7;
        } // end if
        if (config.axes["y_" + axis].type == "100% stacked")
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
        _loc15 = _loc2 - _loc1;
        _loc7 = Math.pow(10, Math.floor(Math.log(Math.abs(_loc15)) * 4.342945E-001)) / 10;
        var _loc6 = Math.ceil(_loc15 / grid_count / _loc7) * _loc7;
        var _loc12 = Math.pow(10, Math.floor(Math.log(Math.abs(_loc6)) * 4.342945E-001));
        var _loc9 = Math.ceil(_loc6 / _loc12);
        if (_loc9 > 5)
        {
            _loc9 = 10;
        } // end if
        if (_loc9 <= 5 && _loc9 > 2)
        {
            _loc9 = 5;
        } // end if
        _loc6 = Math.ceil(_loc6 / (_loc12 * _loc9)) * _loc12 * _loc9;
        _loc1 = _loc6 * Math.floor(_loc1 / _loc6);
        _loc2 = _loc6 * Math.ceil(_loc2 / _loc6);
        if (_loc1 < 0 && _loc14 >= 0)
        {
            _loc1 = 0;
        } // end if
        if (_loc2 > 0 && _loc13 <= 0)
        {
            _loc2 = 0;
        } // end if
        if (_loc5 > 1 && _loc2 - _loc5 > 1)
        {
            _loc5 = Math.floor(_loc5);
        } // end if
        _loc15 = Math.pow(10, Math.floor(Math.log(Math.abs(_loc5)) * 4.342945E-001));
        if (_loc1 == 0)
        {
            _loc5 = _loc15;
        } // end if
        if (_loc1 == 0 && _loc5 > 1)
        {
            _loc5 = 1;
        } // end if
        if (_loc1 > 0 && _loc5 - _loc6 > 0)
        {
            if (_loc1 + _loc6 < _loc5)
            {
                _loc5 = _loc1 + _loc6;
            }
            else
            {
                _loc5 = _loc1;
            } // end if
        } // end else if
        return ([_loc1, _loc2, _loc6, _loc5]);
    } // End of the function
    static function getMax(data, max, axis, val, config)
    {
        var _loc10 = data.length;
        for (var _loc1 = 0; _loc1 < _loc10; ++_loc1)
        {
            if (config.rescale_on_hide == true && config.graphs.graph[_loc1].hidden == true && config.axes["y_" + axis].type == "line")
            {
                continue;
            } // end if
            if (config.graphs.graph[_loc1].axis == axis)
            {
                var _loc7 = config.start;
                if (data[_loc1].values[_loc7][val] == null)
                {
                    for (var _loc3 = config.start; _loc3 > -1; --_loc3)
                    {
                        if (data[_loc1].values[_loc3][val] != null)
                        {
                            _loc7 = _loc3;
                            break;
                        } // end if
                    } // end of for
                } // end if
                var _loc5 = config.end;
                if (data[_loc1].values[_loc5 - 1][val] == null)
                {
                    for (var _loc3 = _loc5; _loc3 < data[_loc1].values.length; ++_loc3)
                    {
                        if (data[_loc1].values[_loc3][val] != null)
                        {
                            _loc5 = _loc3 + 1;
                            break;
                        } // end if
                    } // end of for
                } // end if
                for (var _loc3 = _loc7; _loc3 < _loc5; ++_loc3)
                {
                    if (data[_loc1].values[_loc3][val] > max)
                    {
                        max = data[_loc1].values[_loc3][val];
                    } // end if
                } // end of for
            } // end if
        } // end of for
        max = com.amcharts.line.MinMax.getMaxOfGuides(max, axis, config);
        return (max);
    } // End of the function
    static function getMin(data, min, axis, val, config)
    {
        var _loc10 = data.length;
        for (var _loc1 = 0; _loc1 < _loc10; ++_loc1)
        {
            if (config.rescale_on_hide == true && config.graphs.graph[_loc1].hidden == true && config.axes["y_" + axis].type == "line")
            {
                continue;
            } // end if
            if (config.graphs.graph[_loc1].axis == axis)
            {
                var _loc7 = config.start;
                if (data[_loc1].values[_loc7][val] == null)
                {
                    for (var _loc3 = config.start; _loc3 > -1; --_loc3)
                    {
                        if (data[_loc1].values[_loc3][val] != null)
                        {
                            _loc7 = _loc3;
                            break;
                        } // end if
                    } // end of for
                } // end if
                var _loc5 = config.end;
                if (data[_loc1].values[_loc5 - 1][val] == null)
                {
                    for (var _loc3 = _loc5; _loc3 < data[_loc1].values.length; ++_loc3)
                    {
                        if (data[_loc1].values[_loc3][val] != null)
                        {
                            _loc5 = _loc3 + 1;
                            break;
                        } // end if
                    } // end of for
                } // end if
                for (var _loc3 = _loc7; _loc3 < _loc5; ++_loc3)
                {
                    if (data[_loc1].values[_loc3][val] < min)
                    {
                        min = data[_loc1].values[_loc3][val];
                    } // end if
                } // end of for
            } // end if
        } // end of for
        min = com.amcharts.line.MinMax.getMinOfGuides(min, axis, config);
        return (min);
    } // End of the function
    static function getSumMax(data, max, axis, val, config)
    {
        for (var _loc4 = config.start; _loc4 < config.end; ++_loc4)
        {
            var _loc3 = 0;
            var _loc8 = data.length;
            for (var _loc1 = 0; _loc1 < _loc8; ++_loc1)
            {
                if (config.rescale_on_hide == true && config.graphs.graph[_loc1].hidden == true)
                {
                    continue;
                } // end if
                if (config.graphs.graph[_loc1].axis == axis)
                {
                    if (data[_loc1].values[_loc4][val] != null)
                    {
                        _loc3 = _loc3 + data[_loc1].values[_loc4][val];
                    } // end if
                    if (_loc3 > max)
                    {
                        max = _loc3;
                    } // end if
                } // end if
            } // end of for
        } // end of for
        max = com.amcharts.line.MinMax.getMaxOfGuides(max, axis, config);
        return (max);
    } // End of the function
    static function getSumMin(data, min, axis, val, config)
    {
        for (var _loc4 = config.start; _loc4 < config.end; ++_loc4)
        {
            var _loc3 = 0;
            var _loc10 = 0;
            var _loc8 = data.length;
            for (var _loc1 = 0; _loc1 < _loc8; ++_loc1)
            {
                if (config.rescale_on_hide == true && config.graphs.graph[_loc1].hidden == true)
                {
                    continue;
                } // end if
                if (config.graphs.graph[_loc1].axis == axis)
                {
                    if (data[_loc1].values[_loc4][val] != null)
                    {
                        _loc3 = _loc3 + data[_loc1].values[_loc4][val];
                    } // end if
                    if (_loc3 < min)
                    {
                        min = _loc3;
                    } // end if
                } // end if
            } // end of for
        } // end of for
        min = com.amcharts.line.MinMax.getMinOfGuides(min, axis, config);
        return (min);
    } // End of the function
    static function getMaxOfGuides(max, axis, config)
    {
        if (config.guides.max_min == true)
        {
            for (var _loc1 = 0; _loc1 < config.guides.guide.length; ++_loc1)
            {
                if (config.guides.guide[_loc1].axis == axis)
                {
                    if (config.guides.guide[_loc1].start_value > max)
                    {
                        max = config.guides.guide[_loc1].start_value;
                    } // end if
                    if (config.guides.guide[_loc1].end_value > max)
                    {
                        max = config.guides.guide[_loc1].end_value;
                    } // end if
                } // end if
            } // end of for
        } // end if
        return (max);
    } // End of the function
    static function getMinOfGuides(min, axis, config)
    {
        if (config.guides.max_min == true)
        {
            for (var _loc1 = 0; _loc1 < config.guides.guide.length; ++_loc1)
            {
                if (config.guides.guide[_loc1].axis == axis)
                {
                    if (config.guides.guide[_loc1].start_value < min)
                    {
                        min = config.guides.guide[_loc1].start_value;
                    } // end if
                    if (config.guides.guide[_loc1].end_value < min)
                    {
                        min = config.guides.guide[_loc1].end_value;
                    } // end if
                } // end if
            } // end of for
        } // end if
        return (min);
    } // End of the function
    static function getMaxOfGraph(data, max, val, config)
    {
        for (var _loc1 = config.start; _loc1 < config.end; ++_loc1)
        {
            if (data.values[_loc1][val] > max)
            {
                max = data.values[_loc1][val];
            } // end if
        } // end of for
        return (max);
    } // End of the function
    static function getMinOfGraph(data, min, val, config)
    {
        for (var _loc1 = config.start; _loc1 < config.end; ++_loc1)
        {
            if (data.values[_loc1][val] < min)
            {
                min = data.values[_loc1][val];
            } // end if
        } // end of for
        return (min);
    } // End of the function
    static function getGraphIndexofAxis(data, axis, config)
    {
        for (var _loc1 = 0; _loc1 < data.length; ++_loc1)
        {
            if (config.graphs.graph[_loc1].hidden == true && config.rescale_on_hide == true)
            {
                continue;
            } // end if
            if (config.graphs.graph[_loc1].axis == axis)
            {
                return (_loc1);
            } // end if
        } // end of for
    } // End of the function
} // End of Class
