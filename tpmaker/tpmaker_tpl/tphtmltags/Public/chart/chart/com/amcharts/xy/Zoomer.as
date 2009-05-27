class com.amcharts.xy.Zoomer
{
    var __mc, __config, __plot_area_mc, __selection_mc, __disable_axis, __width, __height, __target_mc, useHandCursor, __rectangle_mc, __initial_x, __initial_y, __interval, broadcastMessage, __target_interval;
    function Zoomer(target_mc, name, depth, config, plot_area_mc)
    {
        AsBroadcaster.initialize(this);
        __mc = target_mc.createEmptyMovieClip(name, depth);
        __config = config;
        __plot_area_mc = plot_area_mc;
        var _loc3 = new com.amcharts.Rectangle(__mc, "mask_mc", 10, __plot_area_mc._width, __plot_area_mc._height, 0).__get__mc();
        _loc3._alpha = 0;
        __selection_mc = __mc.createEmptyMovieClip("selection_mc", 0);
        __selection_mc.setMask(_loc3);
        __disable_axis = __config.zoom.disable_axis;
        __width = __config.plot_area.width_real;
        __height = __config.plot_area.height_real;
        __mc._x = __config.plot_area.margins.left + __config.dx;
        __mc._y = __config.plot_area.margins.top + __config.dy;
        if (__config.zoom.enabled == true)
        {
            var _loc2 = new com.amcharts.Rectangle(__mc, "target_mask_mc", 30, __plot_area_mc._width, __plot_area_mc._height, 0).__get__mc();
            _loc2._alpha = 0;
            __target_mc = __mc.createEmptyMovieClip("target_mc", 20);
            __target_mc.setMask(_loc2);
            this.__makeTarget();
        } // end if
        this.__init();
    } // End of the function
    function __init()
    {
        var main_obj = this;
        __plot_area_mc.tabEnabled = false;
        __plot_area_mc.onRollOver = function ()
        {
            useHandCursor = false;
            if (main_obj.__config.zoom.target == true)
            {
                main_obj.__target_mc._visible = true;
            } // end if
        };
        __plot_area_mc.onPress = function ()
        {
            main_obj.__startSelection();
        };
        __plot_area_mc.onRelease = function ()
        {
            main_obj.__stopSelection();
        };
        __plot_area_mc.onReleaseOutside = function ()
        {
            main_obj.__stopSelection();
            if (main_obj.__config.zoom.target == true)
            {
                main_obj.__target_mc._visible = false;
            } // end if
        };
        __plot_area_mc.onRollOut = function ()
        {
            if (main_obj.__config.zoom.target == true)
            {
                main_obj.__target_mc._visible = false;
            } // end if
        };
    } // End of the function
    function __startSelection()
    {
        __rectangle_mc = new com.amcharts.Rectangle(__selection_mc, "rectangle_mc", 0, 1, 1, __config.zoom.bg_color, 0, __config.zoom.border_color, 0, __config.zoom.bg_alpha, __config.zoom.border_alpha).mc;
        __rectangle_mc.setMask();
        __rectangle_mc._x = __mc._xmouse;
        __rectangle_mc._y = __mc._ymouse;
        __initial_x = __rectangle_mc._x;
        __initial_y = __rectangle_mc._y;
        clearInterval(__interval);
        __interval = setInterval(this, "__moveSelection", 20);
    } // End of the function
    function __moveSelection()
    {
        if (__mc._xmouse >= __initial_x)
        {
            __rectangle_mc._x = __initial_x;
            __rectangle_mc._width = __mc._xmouse - __initial_x;
        }
        else
        {
            __rectangle_mc._x = __mc._xmouse;
            __rectangle_mc._width = __initial_x - __mc._xmouse;
        } // end else if
        if (__mc._ymouse >= __initial_y)
        {
            __rectangle_mc._y = __initial_y;
            __rectangle_mc._height = __mc._ymouse - __initial_y;
        }
        else
        {
            __rectangle_mc._y = __mc._ymouse;
            __rectangle_mc._height = __initial_y - __mc._ymouse;
        } // end else if
        if (__disable_axis == "y")
        {
            __rectangle_mc._y = 0;
            __rectangle_mc._height = __height;
        } // end if
        if (__disable_axis == "x")
        {
            __rectangle_mc._x = 0;
            __rectangle_mc._width = __width;
        } // end if
    } // End of the function
    function __stopSelection()
    {
        __rectangle_mc._visible = false;
        if (__rectangle_mc._width < 3 && __rectangle_mc._height < 3)
        {
            return;
        } // end if
        var _loc6 = __width / (__config.right - __config.left);
        var _loc7 = __height / (__config.top - __config.bottom);
        if (__config.values.x.reverse == true)
        {
            var _loc2 = (__width - __rectangle_mc._x) / _loc6 + __config.left;
            var _loc5 = (__width - (__rectangle_mc._x + __rectangle_mc._width)) / _loc6 + __config.left;
        }
        else
        {
            _loc5 = __rectangle_mc._x / _loc6 + __config.left;
            _loc2 = (__rectangle_mc._x + __rectangle_mc._width) / _loc6 + __config.left;
        } // end else if
        if (__config.values.y.reverse == true)
        {
            var _loc3 = (__rectangle_mc._y + __rectangle_mc._height) / _loc7 + __config.bottom;
            var _loc4 = __rectangle_mc._y / _loc7 + __config.bottom;
        }
        else
        {
            _loc4 = (__height - (__rectangle_mc._y + __rectangle_mc._height)) / _loc7 + __config.bottom;
            _loc3 = (__height - __rectangle_mc._y) / _loc7 + __config.bottom;
        } // end else if
        if (_loc3 > __config.max_y)
        {
            _loc3 = __config.max_y;
        } // end if
        if (_loc4 < __config.min_y)
        {
            _loc4 = __config.min_y;
        } // end if
        if (_loc5 < __config.min_x)
        {
            _loc5 = __config.min_x;
        } // end if
        if (_loc2 > __config.max_x)
        {
            _loc2 = __config.max_x;
        } // end if
        if (_loc2 - _loc5 < (__config.max_x - __config.min_x) / __config.zoom.max_factor)
        {
            _loc2 = _loc5 + (__config.max_x - __config.min_x) / __config.zoom.max_factor;
            if (_loc2 > __config.max_x)
            {
                _loc2 = __config.max_x;
                _loc5 = __config.max_x - (__config.max_x - __config.min_x) / __config.zoom.max_factor;
            } // end if
        } // end if
        if (_loc3 - _loc4 < (__config.max_y - __config.min_y) / __config.zoom.max_factor)
        {
            _loc3 = _loc4 + (__config.max_y - __config.min_y) / __config.zoom.max_factor;
            if (_loc3 > __config.max_y)
            {
                _loc3 = __config.max_y;
                _loc4 = __config.max_y - (__config.max_y - __config.min_y) / __config.zoom.max_factor;
            } // end if
        } // end if
        this.broadcastMessage("onZoom", _loc5, _loc3, _loc2, _loc4);
    } // End of the function
    function __makeTarget()
    {
        new com.amcharts.Line(__target_mc, "horizontal", 0, [-__width - 10, __width + 10], [0, 0], 0, __config.zoom.border_color, __config.zoom.border_alpha);
        new com.amcharts.Line(__target_mc, "vertical", 1, [0, 0], [-__height - 10, __height + 10], 0, __config.zoom.border_color, __config.zoom.border_alpha);
        clearInterval(__target_interval);
        __target_mc._visible = false;
        __target_interval = setInterval(this, "__moveTarget", 20);
    } // End of the function
    function __moveTarget()
    {
        __target_mc._x = __mc._xmouse;
        __target_mc._y = __mc._ymouse;
    } // End of the function
    function die()
    {
        clearInterval(__target_interval);
        clearInterval(__interval);
    } // End of the function
} // End of Class
