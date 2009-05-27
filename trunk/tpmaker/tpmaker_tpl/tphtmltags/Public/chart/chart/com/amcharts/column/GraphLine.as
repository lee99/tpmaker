class com.amcharts.column.GraphLine
{
    var __mc, __get__mc;
    function GraphLine(target_mc, name, depth, x, y, width, color, is_connected, line_alpha, fill_alpha, base_val, type)
    {
        __mc = target_mc.createEmptyMovieClip(name, depth);
        if (fill_alpha > 0)
        {
            __mc.beginFill(color, fill_alpha);
        } // end if
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
                        __mc.lineTo(x[_loc4 - 1], base_val);
                        __mc.lineTo(x[first], base_val);
                    } // end else if
                    continue;
                } // end if
                var first = _loc4;
                __mc.moveTo(x[_loc4], y[_loc4]);
            } // end of for
            if (fill_alpha > 0)
            {
                if (type == "bar")
                {
                    __mc.lineTo(base_val, y[_loc4 - 1]);
                    __mc.lineTo(base_val, y[first]);
                }
                else
                {
                    __mc.lineTo(x[_loc4 - 1], base_val);
                    __mc.lineTo(x[first], base_val);
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
                    var _loc5 = _loc4;
                    break;
                } // end if
            } // end of for
            __mc.moveTo(x[first], y[first]);
            for (var _loc4 = first; _loc4 <= _loc5; ++_loc4)
            {
                if (y[_loc4] != null && y[_loc4] != undefined && x[_loc4] != null && x[_loc4] != undefined)
                {
                    __mc.lineTo(x[_loc4], y[_loc4]);
                } // end if
            } // end of for
            if (fill_alpha > 0)
            {
                __mc.lineTo(x[_loc5], base_val);
                __mc.lineTo(x[first], base_val);
            } // end if
        } // end else if
        if (fill_alpha > 0)
        {
            __mc.endFill();
        } // end if
    } // End of the function
    function get mc()
    {
        return (__mc);
    } // End of the function
} // End of Class
