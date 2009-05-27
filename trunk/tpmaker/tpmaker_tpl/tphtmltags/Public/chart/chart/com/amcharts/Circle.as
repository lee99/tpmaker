class com.amcharts.Circle
{
    var __mc, __get__mc;
    function Circle(target_mc, name, depth, color, radius, inner_radius, alpha, border_width, border_color, border_alpha, inner_border_alpha, gradient, gradient_ratio)
    {
        __mc = target_mc.createEmptyMovieClip(name, depth);
        __mc.lineStyle(border_width, border_color, border_alpha);
        if (gradient == "radial" || gradient == "linear")
        {
            var _loc10 = new flash.geom.Matrix();
            _loc10.createGradientBox(radius * 2, radius * 2, 0, -radius, -radius);
            var _loc6 = new Array();
            var _loc4 = new Array();
            var _loc7 = new Array();
            for (var _loc2 = 0; _loc2 < gradient_ratio.length; ++_loc2)
            {
                _loc6[_loc2] = com.amcharts.Colors.adjustLuminosity(color, gradient_ratio[_loc2]);
                _loc4[_loc2] = 100;
                _loc7[_loc2] = 255 / (gradient_ratio.length - 1) * _loc2;
            } // end of for
            __mc.beginGradientFill(gradient, _loc6, _loc4, _loc7, _loc10);
        }
        else
        {
            __mc.beginFill(color, alpha);
        } // end else if
        var _loc21 = 1 * inner_radius;
        var _loc20 = 0 * inner_radius;
        var _loc15 = 1 * radius;
        var _loc14 = 0 * radius;
        var _loc19 = 1 * radius;
        var _loc18 = 2.449213E-016 * radius;
        var _loc13 = 1 * inner_radius;
        var _loc12 = 2.449213E-016 * inner_radius;
        __mc.moveTo(_loc15, _loc14);
        this.__drawCircle(__mc, radius);
        __mc.moveTo(_loc13, _loc12);
        if (inner_radius > 0)
        {
            __mc.lineStyle(border_width, border_color, inner_border_alpha);
            this.__drawCircle(__mc, inner_radius);
        } // end if
    } // End of the function
    function __drawCircle(target_mc, radius)
    {
        var _loc12 = 360;
        var _loc13 = 0;
        var _loc10 = Math.ceil(Math.abs(_loc12) / 45);
        var _loc14 = _loc12 / _loc10;
        var _loc1 = -_loc14 / 180 * 3.141593E+000;
        var _loc2 = -_loc13 / 180 * 3.141593E+000;
        for (var _loc5 = 0; _loc5 < _loc10; ++_loc5)
        {
            _loc2 = _loc2 + _loc1;
            var _loc3 = _loc2 - _loc1 / 2;
            var _loc9 = Math.cos(_loc2) * radius;
            var _loc8 = Math.sin(_loc2) * radius;
            var _loc7 = Math.cos(_loc3) * (radius / Math.cos(_loc1 / 2));
            var _loc6 = Math.sin(_loc3) * (radius / Math.cos(_loc1 / 2));
            target_mc.curveTo(_loc7, _loc6, _loc9, _loc8);
        } // end of for
    } // End of the function
    function get mc()
    {
        return (__mc);
    } // End of the function
} // End of Class
