class com.amcharts.xy.Values
{
    var __config, __axis, __values_mc, __values_arr, __grid_fills_mc, __grid_mc, __3dgrid_mc, __ticks_mc, __fills_mc, __max, __min, __step, __min_real, __height, __width, __tick_length, __text_width, __text_color, __text_size, __value_step, __tick_color, __tick_alpha, __next_period, __widest_value, __first_value, __first_field, __first_rotated, __first_tick, __last_field, __last_rotated, __last_tick, __previous_pos, __get__grid3d_mc, __get__grid_mc, __get__mc, __get__widest;
    function Values(target_mc, name, depth, axis, min, max, step, min_real, config, grid_depth)
    {
        __config = config;
        __axis = axis;
        __values_mc = target_mc.createEmptyMovieClip(name, depth);
        __values_mc._y = __config.height - __config.plot_area.margins.bottom;
        if (axis == "x")
        {
            __values_mc._x = __config.plot_area.x - __config.dx;
        }
        else
        {
            __values_mc._y = __config.plot_area.y - __config.dy;
        } // end else if
        __values_arr = new Array();
        var _loc3 = target_mc.createEmptyMovieClip("all_grid_mc" + axis, grid_depth);
        __grid_fills_mc = _loc3.createEmptyMovieClip("grid_fills_mc", 0);
        __grid_fills_mc._y = __config.plot_area.y;
        __grid_fills_mc._x = __config.plot_area.x;
        var _loc2 = new com.amcharts.Rectangle(_loc3, "mask_grid_mc", 10, __config.plot_area.width + 1, __config.plot_area.height + 1, 0).__get__mc();
        _loc2._y = __config.plot_area.margins.top + __config.dy;
        _loc2._x = __config.plot_area.margins.left + __config.dx;
        _loc2._alpha = 0;
        __grid_fills_mc.setMask(_loc2);
        __grid_mc = __grid_fills_mc.createEmptyMovieClip("grid_mc", grid_depth);
        __3dgrid_mc = _loc3.createEmptyMovieClip("3dgrid_mc", 20);
        __3dgrid_mc._x = __config.plot_area.margins.left + __config.dx;
        __3dgrid_mc._y = __config.height - __config.plot_area.margins.bottom + __config.dy;
        if (__axis == "x")
        {
            __3dgrid_mc._x = __config.plot_area.x;
        }
        else
        {
            __3dgrid_mc._y = __config.plot_area.y;
        } // end else if
        __ticks_mc = __values_mc.createEmptyMovieClip("ticks_mc", -1);
        __ticks_mc._x = __config.plot_area.margins.left;
        __fills_mc = __grid_fills_mc.createEmptyMovieClip("fills_mc", 0);
        __max = max;
        __min = min;
        __step = step;
        __min_real = min_real;
        __height = __config.plot_area.height_real;
        __width = __config.plot_area.width_real;
        if (__axis == "x")
        {
            __height = __config.plot_area.width_real;
            __width = __config.plot_area.height_real;
        } // end if
        __tick_length = __config.axes[__axis].tick_length;
        __text_width = __config.plot_area.margins.left - __tick_length - __config.axes[__axis].width + 1;
        __text_color = __config.values[__axis].color;
        __text_size = __config.values[__axis].text_size;
        __value_step = __height / (__max - __min);
        __tick_color = __config.axes[__axis].color;
        __tick_alpha = __config.axes[__axis].alpha;
        __next_period = new Object();
        __next_period.ss = "mm";
        __next_period.mm = "hh";
        __next_period.hh = "DD";
        __next_period.DD = "MM";
        __next_period.MM = "YYYY";
        __widest_value = 0;
        this.__init();
    } // End of the function
    function __init()
    {
        var _loc19 = 0;
        var _loc6 = Math.round((__max - __min) / __step) + 1;
        var _loc20 = 1;
        if (__config.values[__axis].type == "duration")
        {
            var _loc29 = com.amcharts.Durations.getMaxInterval(__max, __config.date_formats.duration_input);
        } // end if
        if (__config.values[__axis].type == "date")
        {
            __config.axes[__axis].logarithmic == false;
            var _loc22 = Math.abs(__max - __min);
            for (var _loc4 = 0; _loc4 < __config.period_array.length; ++_loc4)
            {
                var _loc9 = __config.period_array[_loc4];
                _loc6 = Math.ceil(_loc22 / __config.period_duration[_loc9]) + 1;
                if (_loc6 <= __config.grid[__axis].approx_count)
                {
                    if (_loc6 < __config.grid[__axis].approx_count - 3)
                    {
                        _loc9 = __config.period_array[_loc4 - 1];
                        _loc6 = Math.ceil(_loc22 / __config.period_duration[_loc9]) + 1;
                    } // end if
                    break;
                } // end if
            } // end of for
            if (_loc6 > __config.grid[__axis].approx_count)
            {
                _loc20 = Math.ceil(_loc6 / __config.grid[__axis].approx_count);
            } // end if
            var _loc10 = com.amcharts.Utils.stripNumbers(_loc9);
            if (_loc10 == "WW")
            {
                _loc10 = "DD";
            } // end if
            __config["current_period_" + __axis] = _loc10;
        } // end if
        var _loc8 = 0;
        var _loc24 = false;
        for (var _loc4 = _loc19; _loc4 < _loc6; _loc4 = _loc4 + _loc20)
        {
            var _loc25 = com.amcharts.Utils.fixedMath(__min, _loc4 * __step, "plus");
            if (__config.values[__axis].integers_only == false)
            {
                var _loc12 = _loc25.toString().split(".")[1].length;
                if (_loc12 > _loc8)
                {
                    _loc8 = _loc12;
                } // end if
                if (_loc12 > 0 && _loc8 < __config.digits_after_decimal)
                {
                    _loc8 = __config.digits_after_decimal;
                } // end if
            } // end if
            if ((Math.abs(_loc25) <= __config.scientific_min || Math.abs(_loc25) >= __config.scientific_max) && _loc25 != 0)
            {
                _loc24 = true;
            } // end if
        } // end of for
        if (__config.axes[__axis].logarithmic == true)
        {
            var _loc31 = Math.log(__max) * 4.342945E-001 - Math.log(__min_real) * 4.342945E-001;
            if (_loc31 > 2)
            {
                var _loc30 = true;
                _loc19 = Math.log(__min_real) * 4.342945E-001;
                _loc6 = _loc31;
                if (_loc6 - _loc19 > __config.grid[__axis].approx_count)
                {
                    _loc20 = _loc20 * Math.ceil((_loc6 - _loc19) / __config.grid[__axis].approx_count);
                } // end if
            } // end if
            __value_step = __height / _loc31;
        } // end if
        var _loc2 = 0;
        var _loc23 = new Date(__min);
        var _loc13 = 0;
        var _loc21 = true;
        for (var _loc4 = _loc19; _loc4 < _loc6; _loc4 = _loc4 + _loc20)
        {
            ++_loc2;
            if (__config.values[__axis].type == "date")
            {
                if (_loc4 == 0)
                {
                    num = __min;
                }
                else
                {
                    var num = __min + __config.period_duration[_loc9] * (_loc4 + 1.000000E-001);
                    num = com.amcharts.Dates.resetDateToMin(new Date(num), _loc9).getTime();
                } // end else if
                if (num > __max)
                {
                    break;
                } // end if
                if (num < __min)
                {
                    continue;
                } // end if
            }
            else
            {
                var num = com.amcharts.Utils.fixedMath(__min, _loc4 * __step, "plus");
            } // end else if
            if (__config.values[__axis].integers_only == true && num != int(num))
            {
                continue;
            } // end if
            if (__config.axes[__axis].logarithmic == true)
            {
                if (num == 0)
                {
                    num = __min_real;
                } // end if
                if (_loc30 == true)
                {
                    var num = Math.pow(10, _loc4);
                } // end if
                if (num > __max)
                {
                    break;
                } // end if
                if (num < __min_real)
                {
                    continue;
                } // end if
                var _loc14 = Math.log(num) * 4.342945E-001 - Math.log(__min_real) * 4.342945E-001;
                var _loc3 = __value_step * _loc14;
                if (__config.values[__axis].reverse == true)
                {
                    _loc3 = __height - _loc3;
                } // end if
            }
            else
            {
                _loc3 = __value_step * (num - __min);
                if (__config.values[__axis].reverse == true)
                {
                    _loc3 = __height - _loc3;
                } // end if
            } // end else if
            if (__axis == "x")
            {
                if (num < __config.left || num > __config.right)
                {
                } // end if
            } // end if
            if (__axis == "y")
            {
                if (num < __config.bottom || num > __config.top)
                {
                } // end if
            } // end if
            if (__config.values[__axis].type == "duration")
            {
                var _loc5 = com.amcharts.Durations.formatDuration(num, __config.date_formats.duration_input, "", __config.strings, _loc29, __config.decimals_separator, __config.thousands_separator, _loc8);
            }
            else if (__config.values[__axis].type == "date")
            {
                var _loc16 = false;
                if (_loc4 == 0)
                {
                    _loc16 = true;
                    var _loc17 = __config.date_formats.axis_values[_loc10].first;
                }
                else
                {
                    _loc17 = __config.date_formats.axis_values[_loc10].regular;
                    if (this.__checkPeriodChange(__next_period[_loc10], num, _loc23) == true && _loc9 != "WW")
                    {
                        if (num == com.amcharts.Dates.resetDateToMin(new Date(num), __next_period[_loc10]).getTime())
                        {
                            _loc17 = __config.date_formats.axis_values[__next_period[_loc10]].regular;
                            _loc16 = true;
                        } // end if
                        _loc23 = num;
                    } // end if
                } // end else if
                _loc5 = com.amcharts.Dates.dateToString(_loc17, new Date(num), __config.strings.months);
            }
            else
            {
                _loc5 = com.amcharts.Utils.formatNumber(num, __config.decimals_separator, __config.thousands_separator, _loc8, false, false, undefined, _loc24);
            } // end else if
            if (__config.values[__axis].unit_position == "left")
            {
                _loc5 = __config.values[__axis].unit + _loc5;
            }
            else
            {
                _loc5 = _loc5 + __config.values[__axis].unit;
            } // end else if
            if (_loc16 == true && (__config.values[__axis].rotate == 0 || __config.values[__axis].rotate == 90))
            {
                _loc5 = "<b>" + _loc5 + "</b>";
            } // end if
            if (_loc13 == 0)
            {
                if (__config.values[__axis].enabled == true)
                {
                    if (__axis == "x")
                    {
                        _loc25 = new com.amcharts.Text(__values_mc, "value" + _loc2, _loc2, _loc3, __config.axes[__axis].width + __tick_length - 2, 0, __config.plot_area.margins.bottom, "center", __config);
                    }
                    else if (__config.values.y.inside == true)
                    {
                        _loc25 = new com.amcharts.Text(__values_mc, "value" + _loc2, _loc2, __config.plot_area.margins.left + 2, -_loc3, __config.plot_area.width, __config.height, "right", __config);
                    }
                    else
                    {
                        _loc25 = new com.amcharts.Text(__values_mc, "value" + _loc2, _loc2, 0, -_loc3, __text_width, __config.height, "left", __config);
                    } // end else if
                    _loc25.htmlTxt = _loc5;
                    _loc25.color = __text_color;
                    _loc25.size = __text_size;
                    if (__config.values.y.inside == true && __axis == "y")
                    {
                    }
                    else
                    {
                        _loc25.align = "right";
                    } // end else if
                    if (__axis != "x")
                    {
                        if (__config.values.y.inside == true)
                        {
                            _loc25.y = _loc25.y - _loc25.textHeight - 4;
                        }
                        else
                        {
                            _loc25.y = _loc25.y - _loc25.textHeight / 2 - 3;
                        } // end else if
                    }
                    else if (__config.values.x.inside == true && __config.values.x.rotate == 0)
                    {
                        _loc25.y = -_loc25.textHeight - 3;
                        _loc25.x = _loc25.x + (_loc25.textWidth / 2 + 3);
                    } // end else if
                    if (__widest_value < _loc25.textWidth)
                    {
                        __widest_value = _loc25.textWidth;
                    } // end if
                    if (__config.values[__axis].rotate == 90)
                    {
                        var _loc11 = com.amcharts.Utils.rotateText(__values_mc["value" + _loc2], __config.background.color, __values_mc, "value" + _loc2, _loc2 + _loc6 + 1000);
                        if (__axis == "x")
                        {
                            if (__config.values.x.inside == true)
                            {
                                _loc11._x = _loc3 + __config.plot_area.margins.left - 1;
                                _loc11._y = -2;
                            }
                            else
                            {
                                _loc11._x = _loc3 - _loc11._width / 2;
                                _loc11._y = _loc11._height + __config.axes[__axis].width + __tick_length;
                            } // end else if
                        }
                        else if (__config.values.y.inside == true)
                        {
                            _loc11._x = __config.plot_area.margins.left;
                            _loc11._y = -_loc3 - 2;
                        }
                        else
                        {
                            _loc11._x = __config.plot_area.margins.left - _loc11._width - __config.axes[__axis].width - __tick_length;
                            _loc11._y = -_loc3 + _loc11._height / 2;
                        } // end else if
                    }
                    else if (__config.values[__axis].rotate > 0)
                    {
                        _loc11 = __values_mc.createEmptyMovieClip("rotated_mc" + _loc2, _loc2);
                        var _loc18 = new com.amcharts.Load();
                        _loc18.loadClip(__config.path + "fonts/" + __config.font.toLowerCase() + ".swf", _loc11, this, "__rotateText", false, [_loc5, _loc3]);
                    } // end else if
                    if (__tick_length > 0 && __tick_alpha > 0)
                    {
                        if (__axis == "x")
                        {
                            var _loc7 = new com.amcharts.Line(__ticks_mc, "tick_mc" + _loc2, _loc2, [0, 0], [0, __tick_length], 0, __tick_color);
                            _loc7.mc._y = __config.axes[__axis].width;
                            _loc7.mc._x = _loc3 - __config.plot_area.margins.left;
                        }
                        else
                        {
                            _loc7 = new com.amcharts.Line(__ticks_mc, "tick_mc" + _loc2, _loc2, [0, -__tick_length], [0, 0], 0, __tick_color);
                            _loc7.mc._y = -_loc3;
                        } // end else if
                        _loc7.mc._alpha = __tick_alpha;
                    } // end if
                    if (_loc4 == 0)
                    {
                        __first_value = _loc25;
                    } // end if
                    if (_loc4 == 1 && __config.values[__axis].type == "date" && __config.values[__axis].rotate == 0)
                    {
                        if (__axis == "x" && __first_value.__get__x() + __first_value.__get__width() > _loc25.x)
                        {
                            _loc25.field._visible = false;
                            _loc7.mc._visible = false;
                        } // end if
                    } // end if
                    if (_loc21 == true)
                    {
                        _loc21 = false;
                        __first_field = _loc25.field;
                        __first_rotated = _loc11;
                        __first_tick = _loc7.mc;
                    } // end if
                } // end if
                if (__config.values[__axis].rotate == 0)
                {
                    var _loc15 = _loc25.field;
                }
                else
                {
                    _loc15 = _loc11;
                } // end else if
                __values_arr.push({value: num, text_field: _loc15, tick_mc: _loc7.mc, index: _loc4});
            } // end if
            this.__drawGrid(num, _loc3, _loc4);
            ++_loc13;
            if (_loc13 == __config.values[__axis].frequency)
            {
                _loc13 = 0;
            } // end if
        } // end of for
        __last_field = _loc25.field;
        __last_rotated = _loc11;
        __last_tick = _loc7.mc;
        this.__skip();
    } // End of the function
    function __skip()
    {
        if (__config.values[__axis].skip_first == true)
        {
            __first_field._visible = false;
            __first_rotated._visible = false;
            __first_tick._visible = false;
        } // end if
        if (__config.values[__axis].skip_last == true)
        {
            __last_field._visible = false;
            __last_rotated._visible = false;
            __last_tick._visible = false;
        } // end if
    } // End of the function
    function __rotateText(movie_mc, params)
    {
        movie_mc.tf_mc.txt.htmlText = params[0];
        var _loc3 = params[1];
        movie_mc._rotation = -__config.values[__axis].rotate;
        movie_mc.tf_mc.txt.textColor = __text_color;
        var _loc4 = new TextFormat();
        _loc4.size = __text_size;
        movie_mc.tf_mc.txt.setTextFormat(_loc4);
        movie_mc.tf_mc._x = 0;
        movie_mc.tf_mc._y = 0;
        if (__axis == "y")
        {
            movie_mc._y = -_loc3 - movie_mc.tf_mc.txt.textHeight / 2 - 2;
            movie_mc._x = __config.plot_area.margins.left - (__config.axes[__axis].width + __config.axes[__axis].tick_length) - movie_mc.tf_mc.txt.textHeight * Math.sin(__config.values[__axis].rotate * 3.141593E+000 / 180);
        }
        else
        {
            movie_mc._x = _loc3 - movie_mc.tf_mc.txt.textHeight / 2 * Math.cos(__config.values.x.rotate * 3.141593E+000 / 180);
            movie_mc._y = __config.axes.x.width + __config.axes.x.tick_length;
        } // end else if
        this.__skip();
        this.showHideValues();
    } // End of the function
    function __drawGrid(value, pos, depth)
    {
        if (value == 0)
        {
            var _loc4 = __config.grid[__axis].alpha * 4;
        }
        else
        {
            _loc4 = __config.grid[__axis].alpha;
        } // end else if
        if (__k == 1 && __config.grid[__axis].fill_alpha > 0)
        {
            if (__axis == "x")
            {
                var _loc8 = new com.amcharts.Rectangle(__fills_mc, "fill_mc" + depth, depth, __previous_pos - pos, -__width, __config.grid[__axis].fill_color, 0, 0, 0, __config.grid[__axis].fill_alpha, 0);
                _loc8.mc._x = pos;
            }
            else
            {
                _loc8 = new com.amcharts.Rectangle(__fills_mc, "fill_mc" + depth, depth, __width, pos - __previous_pos, __config.grid[__axis].fill_color, 0, 0, 0, __config.grid[__axis].fill_alpha, 0);
                _loc8.mc._y = -pos;
            } // end else if
            __k = 0;
        }
        else
        {
            ++__k;
        } // end else if
        __previous_pos = pos;
        if (__config.grid[__axis].dashed == true && value != 0)
        {
            if (__axis == "x")
            {
                var _loc6 = new com.amcharts.DashedLine(__grid_mc, "grid_mc" + depth, depth, [pos, pos], [0, -__width], 0, __config.grid[__axis].dash_length, __config.grid[__axis].color);
            }
            else
            {
                _loc6 = new com.amcharts.DashedLine(__grid_mc, "grid_mc" + depth, depth, [0, __width], [-pos, -pos], 0, __config.grid[__axis].dash_length, __config.grid[__axis].color);
            } // end else if
        }
        else if (__axis == "x")
        {
            _loc6 = new com.amcharts.Line(__grid_mc, "grid_mc" + depth, depth, [pos, pos], [0, -__width], 0, __config.grid[__axis].color);
        }
        else
        {
            _loc6 = new com.amcharts.Line(__grid_mc, "grid_mc" + depth, depth, [0, __width], [-pos, -pos], 0, __config.grid[__axis].color);
        } // end else if
        _loc6.mc._alpha = _loc4;
        if (__config.dx != 0 || __config.dy != 0)
        {
            if (__config.grid[__axis].dashed == true && value != 0)
            {
                if (__axis == "x")
                {
                    var _loc7 = new com.amcharts.DashedLine(__3dgrid_mc, "grid3d_mc" + depth, depth, [pos - __config.dx, pos], [-__config.dy, 0], 0, __config.grid[__axis].dash_length, __config.grid[__axis].color);
                }
                else
                {
                    _loc7 = new com.amcharts.DashedLine(__3dgrid_mc, "grid3d_mc" + depth, depth, [-__config.dx, 0], [-pos - __config.dy, -pos], 0, __config.grid[__axis].dash_length, __config.grid[__axis].color);
                } // end else if
            }
            else if (__axis == "x")
            {
                _loc7 = new com.amcharts.Line(__3dgrid_mc, "grid3d_mc" + depth, depth, [pos - __config.dx, pos], [-__config.dy, 0], 0, __config.grid[__axis].color);
            }
            else
            {
                _loc7 = new com.amcharts.Line(__3dgrid_mc, "grid3d_mc" + depth, depth, [-__config.dx, 0], [-pos - __config.dy, -pos], 0, __config.grid[__axis].color);
            } // end else if
        } // end else if
        _loc7.mc._alpha = _loc4;
    } // End of the function
    function __checkPeriodChange(period, time, previous_time)
    {
        var _loc1 = com.amcharts.Dates.resetDateToMin(new Date(time), period).getTime();
        var _loc2 = com.amcharts.Dates.resetDateToMin(new Date(previous_time), period).getTime();
        if (_loc1 != _loc2)
        {
            return (true);
        } // end if
    } // End of the function
    function get mc()
    {
        return (__values_mc);
    } // End of the function
    function get grid_mc()
    {
        return (__grid_fills_mc);
    } // End of the function
    function get grid3d_mc()
    {
        return (__3dgrid_mc);
    } // End of the function
    function showHideValues()
    {
        for (var _loc2 = 0; _loc2 < __values_arr.length; ++_loc2)
        {
            var _loc3 = false;
            if (__axis == "x")
            {
                if (__config.axes.x.logarithmic == true)
                {
                    if (__values_arr[_loc2].tick_mc._x < -__values_mc._x || __values_arr[_loc2].tick_mc._x > -__values_mc._x + __config.plot_area.width)
                    {
                        _loc3 = true;
                    } // end if
                }
                else if (__values_arr[_loc2].value < __config.left || __values_arr[_loc2].value > __config.right)
                {
                    _loc3 = true;
                } // end if
            } // end else if
            if (__axis == "y")
            {
                if (__config.axes.y.logarithmic == true)
                {
                    if (__values_mc._y + __values_arr[_loc2].tick_mc._y > __config.plot_area.height + __config.plot_area.margins.top || __values_mc._y + __values_arr[_loc2].tick_mc._y < __config.plot_area.margins.top)
                    {
                        _loc3 = true;
                    } // end if
                }
                else if (__values_arr[_loc2].value < __config.bottom || __values_arr[_loc2].value > __config.top)
                {
                    _loc3 = true;
                } // end if
            } // end else if
            if (_loc3 == true)
            {
                __values_arr[_loc2].text_field._visible = false;
                __values_arr[_loc2].tick_mc._visible = false;
                __3dgrid_mc["grid3d_mc" + __values_arr[_loc2].index]._visible = false;
                continue;
            } // end if
            __values_arr[_loc2].text_field._visible = true;
            __values_arr[_loc2].tick_mc._visible = true;
            __3dgrid_mc["grid3d_mc" + __values_arr[_loc2].index]._visible = true;
        } // end of for
        if (__config.values[__axis].skip_first == true)
        {
            __first_field._visible = false;
            __first_rotated._visible = false;
            __first_tick._visible = false;
        } // end if
        if (__config.values[__axis].skip_last == true)
        {
            __last_field._visible = false;
            __last_rotated._visible = false;
            __last_tick._visible = false;
        } // end if
    } // End of the function
    function get widest()
    {
        return (__widest_value);
    } // End of the function
    var __k = 1;
} // End of Class
