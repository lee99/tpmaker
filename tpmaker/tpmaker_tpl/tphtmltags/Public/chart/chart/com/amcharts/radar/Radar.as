class com.amcharts.radar.Radar
{
    var __config, __data, __mc, __values_mc, __get__mc;
    function Radar(target_mc, name, depth, values_depth, config, data)
    {
        __config = config;
        __data = data;
        __mc = target_mc.createEmptyMovieClip(name, depth);
        __values_mc = target_mc.createEmptyMovieClip("values_mc", values_depth);
        __mc._x = __config.radar.r_x;
        __mc._y = __config.radar.r_y;
        __values_mc._x = __config.radar.r_x;
        __values_mc._y = __config.radar.r_y;
        this.__init();
    } // End of the function
    function __init()
    {
        var _loc67 = this;
        var _loc7 = __config.radar.r_radius;
        var _loc18 = __data.axes.length;
        var _loc2 = 180;
        var _loc3 = 360 / _loc18;
        var _loc63 = __mc.createEmptyMovieClip("axes_mc", __axes_depth);
        var _loc56 = __mc.createEmptyMovieClip("axes_mc", __fills_depth);
        var _loc60 = __mc.createEmptyMovieClip("labels_mc", __labels_depth);
        for (var _loc11 = 0; _loc11 < _loc18; ++_loc11)
        {
            var _loc4 = _loc2 - _loc3 * _loc11;
            var _loc42 = _loc7 * Math.sin(_loc4 / 180 * 3.141593E+000);
            var _loc40 = _loc7 * Math.cos(_loc4 / 180 * 3.141593E+000);
            var _loc59 = new com.amcharts.Line(_loc63, "axis_mc" + _loc11, _loc11, [0, _loc42], [0, _loc40], __data.axes[_loc11].width, __data.axes[_loc11].color, __data.axes[_loc11].alpha);
            var _loc37 = __config.axes.labels.distance - 5;
            var _loc20 = (_loc7 + _loc37) * Math.sin(_loc4 / 180 * 3.141593E+000);
            var _loc47 = (_loc7 + _loc37) * Math.cos(_loc4 / 180 * 3.141593E+000);
            if (__config.axes.labels.enabled == true)
            {
                var _loc17 = "left";
                if (_loc4 == 180 || _loc4 == 0)
                {
                    _loc17 = "center";
                    _loc20 = _loc20 - 5;
                } // end if
                if (_loc4 < 0)
                {
                    _loc17 = "right";
                    _loc20 = _loc20 - 10;
                } // end if
                var _loc5 = new com.amcharts.Text(_loc60, "label" + _loc11, _loc11, _loc20 + 5, _loc47, __config.axes.labels.width, undefined, _loc17, __config);
                _loc5.size = __config.axes.labels.text_size;
                _loc5.color = __config.axes.labels.text_color;
                _loc5.htmlTxt = __data.axes[_loc11].axis;
                _loc5.align = _loc17;
                if (_loc4 > 90 || _loc4 < -90)
                {
                    _loc5.y = _loc5.y - (_loc5.textHeight + 4);
                } // end if
                if (_loc4 == 90 || _loc4 == -90)
                {
                    _loc5.y = _loc5.y - (_loc5.textHeight / 2 + 2);
                } // end if
                if (_loc17 == "right")
                {
                    _loc5.x = _loc5.x - _loc5.width;
                } // end if
                if (_loc17 == "center")
                {
                    _loc5.x = _loc5.x - _loc5.width / 2;
                } // end if
            } // end if
            if (__data.axes[_loc11].fill_color != undefined)
            {
                if (__config.grid.type == "circles")
                {
                    var _loc44 = new com.amcharts.Circle(_loc56, "fill_mc" + _loc11, _loc11, __data.axes[_loc11].fill_color, _loc7, 0, __data.axes[_loc11].fill_alpha, 0, 0, 0, 0).__get__mc();
                    var _loc28 = _loc7 * 2 * Math.sin(_loc4 / 180 * 3.141593E+000);
                    var _loc29 = _loc7 * 2 * Math.cos(_loc4 / 180 * 3.141593E+000);
                    var _loc41 = _loc2 - _loc3 * (_loc11 + 1);
                    var _loc50 = _loc7 * 2 * Math.sin(_loc41 / 180 * 3.141593E+000);
                    var _loc49 = _loc7 * 2 * Math.cos(_loc41 / 180 * 3.141593E+000);
                    var _loc38 = new com.amcharts.Shape(_loc56, "mask_mc" + _loc11, _loc11 + 1000, [0, _loc28, _loc50, 0], [0, _loc29, _loc49, 0], 0, 0, 0, 100, 0).__get__mc();
                    _loc38._alpha = 0;
                    _loc44.setMask(_loc38);
                    continue;
                } // end if
                _loc41 = _loc2 - _loc3 * (_loc11 + 1);
                _loc50 = _loc7 * Math.sin(_loc41 / 180 * 3.141593E+000);
                _loc49 = _loc7 * Math.cos(_loc41 / 180 * 3.141593E+000);
                new com.amcharts.Shape(_loc56, "fill_mc" + _loc11, _loc11, [0, _loc42, _loc50, 0], [0, _loc40, _loc49, 0], __data.axes[_loc11].fill_color, 0, 0, __data.axes[_loc11].fill_alpha, 0);
            } // end if
        } // end of for
        var _loc64 = com.amcharts.radar.MinMax.calculate(__config.values.min, __config.values.max, __data.graphs.graph, __config.grid.approx_count, __config);
        var _loc52 = _loc64[0];
        var _loc65 = _loc64[1];
        var _loc53 = _loc64[2];
        var _loc66 = _loc64[3];
        __config.min = _loc52;
        __config.max = _loc65;
        __config.step = _loc53;
        __config.min_real = _loc66;
        var _loc27 = __mc.createEmptyMovieClip("grid_mc", __grid_depth);
        var _loc51 = (_loc65 - _loc52) / _loc53 + 1;
        var _loc9 = _loc7 / (_loc51 - 1);
        if (__config.grid.type == "circles")
        {
            for (var _loc11 = 0; _loc11 < _loc51; ++_loc11)
            {
                var _loc16 = _loc27.getNextHighestDepth();
                if (int(_loc11 / 2) == _loc11 / 2)
                {
                    var _loc48 = __config.grid.fill_color;
                    var _loc45 = __config.grid.fill_alpha;
                }
                else
                {
                    _loc48 = undefined;
                    _loc45 = 0;
                } // end else if
                var _loc43 = __config.grid.alpha;
                new com.amcharts.Circle(_loc27, "grid_mc" + _loc16, _loc16, _loc48, _loc9 * _loc11, _loc9 * (_loc11 - 1), _loc45, __config.grid.width, __config.grid.color, _loc43, 0);
            } // end of for
        }
        else
        {
            var _loc32 = new Array();
            var _loc31 = new Array();
            for (var _loc6 = 1; _loc6 < _loc51; ++_loc6)
            {
                var _loc25 = new Array();
                var _loc24 = new Array();
                for (var _loc11 = 0; _loc11 < _loc18; ++_loc11)
                {
                    var _loc14 = _loc9 * _loc6 * Math.sin((_loc2 + _loc3 * _loc11) / 180 * 3.141593E+000);
                    var _loc13 = _loc9 * _loc6 * Math.cos((_loc2 + _loc3 * _loc11) / 180 * 3.141593E+000);
                    if (_loc11 == 0)
                    {
                        _loc28 = _loc14;
                        _loc29 = _loc13;
                    } // end if
                    _loc25.push(_loc14);
                    _loc24.push(_loc13);
                    _loc32.push(_loc14);
                    _loc31.push(_loc13);
                } // end of for
                _loc32.push(_loc28);
                _loc31.push(_loc29);
                _loc25.push(_loc28);
                _loc24.push(_loc29);
                _loc16 = _loc27.getNextHighestDepth();
                if (__config.grid.dashed == true)
                {
                    new com.amcharts.DashedLine(_loc27, "grid_mc" + _loc16, _loc16 + 1000, _loc25, _loc24, __config.grid.width, __config.grid.dash_length, __config.grid.color, __config.grid.alpha);
                }
                else
                {
                    new com.amcharts.Line(_loc27, "grid_mc" + _loc16, _loc16 + 1000, _loc25, _loc24, __config.grid.width, __config.grid.color, __config.grid.alpha);
                } // end else if
                if (__config.grid.fill_alpha > 0)
                {
                    if (int(_loc6 / 2) == _loc6 / 2)
                    {
                        new com.amcharts.Shape(_loc27, "fill_mc" + _loc16, _loc16, _loc32, _loc31, __config.grid.fill_color, 0, 0, __config.grid.fill_alpha, 0);
                        _loc32 = new Array();
                        _loc31 = new Array();
                    } // end if
                } // end if
            } // end of for
        } // end else if
        var _loc62 = __values_mc.createEmptyMovieClip("valus_mc", 10);
        var _loc61 = __mc.createEmptyMovieClip("ticks_mc", __ticks_depth);
        if (__config.values.enabled == true)
        {
            var _loc54 = 0;
            if (__config.values.skip_first == true)
            {
                _loc54 = 1;
            } // end if
            var _loc55 = _loc51;
            if (__config.values.skip_last == true)
            {
                _loc55 = _loc51 - 1;
            } // end if
            var _loc30 = 0;
            var _loc57 = false;
            for (var _loc11 = _loc54; _loc11 < _loc55; _loc11 = _loc11 + __config.values.frequency)
            {
                var _loc33 = com.amcharts.Utils.fixedMath(_loc52, _loc11 * _loc53, "plus");
                if (__config.values.integers_only == false)
                {
                    var _loc36 = _loc33.toString().split(".")[1].length;
                    if (_loc36 > _loc30)
                    {
                        _loc30 = _loc36;
                    } // end if
                    if (_loc36 > 0 && _loc30 < __config.digits_after_decimal)
                    {
                        _loc30 = __config.digits_after_decimal;
                    } // end if
                } // end if
                if ((Math.abs(_loc33) <= __config.scientific_min || Math.abs(_loc33) >= __config.scientific_max) && _loc33 != 0)
                {
                    _loc57 = true;
                } // end if
            } // end of for
            for (var _loc11 = _loc54; _loc11 < _loc55; _loc11 = _loc11 + __config.values.frequency)
            {
                var _loc8 = new com.amcharts.Text(_loc62, "value_txt" + _loc11, _loc11, 0, 0, undefined, undefined, "left", __config);
                _loc8.color = __config.values.color;
                _loc8.size = __config.values.text_size;
                _loc33 = com.amcharts.Utils.fixedMath(_loc52, _loc11 * _loc53, "plus");
                if (__config.values.integers_only == true && int(_loc33) != _loc33)
                {
                    continue;
                }
                else
                {
                    var _loc26 = com.amcharts.Utils.formatNumber(_loc33, __config.decimals_separator, __config.thousands_separator, _loc30, false, false, undefined, _loc57);
                    if (__config.values.unit_position == "left")
                    {
                        _loc26 = __config.values.unit + _loc26;
                    }
                    else
                    {
                        _loc26 = _loc26 + __config.values.unit;
                    } // end else if
                    _loc8.htmlTxt = _loc26;
                } // end else if
                _loc8.y = -_loc9 * _loc11 - _loc8.textHeight / 2 - 2;
                var _loc46 = new com.amcharts.Line(_loc61, "tick_mc" + _loc11, _loc11, [__data.axes[0].width / 2, __config.axes.tick_length], [-_loc9 * _loc11, -_loc9 * _loc11], 0, __data.axes[0].color, __data.axes[0].alpha);
                if (__config.values.position != "right")
                {
                    _loc8.x = -__config.axes.tick_length - __config.axes.width / 2 - _loc8.textWidth - 5;
                    _loc46.mc._x = _loc46.mc._x + (-__data.axes[0].width / 2 - __config.axes.tick_length);
                    continue;
                } // end if
                _loc8.x = __config.axes.tick_length + __config.axes.width / 2 + 3;
            } // end of for
        } // end if
        _loc56 = __mc.createEmptyMovieClip("fills_mc", __fills2_depth);
        for (var _loc11 = 0; _loc11 < __config.fills.fill.length; ++_loc11)
        {
            var _loc15 = __config.fills.fill[_loc11];
            var _loc21 = _loc15.end_value;
            if (_loc21 > __config.max)
            {
                _loc21 = __config.max;
            } // end if
            if (_loc21 < __config.min)
            {
                _loc21 = __config.min;
            } // end if
            var _loc23 = _loc15.start_value;
            if (_loc23 > __config.max)
            {
                _loc23 = __config.max;
            } // end if
            if (_loc23 < __config.min)
            {
                _loc23 = __config.min;
            } // end if
            var _loc39 = __config.radar.r_radius / (__config.max - __config.min);
            var _loc19 = (_loc21 - __config.min) * _loc39;
            var _loc22 = (_loc23 - __config.min) * _loc39;
            var _loc12 = new Array();
            var _loc10 = new Array();
            if (__config.grid.type == "circles")
            {
                new com.amcharts.Circle(_loc56, "fill_mc" + _loc11, _loc11, _loc15.color, _loc19, _loc22, _loc15.alpha, 0, 0, 0, 0).__get__mc();
                continue;
            } // end if
            for (var _loc6 = 0; _loc6 < _loc18; ++_loc6)
            {
                _loc14 = _loc19 * Math.sin((_loc2 + _loc3 * _loc6) / 180 * 3.141593E+000);
                _loc13 = _loc19 * Math.cos((_loc2 + _loc3 * _loc6) / 180 * 3.141593E+000);
                _loc12.push(_loc14);
                _loc10.push(_loc13);
                if (_loc6 == 0)
                {
                    var _loc35 = _loc14;
                    var _loc34 = _loc13;
                } // end if
            } // end of for
            _loc12.push(_loc35);
            _loc10.push(_loc34);
            for (var _loc6 = 0; _loc6 < _loc18; ++_loc6)
            {
                _loc14 = _loc22 * Math.sin((_loc2 + _loc3 * _loc6) / 180 * 3.141593E+000);
                _loc13 = _loc22 * Math.cos((_loc2 + _loc3 * _loc6) / 180 * 3.141593E+000);
                _loc12.push(_loc14);
                _loc10.push(_loc13);
                if (_loc6 == 0)
                {
                    _loc35 = _loc14;
                    _loc34 = _loc13;
                } // end if
            } // end of for
            _loc12.push(_loc35);
            _loc10.push(_loc34);
            var _loc58 = new com.amcharts.Shape(_loc56, "fill_mc" + _loc11, _loc11, _loc12, _loc10, _loc15.color, 0, 0, _loc15.alpha, 0).__get__mc();
        } // end of for
    } // End of the function
    function get mc()
    {
        return (__mc);
    } // End of the function
    var __fills_depth = 0;
    var __fills2_depth = 5;
    var __grid_depth = 10;
    var __axes_depth = 20;
    var __labels_depth = 30;
    var __ticks_depth = 60;
} // End of Class
