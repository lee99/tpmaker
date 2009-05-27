class com.amcharts.column.Guides
{
    var __config, __axis, __target_mc, __depth_above, __depth_behind, __min, __max, __step, __min_real, __height, __width, __dx, __dy;
    function Guides(target_mc, depth_above, depth_behind, config, axis, min, max, step, min_real)
    {
        __config = config;
        __axis = axis;
        __target_mc = target_mc;
        __depth_above = depth_above;
        __depth_behind = depth_behind;
        __min = min;
        __max = max;
        __step = step;
        __min_real = min_real;
        __height = __config.plot_area.height;
        __width = __config.plot_area.width;
        __dx = __config.dx;
        __dy = __config.dy;
        this.__createMovies("above");
        this.__createMovies("behind");
        this.__init();
    } // End of the function
    function __createMovies(position)
    {
        var _loc2 = __target_mc.createEmptyMovieClip("mc_" + position, this["__depth_" + position]);
        _loc2._x = __config.plot_area.margins.left;
        _loc2._y = __config.height - __config.plot_area.margins.bottom;
        var _loc6 = _loc2.createEmptyMovieClip("values_mc", 40);
        _loc6._x = -__config.plot_area.margins.left;
        var _loc3 = new com.amcharts.Rectangle(_loc2, "guides_mask_mc", 70, __width, __height, 0);
        _loc3.mc._y = -__config.plot_area.height + __dy;
        _loc3.mc._alpha = 0;
        var _loc11 = _loc2.createEmptyMovieClip("guides_mc", 20);
        _loc11.setMask(_loc3.mc);
        var _loc4 = new com.amcharts.Rectangle(_loc2, "fills_mask_mc", 80, __width, __height, 13369344);
        _loc4.mc._y = -__config.plot_area.height + __dy;
        _loc4.mc._alpha = 0;
        var _loc7 = _loc2.createEmptyMovieClip("fills_mc", 10);
        _loc7.setMask(_loc4.mc);
        var _loc12 = _loc2.createEmptyMovieClip("fills3d_mc", 15);
        var _loc5 = _loc2.createEmptyMovieClip("guides3d_mc", 16);
        if ((__dx != 0 || __dy != 0) && position == "behind")
        {
            _loc4.mc._x = _loc4.mc._x + __dx;
            _loc3.mc._x = _loc3.mc._x + __dx;
            if (__config.type == "bar")
            {
                var _loc8 = new com.amcharts.Shape(_loc2, "3dfill_mask_mc", 90, [0, __dx, __width + __dx, __width, 0], [0, __dy, __dy, 0, 0], 13421568);
            }
            else
            {
                _loc8 = new com.amcharts.Shape(_loc2, "fill3d_mask_mc", 90, [0, 0, __dx, __dx, 0], [0, -__height, -__height + __dy, __dy, 0], 0);
                var _loc10 = new com.amcharts.Shape(_loc2, "guides3d_mask_mc", 91, [0, 0, __dx, __dx, 0], [0, -__height, -__height + __dy, __dy, 0], 0);
            } // end else if
            _loc12.setMask(_loc8.mc);
            _loc5.setMask(_loc10.mc);
        } // end if
    } // End of the function
    function __init()
    {
        if (__config.type == "bar")
        {
            var _loc11 = __height;
            __height = __width;
            __width = _loc11;
        } // end if
        if (__config.axes[__axis].logarithmic == true)
        {
            var _loc13 = __min_real;
            var _loc12 = Math.log(__max) * 4.342945E-001 - Math.log(_loc13) * 4.342945E-001;
            var _loc5 = __height / _loc12;
            var _loc10 = __min_real;
        }
        else
        {
            _loc5 = __height / (__max - __min);
            _loc10 = __min;
        } // end else if
        for (var _loc2 = 0; _loc2 < __config.guides.guide.length; ++_loc2)
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
            if (isNaN(_loc3) == true)
            {
                _loc3 = this.__getPos(_loc10, _loc5);
            } // end if
            if (isNaN(_loc4) == true)
            {
                _loc4 = this.__getPos(_loc10, _loc5);
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
            if (__config.guides.guide[_loc2].behind == true)
            {
                var _loc7 = __target_mc.mc_behind.values_mc;
            }
            else
            {
                _loc7 = __target_mc.mc_above.values_mc;
            } // end else if
            new com.amcharts.column.Value(_loc7, "value_mc" + _loc2, _loc2, __config, _loc3, _loc4, _loc9, __config.guides.guide[_loc2].text_color, __config.guides.guide[_loc2].text_size, __config.guides.guide[_loc2].inside, __config.guides.guide[_loc2].rotate, _loc6, _loc8, __config.guides.guide[_loc2].behind);
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
            if (__config.guides.guide[i].behind == true)
            {
                var _loc5 = __target_mc.mc_behind.guides_mc;
            }
            else
            {
                _loc5 = __target_mc.mc_above.guides_mc;
            } // end else if
            var _loc4 = _loc5.getNextHighestDepth();
            if (__config.guides.guide[i].dashed == true)
            {
                if (__config.type == "bar")
                {
                    var _loc6 = new com.amcharts.DashedLine(_loc5, "guide_mc" + _loc4, _loc4, [pos, pos], [0, -__width], __config.guides.guide[i].width, __config.guides.guide[i].dash_length, __config.guides.guide[i].color);
                }
                else
                {
                    _loc6 = new com.amcharts.DashedLine(_loc5, "guide_mc" + _loc4, _loc4, [0, __width], [-pos, -pos], __config.guides.guide[i].width, __config.guides.guide[i].dash_length, __config.guides.guide[i].color);
                } // end else if
            }
            else if (__config.type == "bar")
            {
                _loc6 = new com.amcharts.Line(_loc5, "guide_mc" + _loc4, _loc4, [pos, pos], [0, -__width], __config.guides.guide[i].width, __config.guides.guide[i].color);
            }
            else
            {
                _loc6 = new com.amcharts.Line(_loc5, "guide_mc" + _loc4, _loc4, [0, __width], [-pos, -pos], __config.guides.guide[i].width, __config.guides.guide[i].color);
            } // end else if
            _loc6.mc._alpha = __config.guides.guide[i].alpha;
            if ((__dx != 0 || __dy != 0) && __config.guides.guide[i].behind == true)
            {
                _loc6.mc._x = _loc6.mc._x + __dx;
                _loc6.mc._y = _loc6.mc._y + __dy;
                _loc4 = _loc5.getNextHighestDepth();
                if (__config.guides.guide[i].dashed == true)
                {
                    if (__config.type == "bar")
                    {
                        var _loc7 = new com.amcharts.DashedLine(__target_mc.mc_behind.guides3d_mc, "guide3d_mc" + _loc4, _loc4, [pos, pos + __dx], [0, __dy], __config.guides.guide[i].width, __config.guides.guide[i].dash_length, __config.guides.guide[i].color);
                    }
                    else
                    {
                        _loc7 = new com.amcharts.DashedLine(__target_mc.mc_behind.guides3d_mc, "guide3d_mc" + _loc4, _loc4, [0, __dx], [-pos, -pos + __dy], __config.guides.guide[i].width, __config.guides.guide[i].dash_length, __config.guides.guide[i].color);
                    } // end else if
                }
                else if (__config.type == "bar")
                {
                    _loc7 = new com.amcharts.Line(__target_mc.mc_behind.guides3d_mc, "guide3d_mc" + _loc4, _loc4, [pos, pos + __dx], [0, __dy], __config.guides.guide[i].width, __config.guides.guide[i].color);
                }
                else
                {
                    _loc7 = new com.amcharts.Line(__target_mc.mc_behind.guides3d_mc, "guide3d_mc" + _loc4, _loc4, [0, __dx], [-pos, -pos + __dy], __config.guides.guide[i].width, __config.guides.guide[i].color);
                } // end else if
                _loc7.mc._alpha = __config.guides.guide[i].alpha;
            } // end if
        } // end if
    } // End of the function
    function __drawFill(i, start_pos, end_pos, step_height)
    {
        var _loc4 = __config.guides.guide[i].fill_color;
        if (_loc4.length > 0)
        {
            _loc4.reverse();
        } // end if
        if (__config.guides.guide[i].behind == true)
        {
            var _loc6 = __target_mc.mc_behind.fills_mc;
        }
        else
        {
            _loc6 = __target_mc.mc_above.fills_mc;
        } // end else if
        var _loc7 = _loc6.getNextHighestDepth();
        if (start_pos != end_pos)
        {
            if (__config.type == "bar")
            {
                var _loc8 = new com.amcharts.Rectangle(_loc6, "fill_mc" + _loc7, _loc7, end_pos - start_pos, -__width, _loc4, 0, 0, 0, __config.guides.guide[i].fill_alpha, 0);
                _loc8.mc._x = start_pos;
            }
            else
            {
                _loc8 = new com.amcharts.Rectangle(_loc6, "fill_mc" + _loc7, _loc7, __width, end_pos - start_pos, _loc4, 0, 0, 0, __config.guides.guide[i].fill_alpha, 0);
                _loc8.mc._y = -end_pos;
            } // end if
        } // end else if
        if ((__dx != 0 || __dy != 0) && __config.guides.guide[i].behind == true)
        {
            _loc8.mc._x = _loc8.mc._x + __dx;
            _loc8.mc._y = _loc8.mc._y + __dy;
            _loc7 = _loc6.getNextHighestDepth();
            if (__config.type == "bar")
            {
                var _loc9 = new com.amcharts.Shape(__target_mc.mc_behind.fills3d_mc, "fill3d_mc" + _loc7, _loc7, [0, __dx, end_pos - start_pos + __dx, end_pos - start_pos, 0], [0, __dy, __dy, 0, 0], _loc4, 0, 0, __config.guides.guide[i].fill_alpha, 0);
                _loc9.mc._x = start_pos;
            }
            else
            {
                _loc9 = new com.amcharts.Shape(__target_mc.mc_behind.fills3d_mc, "fill3d_mc" + _loc7, _loc7, [0, __dx, __dx, 0, 0], [0, __dy, end_pos - start_pos + __dy, end_pos - start_pos, 0], _loc4, 0, 0, __config.guides.guide[i].fill_alpha, 0);
                _loc9.mc._y = -end_pos;
            } // end if
        } // end else if
    } // End of the function
} // End of Class
