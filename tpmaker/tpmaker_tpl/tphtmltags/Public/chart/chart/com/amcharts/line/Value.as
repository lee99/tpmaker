class com.amcharts.line.Value
{
    var __mc, __config, __axis, __y, __y2, __txt, __text_color, __text_size, __inside, __rotate, __centered, __tick_length, __text_width;
    function Value(target_mc, name, depth, config, axis, y, y2, txt, text_color, text_size, inside, rotate, centered, tick_length)
    {
        __mc = target_mc.createEmptyMovieClip(name, depth);
        __config = config;
        __axis = axis;
        __y = y;
        __y2 = y2;
        __txt = txt;
        __text_color = text_color;
        __text_size = text_size;
        __inside = inside;
        __rotate = rotate;
        __centered = centered;
        __tick_length = tick_length;
        if (__inside == true)
        {
            __text_width = __config.plot_area.width;
        }
        else
        {
            __text_width = __config.plot_area.margins[__axis.substring(2)] - __tick_length - __config.axes[__axis].width + 1;
        } // end else if
        this.__init();
    } // End of the function
    function __init()
    {
        var _loc4 = __mc.createEmptyMovieClip("value_mc", 10);
        var _loc2 = new com.amcharts.Text(_loc4, "value_txt", 0, 0, 0, __text_width, __config.height, "left", __config);
        _loc2.color = __text_color;
        _loc2.size = __text_size;
        _loc2.align = "right";
        _loc2.htmlTxt = __txt;
        _loc2.y = __y + _loc2.y - _loc2.textHeight / 2 - 3;
        if (__inside == true && __rotate == 0)
        {
            _loc2.width = __config.plot_area.width;
            _loc2.x = __config.plot_area.margins.left + 2;
            _loc2.align = "left";
            _loc2.y = _loc2.y - (_loc2.textHeight / 2 - 1);
        } // end if
        if (__axis == "y_right")
        {
            _loc2.x = __config.plot_area.margins.left + __config.plot_area.width + __config.axes[__axis].width + __tick_length;
            _loc2.align = "left";
            if (__inside == true && __rotate == 0)
            {
                _loc2.align = "right";
                _loc2.x = __config.plot_area.margins.left + 1;
            } // end if
        } // end if
        if (__centered == true)
        {
            _loc2.y = __y + (__y2 - __y) / 2 - _loc2.textHeight / 2 - 3;
        } // end if
        if (__rotate == 90)
        {
            var _loc5 = com.amcharts.Utils.rotateText(_loc2.field, __config.background.color, _loc4, "copy", 20);
            _loc5._y = __y + _loc5._height / 2;
            if (__axis == "y_left")
            {
                _loc5._x = __config.plot_area.margins.left - _loc5._width - __config.axes[__axis].width - __tick_length;
                if (__inside == true)
                {
                    _loc5._x = __config.plot_area.margins.left - 1;
                    _loc5._y = _loc5._y - (_loc5._height / 2 + 1);
                } // end if
            }
            else
            {
                _loc5._x = __config.width - __config.plot_area.margins.right + __config.axes[__axis].width + __tick_length;
                if (__inside == true)
                {
                    _loc5._x = __config.width - __config.plot_area.margins.right - _loc5._width + 2;
                    _loc5._y = _loc5._y - (_loc5._height / 2 + 1);
                } // end if
            } // end else if
            if (__centered == true)
            {
                _loc5._y = __y + (__y2 - __y) / 2 + _loc5._height / 2 + 1;
            } // end if
        }
        else if (__rotate > 0)
        {
            _loc5 = __mc.createEmptyMovieClip("rotated_mc", 10);
            var _loc6 = new com.amcharts.Load();
            _loc6.loadClip(__config.path + "fonts/" + __config.font.toLowerCase() + ".swf", _loc5, this, "__rotateText", false, [__txt]);
        } // end else if
        if (__tick_length > 0 && __config.axes[__axis].alpha > 0)
        {
            var _loc3 = new com.amcharts.Line(__mc, "tick_mc", 0, [0, __tick_length], [0, 0], 0, __config.axes[__axis].color);
            _loc3.mc._y = __y;
            if (__axis == "y_left")
            {
                _loc3.mc._x = __config.plot_area.margins[__axis.substring(2)] - __tick_length - __config.axes[__axis].width + 1;
            }
            else
            {
                _loc3.mc._x = __config.plot_area.margins.left + __config.plot_area.width + __config.axes[__axis].width;
            } // end else if
            _loc3.mc._alpha = __config.axes[__axis].alpha;
        } // end if
    } // End of the function
    function __rotateText(movie_mc, params)
    {
        movie_mc.tf_mc.txt.text = params[0];
        movie_mc._rotation = -__rotate;
        movie_mc.tf_mc.txt.textColor = __text_color;
        var _loc3 = new TextFormat();
        _loc3.size = __text_size;
        movie_mc.tf_mc.txt.setTextFormat(_loc3);
        movie_mc.tf_mc._x = 0;
        movie_mc.tf_mc._y = 0;
        if (__centered == true)
        {
            var _loc4 = __y + (__y2 - __y) / 2;
        }
        else
        {
            _loc4 = __y;
        } // end else if
        if (__axis == "y_right")
        {
            movie_mc._y = _loc4 - movie_mc.tf_mc.txt.textWidth * Math.sin(__rotate * 3.141593E+000 / 180) - movie_mc.tf_mc.txt.textHeight / 2;
            movie_mc._x = __config.width - __config.plot_area.margins.right + __config.axes[__axis].width + __tick_length + movie_mc.tf_mc.txt.textWidth * Math.cos(__rotate * 3.141593E+000 / 180) + 2;
        }
        else
        {
            movie_mc._y = _loc4 - movie_mc.tf_mc.txt.textHeight / 2 - 2;
            movie_mc._x = __config.plot_area.margins.left - (__config.axes[__axis].width + __tick_length) - movie_mc.tf_mc.txt.textHeight * Math.sin(__rotate * 3.141593E+000 / 180);
        } // end else if
    } // End of the function
} // End of Class
