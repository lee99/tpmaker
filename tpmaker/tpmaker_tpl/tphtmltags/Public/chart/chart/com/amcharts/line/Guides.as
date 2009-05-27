class com.amcharts.line.Guides
{
    var __config, __axis, __mc, __min, __max, __step, __min_real, __height, __width, __guides_mc, __fills_mc;
    function Guides(target_mc, name, depth, axis, config, min, max, step, min_real)
    {
        __config = config;
        __axis = axis;
        __mc = target_mc.createEmptyMovieClip(name, depth);
        __mc._x = __config.plot_area.margins.left;
        __mc._y = __config.height - __config.plot_area.margins.bottom;
        __min = min;
        __max = max;
        __step = step;
        __min_real = min_real;
        __height = __config.plot_area.height;
        __width = __config.plot_area.width;
        this.__init();
    } // End of the function
    function __init()
    {
        var _loc10 = __mc.createEmptyMovieClip("values_mc", 40);
        _loc10._x = -__config.plot_area.margins.left;
        var _loc11 = new com.amcharts.Rectangle(__mc, "guides_mask_mc", 70, __width, __height, 0);
        _loc11.mc._y = -__config.plot_area.height;
        _loc11.mc._alpha = 0;
        __guides_mc = __mc.createEmptyMovieClip("guides_mc", 20);
        __guides_mc.setMask(_loc11.mc);
        var _loc12 = new com.amcharts.Rectangle(__mc, "fills_mask_mc", 80, __width, __height, 0);
        _loc12.mc._y = -__config.plot_area.height;
        _loc12.mc._alpha = 0;
        __fills_mc = __mc.createEmptyMovieClip("fills_mc", 10);
        __fills_mc.setMask(_loc12.mc);
        if (__config.axes[__axis].logarithmic == true)
        {
            var _loc14 = __min_real;
            var _loc13 = Math.log(__max) * 4.342945E-001 - Math.log(_loc14) * 4.342945E-001;
            var _loc5 = __height / _loc13;
        }
        else
        {
            _loc5 = __height / (__max - __min);
        } // end else if
        for (var _loc2 = 0; _loc2 < __config.guides.guide.length; ++_loc2)
        {
            if (__config.guides.guide[_loc2].axis == __axis.substring(2))
            {
                var _loc6 = __config.guides.guide[_loc2].centered;
                if (isNaN(__config.guides.guide[_loc2].end_value))
                {
                    _loc6 = false;
                } // end if
                var _loc3 = this.__getPos(__config.guides.guide[_loc2].start_value, _loc5);
                var _loc4 = this.__getPos(__config.guides.guide[_loc2].end_value, _loc5);
                this.__drawGuide(_loc2, _loc3);
                this.__drawGuide(_loc2, _loc4);
                if (__config.axes[__axis].logarithmic == true)
                {
                    var _loc7 = __min_real;
                }
                else
                {
                    _loc7 = __min;
                } // end else if
                if (isNaN(_loc3) == true)
                {
                    _loc3 = this.__getPos(_loc7, _loc5);
                } // end if
                if (isNaN(_loc4) == true)
                {
                    _loc4 = this.__getPos(_loc7, _loc5);
                } // end if
                if (__config.guides.guide[_loc2].fill_alpha > 0)
                {
                    this.__drawFill(_loc2, _loc3, _loc4, _loc5);
                } // end if
                var _loc9 = __config.guides.guide[_loc2].title;
                if (_loc3 > __height && _loc4 > __height || _loc3 < 0 || __config.guides.guide[_loc2].centered == false && _loc3 > __height)
                {
                    continue;
                } // end if
                if (_loc3 < __height && _loc4 > __height)
                {
                    _loc4 = __height;
                } // end if
                if (__config.guides.guide[_loc2].centered == true || __config.guides.guide[_loc2].inside == true)
                {
                    var _loc8 = 0;
                }
                else
                {
                    _loc8 = __config.axes[__axis].tick_length;
                } // end else if
                new com.amcharts.line.Value(_loc10, "value_mc" + _loc2, _loc2, __config, __axis, -_loc3, -_loc4, _loc9, __config.guides.guide[_loc2].text_color, __config.guides.guide[_loc2].text_size, __config.guides.guide[_loc2].inside, __config.guides.guide[_loc2].rotate, _loc6, _loc8);
            } // end if
        } // end of for
    } // End of the function
    function __getPos(value, step_height)
    {
        if (__config.axes[__axis].logarithmic == true)
        {
            value = Math.log(value) * 4.342945E-001 - Math.log(__min_real) * 4.342945E-001;
        }
        else
        {
            value = value - __min;
        } // end else if
        var _loc3 = step_height * value;
        if (__config.values[__axis].reverse == true)
        {
            _loc3 = __height - _loc3;
        } // end if
        return (_loc3);
    } // End of the function
    function __drawGuide(i, pos)
    {
        if (isNaN(pos) != true)
        {
            var _loc3 = __guides_mc.getNextHighestDepth();
            if (__config.guides.guide[i].dashed == true)
            {
                var _loc5 = new com.amcharts.DashedLine(__guides_mc, "guide_mc" + _loc3, _loc3, [0, __width], [-pos, -pos], __config.guides.guide[i].width, __config.guides.guide[i].dash_length, __config.guides.guide[i].color);
            }
            else
            {
                _loc5 = new com.amcharts.Line(__guides_mc, "guide_mc" + _loc3, _loc3, [0, __width], [-pos, -pos], __config.guides.guide[i].width, __config.guides.guide[i].color);
            } // end else if
            _loc5.mc._alpha = __config.guides.guide[i].alpha;
        } // end if
    } // End of the function
    function __drawFill(i, start_pos, end_pos, step_height)
    {
        if (start_pos != end_pos)
        {
            var _loc2 = __config.guides.guide[i].fill_color.toString().split(",");
            if (_loc2.length > 0)
            {
                _loc2.reverse();
            } // end if
            var _loc4 = new com.amcharts.Rectangle(__fills_mc, "fill_mc" + i, i, __width, end_pos - start_pos, _loc2, 0, 0, 0, __config.guides.guide[i].fill_alpha, 0);
            _loc4.mc._y = -end_pos;
        } // end if
    } // End of the function
} // End of Class
