class com.amcharts.xy.GraphLine
{
    var __mc, __get__mc;
    function GraphLine(target_mc, name, depth, x, y, width, color, line_alpha)
    {
        __mc = target_mc.createEmptyMovieClip(name, depth);
        __mc.lineStyle(width, color, line_alpha);
        for (var _loc2 = 0; _loc2 < x.length; ++_loc2)
        {
            if (y[_loc2 - 1] != null && y[_loc2 - 1] != undefined && x[_loc2 - 1] != null && x[_loc2 - 1] != undefined)
            {
                if (y[_loc2] != null && y[_loc2] != undefined && x[_loc2] != null && x[_loc2] != undefined)
                {
                    __mc.lineTo(x[_loc2], y[_loc2]);
                } // end if
                continue;
            } // end if
            var _loc5 = _loc2;
            __mc.moveTo(x[_loc2], y[_loc2]);
        } // end of for
    } // End of the function
    function get mc()
    {
        return (__mc);
    } // End of the function
} // End of Class
