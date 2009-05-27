class com.amcharts.xy.PlotArea
{
    var __config, __mc, __color, __alpha, __width, __height, __border_color, __border_alpha, __dx, __dy, __plot_area_mc, __get__mc;
    function PlotArea(target_mc, name, depth, config)
    {
        __config = config;
        __mc = target_mc.createEmptyMovieClip(name, depth);
        __mc._x = __config.plot_area.margins.left;
        __mc._y = __config.plot_area.margins.top;
        __color = __config.plot_area.color;
        __alpha = __config.plot_area.alpha;
        __width = __config.plot_area.width;
        __height = __config.plot_area.height;
        __border_color = __config.plot_area.border_color;
        __border_alpha = __config.plot_area.border_alpha;
        __dx = __config.dx;
        __dy = __config.dy;
        this.__init();
    } // End of the function
    function __init()
    {
        var _loc3 = new com.amcharts.Rectangle(__mc, "rectangle_mc", 0, __width, __height, __color, 0, __border_color, 0, __alpha, __border_alpha);
        __plot_area_mc = _loc3.mc;
        if (__dx > 0 || __dy > 0)
        {
            _loc3.mc._x = __dx;
            _loc3.mc._y = __dy;
            var _loc2 = __color;
            if (_loc2.length > 0)
            {
                _loc2 = _loc2[_loc2.length - 1];
            } // end if
            var _loc4 = new com.amcharts.Shape(__mc, "xShape_mc", 1, [0, __dx, __width + __dx, __width, 0], [0, __dy, __dy, 0, 0], _loc2, 0, 0, __alpha, 0);
            _loc4.mc._y = __height;
            new com.amcharts.Brightness(_loc4.mc, -15);
            var _loc5 = new com.amcharts.Shape(__mc, "yShape_mc", 2, [0, 0, __dx, __dx, 0], [0, __height, __height + __dy, __dy, 0], __color, 0, 0, __alpha, 0);
            new com.amcharts.Brightness(_loc5.mc, -5);
        } // end if
    } // End of the function
    function get mc()
    {
        return (__plot_area_mc);
    } // End of the function
} // End of Class
