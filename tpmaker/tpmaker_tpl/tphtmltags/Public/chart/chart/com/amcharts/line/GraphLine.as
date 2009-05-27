class com.amcharts.line.GraphLine
{
    var __mc, __get__mc;
    function GraphLine(target_mc, name, depth, x, y, indexes, width, color, is_connected, line_alpha, fill_alpha, base_y, data, type, graph_index, vertical_lines, axis, config, v_shift, v_width)
    {
        __mc = target_mc.createEmptyMovieClip(name, depth);
        if (fill_alpha > 0)
        {
            if (color.length > 0)
            {
                var _loc20 = new Array();
                var _loc19 = new Array();
                for (var _loc4 = 0; _loc4 < color.length; ++_loc4)
                {
                    _loc20[_loc4] = 255 / (color.length - 1) * _loc4;
                    _loc19[_loc4] = fill_alpha;
                } // end of for
                var _loc22 = new flash.geom.Matrix();
                _loc22.createGradientBox(config.plot_area.width, config.plot_area.height, 1.570796E+000, 0, -config.plot_area.height);
                __mc.beginGradientFill("linear", color, _loc19, _loc20, _loc22);
            }
            else
            {
                __mc.beginFill(color, fill_alpha);
            } // end if
        } // end else if
        __mc.lineStyle(width, color, line_alpha);
        if (is_connected == false || is_connected == undefined)
        {
            for (var _loc4 = 0; _loc4 < x.length; ++_loc4)
            {
                if (y[_loc4 - 1] != null && y[_loc4 - 1] != undefined && x[_loc4 - 1] != null && x[_loc4 - 1] != undefined)
                {
                    if (y[_loc4] != null && y[_loc4] != undefined && x[_loc4] != null && x[_loc4] != undefined)
                    {
                        __mc.lineTo(x[_loc4], y[_loc4]);
                    }
                    else if (fill_alpha > 0)
                    {
                        if (type == "stacked" || type == "100% stacked")
                        {
                            for (var _loc6 = _loc4 - 1; _loc6 > first - 1; --_loc6)
                            {
                                __mc.lineTo(x[_loc6], this.__getPreviousY(data, graph_index - 1, indexes[_loc6], base_y, axis, config));
                            } // end of for
                        }
                        else
                        {
                            __mc.lineTo(x[_loc4 - 1], base_y);
                            __mc.lineTo(x[first], base_y);
                        } // end else if
                    } // end else if
                    continue;
                } // end if
                var first = _loc4;
                __mc.moveTo(x[_loc4], y[_loc4]);
            } // end of for
            if (fill_alpha > 0)
            {
                if (type == "stacked" || type == "100% stacked")
                {
                    if (y[_loc4 - 1] != null)
                    {
                        for (var _loc6 = _loc4 - 1; _loc6 > first - 1; --_loc6)
                        {
                            __mc.lineTo(x[_loc6], this.__getPreviousY(data, graph_index - 1, indexes[_loc6], base_y, axis, config));
                        } // end of for
                    } // end if
                }
                else
                {
                    __mc.lineTo(x[_loc4 - 1], base_y);
                    __mc.lineTo(x[first], base_y);
                } // end else if
                __mc.endFill();
            } // end if
        }
        else
        {
            for (var _loc4 = 0; _loc4 < y.length; ++_loc4)
            {
                if (y[_loc4] != null && y[_loc4] != undefined && x[_loc4] != null && x[_loc4] != undefined)
                {
                    var first = _loc4;
                    break;
                } // end if
            } // end of for
            for (var _loc4 = y.length; _loc4 >= 0; --_loc4)
            {
                if (y[_loc4] != null && y[_loc4] != undefined && x[_loc4] != null && x[_loc4] != undefined)
                {
                    var _loc13 = _loc4;
                    break;
                } // end if
            } // end of for
            if (isNaN(first) == false && isNaN(_loc13) == false)
            {
                __mc.moveTo(x[first], y[first]);
                for (var _loc4 = first; _loc4 <= _loc13; ++_loc4)
                {
                    if (y[_loc4] != null && y[_loc4] != undefined && x[_loc4] != null && x[_loc4] != undefined)
                    {
                        __mc.lineTo(x[_loc4], y[_loc4]);
                    } // end if
                } // end of for
                if (fill_alpha > 0)
                {
                    if (type == "stacked" || type == "100% stacked")
                    {
                        for (var _loc6 = _loc13; _loc6 > first - 1; --_loc6)
                        {
                            var _loc15 = this.__getPreviousY(data, graph_index - 1, indexes[_loc6], base_y, axis, config);
                            if (_loc15 != null)
                            {
                                __mc.lineTo(x[_loc6], this.__getPreviousY(data, graph_index - 1, indexes[_loc6], base_y, axis, config));
                            } // end if
                        } // end of for
                    }
                    else
                    {
                        __mc.lineTo(x[_loc13], base_y);
                        __mc.lineTo(x[first], base_y);
                    } // end if
                } // end if
            } // end else if
        } // end else if
        if (fill_alpha > 0)
        {
            __mc.endFill();
        } // end if
        if (vertical_lines == true)
        {
            for (var _loc4 = 0; _loc4 < x.length; ++_loc4)
            {
                if (y[_loc4] != null && y[_loc4] != undefined && x[_loc4] != null && x[_loc4] != undefined)
                {
                    if (v_width <= 1)
                    {
                        var _loc14 = new com.amcharts.Line(__mc, "v_line_mc" + _loc4, _loc4, [0, 0], [base_y, y[_loc4]], 0, color, 100);
                    }
                    else
                    {
                        _loc14 = new com.amcharts.Rectangle(__mc, "v_line_mc" + _loc4, _loc4, v_width, y[_loc4] - base_y, color, 0, 0, 0, config.vertical_lines.alpha, 0);
                        _loc14.mc._y = base_y;
                    } // end else if
                    _loc14.mc._x = x[_loc4] + v_shift;
                } // end if
            } // end of for
        } // end if
    } // End of the function
    function __getPreviousY(data, index, value_index, base_y, axis, config)
    {
        if (index < 0)
        {
            return (base_y);
        } // end if
        if (config.graphs.graph[index].axis == axis)
        {
            if (config.rescale_on_hide == true && config.graphs.graph[index].hidden == true)
            {
                return (this.__getPreviousY(data, index - 1, value_index, base_y, axis, config));
            } // end if
            if (data.graphs.graph[index].values[value_index].y == null)
            {
                return (this.__getPreviousY(data, index - 1, value_index, base_y, axis, config));
            }
            else
            {
                return (data.graphs.graph[index].values[value_index].y);
            } // end else if
        }
        else
        {
            return (this.__getPreviousY(data, index - 1, value_index, base_y, axis, config));
        } // end else if
    } // End of the function
    function get mc()
    {
        return (__mc);
    } // End of the function
} // End of Class
