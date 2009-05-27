class com.amcharts.Slice
{
    var __mc, __get__mc;
    function Slice(target_mc, name, depth, start_angle, arc, color, radius, y_radius, inner_radius, alpha, border_width, border_color, border_alpha, height, gradient, gradient_ratio)
    {
        var _loc29 = -30;
        __mc = target_mc.createEmptyMovieClip(name, depth);
        if (y_radius == undefined || y_radius == 0)
        {
            y_radius = radius;
        } // end if
        if (inner_radius == undefined)
        {
            inner_radius = 0;
        } // end if
        var _loc14 = y_radius / radius * inner_radius;
        if (Math.abs(arc) > 360)
        {
            arc = 360;
        } // end if
        var _loc22 = __mc.createEmptyMovieClip("wedge_mc", 10);
        _loc22.lineStyle(border_width, border_color, border_alpha);
        if (gradient == "radial" || gradient == "linear")
        {
            var _loc31 = new flash.geom.Matrix();
            _loc31.createGradientBox(radius * 2, y_radius * 2, 0, -radius, -y_radius);
            var _loc24 = new Array();
            var _loc23 = new Array();
            var _loc27 = new Array();
            for (var _loc2 = 0; _loc2 < gradient_ratio.length; ++_loc2)
            {
                _loc24[_loc2] = com.amcharts.Colors.adjustLuminosity(color, gradient_ratio[_loc2]);
                _loc23[_loc2] = 100;
                _loc27[_loc2] = 255 / (gradient_ratio.length - 1) * _loc2;
            } // end of for
            _loc22.beginGradientFill(gradient, _loc24, _loc23, _loc27, _loc31);
        }
        else
        {
            _loc22.beginFill(color, alpha);
        } // end else if
        var _loc13 = Math.cos(start_angle / 180 * 3.141593E+000) * inner_radius;
        var _loc12 = Math.sin(-start_angle / 180 * 3.141593E+000) * _loc14;
        var _loc16 = Math.cos(start_angle / 180 * 3.141593E+000) * radius;
        var _loc15 = Math.sin(-start_angle / 180 * 3.141593E+000) * y_radius;
        var _loc21 = Math.cos((start_angle + arc) / 180 * 3.141593E+000) * radius;
        var _loc19 = Math.sin((-start_angle - arc) / 180 * 3.141593E+000) * y_radius;
        var _loc20 = Math.cos((start_angle + arc) / 180 * 3.141593E+000) * inner_radius;
        var _loc18 = Math.sin((-start_angle - arc) / 180 * 3.141593E+000) * _loc14;
        __mc.ix = Math.cos((start_angle + arc / 2) / 180 * 3.141593E+000);
        __mc.iy = Math.sin((-start_angle - arc / 2) / 180 * 3.141593E+000) * (y_radius / radius);
        _loc22.moveTo(_loc13, _loc12);
        _loc22.lineTo(_loc16, _loc15);
        this.__drawCurve(_loc22, arc, start_angle, radius, y_radius, 0, 0);
        _loc22.lineTo(_loc20, _loc18);
        if (inner_radius > 0)
        {
            this.__drawCurve(_loc22, -arc, start_angle + arc, inner_radius, _loc14, 0, 0);
        } // end if
        if (height > 0)
        {
            var _loc3 = 1;
            var _loc28 = Math.ceil(height / _loc3);
            var _loc25 = __mc.createEmptyMovieClip("border0_mc", 0);
            var _loc26 = __mc.createEmptyMovieClip("border1_mc", 1);
            for (var _loc2 = 0; _loc2 < _loc28; ++_loc2)
            {
                var _loc4 = _loc25.createEmptyMovieClip("border" + _loc2, _loc2);
                _loc4.beginFill(color, alpha);
                _loc4.moveTo(_loc13, _loc12 + _loc3 * _loc2);
                this.__drawCurve(_loc4, arc, start_angle, inner_radius, _loc14, 0, _loc3 * _loc2);
                _loc4.lineTo(_loc20, _loc18 + _loc3 * (_loc2 + 1));
                this.__drawCurve(_loc4, -arc, start_angle + arc, inner_radius, _loc14, 0, _loc3 * (_loc2 + 1));
                _loc4.lineTo(_loc13, _loc12 + _loc3 * _loc2);
                _loc4 = _loc26.createEmptyMovieClip("border" + _loc2, _loc2);
                _loc4.beginFill(color, alpha);
                _loc4.moveTo(_loc16, _loc15 + _loc3 * _loc2);
                this.__drawCurve(_loc4, arc, start_angle, radius, y_radius, 0, _loc3 * _loc2);
                _loc4.lineTo(_loc21, _loc19 + _loc3 * (_loc2 + 1));
                this.__drawCurve(_loc4, -arc, start_angle + arc, radius, y_radius, 0, _loc3 * (_loc2 + 1));
                _loc4.lineTo(_loc16, _loc15 + _loc3 * _loc2);
            } // end of for
            new com.amcharts.Brightness(_loc25, _loc29);
            new com.amcharts.Brightness(_loc26, _loc29);
            var _loc34 = new com.amcharts.Shape(__mc, "border2_mc", 2, [_loc13, _loc13, _loc16, _loc16, _loc13], [_loc12, _loc12 + height, _loc15 + height, _loc15, _loc12], color, 0, 0, alpha, 0);
            var _loc33 = new com.amcharts.Shape(__mc, "border3_mc", 3, [_loc21, _loc21, _loc20, _loc20, _loc21], [_loc19, _loc19 + height, _loc18 + height, _loc18, _loc19], color, 0, 0, alpha, 0);
            new com.amcharts.Brightness(_loc34.mc, _loc29);
            new com.amcharts.Brightness(_loc33.mc, _loc29);
        } // end if
    } // End of the function
    function __drawCurve(target_mc, arc, start_angle, radius, y_radius, dx, dy)
    {
        var _loc13 = Math.ceil(Math.abs(arc) / 45);
        var _loc15 = arc / _loc13;
        var _loc1 = -_loc15 / 180 * 3.141593E+000;
        var _loc2 = -start_angle / 180 * 3.141593E+000;
        for (var _loc4 = 0; _loc4 < _loc13; ++_loc4)
        {
            _loc2 = _loc2 + _loc1;
            var _loc3 = _loc2 - _loc1 / 2;
            var _loc8 = Math.cos(_loc2) * radius + dx;
            var _loc7 = Math.sin(_loc2) * y_radius + dy;
            var _loc6 = Math.cos(_loc3) * (radius / Math.cos(_loc1 / 2)) + dx;
            var _loc5 = Math.sin(_loc3) * (y_radius / Math.cos(_loc1 / 2)) + dy;
            target_mc.curveTo(_loc6, _loc5, _loc8, _loc7);
        } // end of for
    } // End of the function
    function get mc()
    {
        return (__mc);
    } // End of the function
} // End of Class
