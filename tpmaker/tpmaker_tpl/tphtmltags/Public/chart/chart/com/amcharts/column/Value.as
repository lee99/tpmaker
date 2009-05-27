class com.amcharts.column.Value
{
    var __mc, __config, __pos, __pos2, __txt, __text_color, __text_size, __inside, __rotate, __centered, __tick_length, __type, __behind, __text_width, __value_width, __get__textWidth;
    function Value(target_mc, name, depth, config, pos, pos2, txt, text_color, text_size, inside, rotate, centered, tick_length, behind)
    {
        __mc = target_mc.createEmptyMovieClip(name, depth);
        __config = config;
        __pos = pos;
        __pos2 = pos2;
        __txt = txt;
        __text_color = text_color;
        __text_size = text_size;
        __inside = inside;
        __rotate = rotate;
        __centered = centered;
        __tick_length = tick_length;
        __type = __config.type;
        __behind = behind;
        if (__inside == true)
        {
            __text_width = __config.plot_area.width;
        }
        else
        {
            __text_width = __config.plot_area.margins.left - __tick_length - __config.axes.value.width + 1;
        } // end else if
        this.__init();
    } // End of the function
    function __init()
    {
        var _loc5 = __mc.createEmptyMovieClip("value_mc", 10);
        if (__type == "bar")
        {
            var _loc2 = new com.amcharts.Text(_loc5, "value_txt", 0, __pos + __config.plot_area.margins.left, __config.axes.value.width + __tick_length - 2, 0, __config.plot_area.margins.bottom, "center", __config);
        }
        else
        {
            _loc2 = new com.amcharts.Text(_loc5, "value_txt", 0, 0, -__pos, __text_width, __config.height, "left", __config);
        } // end else if
        _loc2.__set__color(__text_color);
        _loc2.__set__size(__text_size);
        _loc2.__set__htmlTxt(__txt);
        _loc2.__set__align("right");
        __value_width = _loc2.textWidth;
        if (__type != "bar")
        {
            _loc2.__set__y(_loc2.__get__y() - _loc2.__get__textHeight() / 2 - 3);
        } // end if
        if (__inside == true)
        {
            if (__type == "column" && __rotate == 0)
            {
                _loc2.__set__width(__config.plot_area.width);
                _loc2.__set__align("left");
                _loc2.__set__x(__config.plot_area.margins.left + 1);
                _loc2.y = _loc2.y - _loc2.__get__textHeight() / 2;
            } // end if
            if (__type == "bar" && __rotate == 0)
            {
                _loc2.x = _loc2.x + (_loc2.__get__textWidth() / 2 + 3);
                _loc2.__set__y(-_loc2.__get__textHeight() - 3);
            } // end if
        } // end if
        if (__centered == true && __rotate != 90)
        {
            if (__type == "bar")
            {
                _loc2.__set__x(__pos + __config.plot_area.margins.left + (__pos2 - __pos) / 2 - _loc2.__get__textWidth() / 2);
            }
            else
            {
                _loc2.__set__y(-(__pos + (__pos2 - __pos) / 2 + _loc2.__get__textHeight() / 2 + 3));
            } // end if
        } // end else if
        if (__rotate == 90)
        {
            var _loc3 = com.amcharts.Utils.rotateText(_loc2.__get__field(), __config.background.color, _loc5, "copy", 20);
            if (__type == "bar")
            {
                _loc3._x = __pos + __config.plot_area.margins.left - _loc3._width / 2;
                _loc3._y = _loc3._height + __config.axes.value.width + __tick_length;
                if (__inside == true)
                {
                    _loc3._x = _loc3._x + (_loc3._width / 2 - 1);
                    _loc3._y = -2;
                } // end if
                if (__centered == true)
                {
                    _loc3._x = __pos + __config.plot_area.margins.left + (__pos2 - __pos) / 2 - _loc2.__get__textWidth() / 2;
                } // end if
            }
            else
            {
                _loc3._x = __config.plot_area.margins.left - _loc3._width - __config.axes.value.width - __tick_length;
                _loc3._y = -__pos + _loc3._height / 2;
                if (__inside == true)
                {
                    _loc3._x = __config.plot_area.margins.left - 1;
                    _loc3._y = _loc3._y - _loc3._height / 2;
                } // end if
                if (__centered == true)
                {
                    _loc3._y = -(__pos + (__pos2 - __pos) / 2 - _loc3._height / 2 + 3);
                } // end if
            } // end else if
        }
        else if (__rotate > 0)
        {
            _loc3 = __mc.createEmptyMovieClip("rotated_mc", 10);
            var _loc6 = new com.amcharts.Load();
            _loc6.loadClip(__config.path + "fonts/" + __config.font.toLowerCase() + ".swf", _loc3, this, "__rotateText");
        } // end else if
        if (__inside == true && __config.dx != 0 && __config.dy != 0 & __behind == true)
        {
            _loc2.x = _loc2.x + __config.dx;
            _loc2.y = _loc2.y + __config.dy;
            _loc3._x = _loc3._x + __config.dx;
            _loc3._y = _loc3._y + __config.dy;
        } // end if
        if (__tick_length > 0 && __config.axes.value.alpha > 0)
        {
            if (__type == "bar")
            {
                var _loc4 = new com.amcharts.Line(__mc, "tick_mc", 0, [0, 0], [0, __tick_length], 0, __config.axes.value.color);
                _loc4.mc._y = __config.axes.value.width;
                _loc4.mc._x = __pos + __config.plot_area.margins.left;
            }
            else
            {
                _loc4 = new com.amcharts.Line(__mc, "tick_mc", 0, [0, __tick_length], [0, 0], 0, __config.axes.value.color);
                _loc4.mc._y = -__pos;
                _loc4.mc._x = __config.plot_area.margins.left - __tick_length - __config.axes.value.width + 1;
            } // end else if
            _loc4.mc._alpha = __config.axes.value.alpha;
        } // end if
    } // End of the function
    function __rotateText(movie_mc)
    {
        movie_mc.tf_mc.txt.text = __txt;
        var _loc5 = __pos;
        movie_mc._rotation = -__rotate;
        movie_mc.tf_mc.txt.textColor = __text_color;
        var _loc3 = new TextFormat();
        _loc3.size = __text_size;
        movie_mc.tf_mc.txt.setTextFormat(_loc3);
        movie_mc.tf_mc._x = 0;
        movie_mc.tf_mc._y = 0;
        if (__centered == true)
        {
            var _loc4 = __pos + (__pos2 - __pos) / 2;
        }
        else
        {
            _loc4 = __pos;
        } // end else if
        if (__type == "bar")
        {
            movie_mc._x = _loc4 + __config.plot_area.margins.left - movie_mc.tf_mc.txt.textHeight / 2 * Math.sin(__rotate * 3.141593E+000 / 180);
            movie_mc._y = __config.axes.value.width + __tick_length;
        }
        else
        {
            movie_mc._y = -_loc4 - movie_mc.tf_mc.txt.textHeight / 2 - 2;
            movie_mc._x = __config.plot_area.margins.left - (__config.axes.value.width + __tick_length) - movie_mc.tf_mc.txt.textHeight * Math.sin(__rotate * 3.141593E+000 / 180);
        } // end else if
    } // End of the function
    function get textWidth()
    {
        return (__value_width);
    } // End of the function
} // End of Class
