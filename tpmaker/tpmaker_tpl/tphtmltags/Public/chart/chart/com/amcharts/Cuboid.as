class com.amcharts.Cuboid
{
    var __mc, __column_mc, __border_alpha, __border_color, __border_width, __alpha, __color, __width, __height, __gradient, __dx, __dy, __get__height, __get__width, __set__height, __get__mc, __set__width;
    function Cuboid(target_mc, name, depth, width, height, angle, deep, color, alpha, border_width, border_color, border_alpha, gradient)
    {
        __mc = target_mc.createEmptyMovieClip(name, depth);
        __column_mc = __mc.createEmptyMovieClip("column_mc", 0);
        __border_alpha = border_alpha;
        __border_color = border_color;
        __border_width = border_width;
        __alpha = alpha;
        __color = color;
        __width = width;
        __height = height;
        __gradient = gradient;
        __dx = deep * Math.cos(angle * 3.141593E+000 / 180);
        __dy = -deep * Math.sin(angle * 3.141593E+000 / 180);
        this.__init();
    } // End of the function
    function __init()
    {
        if (__height < 0)
        {
            __height = Math.abs(__height);
            __deltaY = __height;
        } // end if
        var _loc5 = new com.amcharts.Rectangle(__column_mc, "front_mc", 10, __width, __height, __color, __border_width, __border_color, 0, __alpha, __border_alpha, __gradient);
        _loc5.mc._y = -__height;
        if (__dx != 0 && __dy != 0)
        {
            var _loc9 = new com.amcharts.Shape(__column_mc, "left_mc", 4, [0, 0, __dx, __dx, 0], [0, -__height, -__height + __dy, __dy, 0], __color, 0, 0, __alpha, 0);
            new com.amcharts.Brightness(_loc9.mc, -15);
            var _loc3 = new com.amcharts.Shape(__column_mc, "right_mc", 6, [0, 0, __dx, __dx, 0], [0, -__height, -__height + __dy, __dy, 0], __color, 0, 0, __alpha, 0);
            _loc3.mc._x = __width;
            new com.amcharts.Brightness(_loc3.mc, -20);
            var _loc7 = new com.amcharts.Line(__column_mc, "rside_borders_mc", 11, [0, __dx, __dx, 0], [-__height, -__height + __dy, __dy, 0], __border_width, __border_color, __border_alpha);
            _loc7.mc._x = __width;
            var _loc2 = new com.amcharts.Rectangle(__column_mc, "back_mc", 2, __width, __height, __color, 0, 0, 0, __alpha, 0);
            _loc2.mc._y = -__height + __dy;
            _loc2.mc._x = __dx;
            new com.amcharts.Brightness(_loc2.mc, -30);
            var _loc11 = new com.amcharts.Line(__column_mc, "bot_borders_mc", 3, [__dx, __dx], [__dy, -__height + __dy], __border_width, __border_color, __border_alpha);
            var _loc4 = new com.amcharts.Shape(__column_mc, "top_mc", 8, [0, __dx, __width + __dx, __width, 0], [0, __dy, __dy, 0, 0], __color, 0, 0, __alpha, 0);
            _loc4.mc._y = -__height;
            new com.amcharts.Brightness(_loc4.mc, 20);
            var _loc8 = new com.amcharts.Line(__column_mc, "top_borders_mc", 9, [0, __dx, __width + __dx], [0, __dy, __dy], __border_width, __border_color, __border_alpha);
            _loc8.mc._y = -__height;
            var _loc6 = new com.amcharts.Shape(__column_mc, "bot_mc", 0, [0, __dx, __width + __dx, __width, 0], [0, __dy, __dy, 0, 0], __color, 0, 0, __alpha, 0);
            new com.amcharts.Brightness(_loc6.mc, -50);
            var _loc10 = new com.amcharts.Line(__column_mc, "bot_borders_mc", 1, [0, __dx, __width + __dx], [0, __dy, __dy], __border_width, __border_color, __border_alpha);
        } // end if
        __column_mc._y = __deltaY;
    } // End of the function
    function set height(param)
    {
        __height = param;
        this.__init();
        //return (this.height());
        null;
    } // End of the function
    function set width(param)
    {
        __width = param;
        this.__init();
        //return (this.width());
        null;
    } // End of the function
    function get mc()
    {
        return (__mc);
    } // End of the function
    var __deltaY = 0;
} // End of Class
