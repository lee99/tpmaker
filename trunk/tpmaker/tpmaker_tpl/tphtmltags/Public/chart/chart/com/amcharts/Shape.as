class com.amcharts.Shape
{
    var __x, __y, __border_color, __mc, __gradient, __get__mc;
    function Shape(target_mc, name, depth, x, y, bg_color, border_width, border_color, bg_alpha, border_alpha)
    {
        __x = x;
        __y = y;
        __bg_color = bg_color || __bg_color;
        __border_width = border_width || __border_width;
        __border_color = border_color !== undefined ? (border_color) : (__bg_color);
        __bg_alpha = bg_alpha !== undefined ? (bg_alpha) : (__bg_alpha);
        __border_alpha = border_alpha !== undefined ? (border_alpha) : (__border_alpha);
        __mc = target_mc.createEmptyMovieClip(name, depth);
        this.__init();
    } // End of the function
    function __init()
    {
        if (__border_width == undefined || __border_width == null)
        {
            __mc.lineStyle(0, __bg_color, __border_alpha);
        }
        else
        {
            __mc.lineStyle(__border_width, __border_color, __border_alpha);
        } // end else if
        if (__bg_color.length > 0)
        {
            var _loc4 = new Array();
            for (var _loc2 = 0; _loc2 < __bg_color.length; ++_loc2)
            {
                _loc4[_loc2] = 255 / (__bg_color.length - 1) * _loc2;
                if (typeof(__bg_alpha) != "object")
                {
                    var _loc3 = __bg_alpha;
                    __bg_alpha = new Array();
                } // end if
                if (__bg_alpha[_loc2] == undefined)
                {
                    __bg_alpha[_loc2] = _loc3;
                } // end if
            } // end of for
            var _loc7 = com.amcharts.Arrays.getMax(__x) - com.amcharts.Arrays.getMin(__x);
            var _loc6 = com.amcharts.Arrays.getMax(__y) - com.amcharts.Arrays.getMin(__y);
            trace (_loc7 + " " + _loc6);
            if (__gradient == "horizontal")
            {
                var _loc8 = 0;
            }
            else
            {
                _loc8 = 1.570796E+000;
            } // end else if
            var _loc5 = new flash.geom.Matrix();
            _loc5.createGradientBox(_loc7, _loc6, _loc8, 0, 0);
            __mc.beginGradientFill("linear", __bg_color, __bg_alpha, _loc4, _loc5);
        }
        else if (__bg_color != undefined && __bg_color != null)
        {
            __mc.beginFill(__bg_color, __bg_alpha);
        } // end else if
        __mc.moveTo(__x[0], __y[0]);
        for (var _loc2 = 1; _loc2 < __x.length; ++_loc2)
        {
            __mc.lineTo(__x[_loc2], __y[_loc2]);
        } // end of for
        if (__bg_color != undefined || __bg_color != null)
        {
            __mc.endFill();
        } // end if
    } // End of the function
    function get mc()
    {
        return (__mc);
    } // End of the function
    var __bg_color = 0;
    var __border_width = 0;
    var __bg_alpha = 100;
    var __border_alpha = 100;
} // End of Class
