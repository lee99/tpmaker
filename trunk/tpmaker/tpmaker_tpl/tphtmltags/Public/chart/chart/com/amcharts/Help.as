class com.amcharts.Help
{
    var __mc, __config;
    function Help(target, name, depth, config)
    {
        __mc = target.createEmptyMovieClip(name, depth);
        __config = config;
        this.__init();
    } // End of the function
    function __init()
    {
        var _loc2 = new com.amcharts.Button(__mc, "help_button_mc", 0, __config.help.button.text);
        _loc2.cornerRadius = 0;
        _loc2.borderWidth = 0;
        _loc2.borderAlpha = 0;
        _loc2.bgColor = _loc2.bgColorHover = _loc2.bgColorActive = __config.help.button.color;
        _loc2.bgAlpha = _loc2.bgAlphaHover = _loc2.bgAlphaActive = __config.help.button.alpha;
        _loc2.hPadding = 10;
        _loc2.font = __config.font;
        _loc2.textColor = __config.help.button.text_color;
        _loc2.textColorHover = _loc2.textColorActive = __config.help.button.text_color_hover;
        _loc2.textSize = __config.help.button.text_size;
        _loc2.show();
        var _loc4 = _loc2.mc;
        var _loc7 = com.amcharts.Utils.toCoordinate(__config.help.button.x, __config.width);
        if (isNaN(_loc7) == true)
        {
            _loc7 = __config.width - _loc4._width;
        } // end if
        _loc4._x = _loc7;
        var _loc6 = com.amcharts.Utils.toCoordinate(__config.help.button.y, __config.height);
        if (isNaN(_loc6) == true)
        {
            _loc6 = 0;
        } // end if
        _loc4._y = _loc6;
        var _loc3 = new com.amcharts.Balloon(__mc, "help_balloon_mc", 1, __config.help.balloon.text, 0, 0, __config.width, __config.height, __config.help.balloon.width);
        var _loc9;
        var _loc8;
        if (_loc4._x < __config.width / 2)
        {
            _loc9 = _loc4._x + _loc4._width;
        }
        else
        {
            _loc9 = _loc4._x;
        } // end else if
        if (_loc4._y > __config.height / 2)
        {
            _loc8 = _loc4._y + _loc4._height;
        }
        else
        {
            _loc8 = _loc4._y;
        } // end else if
        _loc3.pointTo(_loc9, _loc8);
        _loc3.hMargins = 10;
        _loc3.pointerWidth = 0;
        _loc3.distance = 0;
        _loc3.vMargins = 10;
        _loc3.pointerPosition = "horizontal";
        _loc3.bgColor = _loc3.borderColor = __config.help.balloon.color;
        _loc3.bgAlpha = __config.help.balloon.alpha;
        _loc3.borderAlpha = 0;
        _loc3.font = __config.font;
        _loc3.textColor = __config.help.balloon.text_color;
        _loc3.textSize = __config.help.balloon.text_size;
        _loc3.show();
        var help_balloon_mc = _loc3.mc;
        help_balloon_mc._visible = false;
        var _loc5 = new Object();
        _loc5.onRollOver = function ()
        {
            help_balloon_mc._visible = true;
        };
        _loc5.onRollOut = function ()
        {
            help_balloon_mc._visible = false;
        };
        _loc2.addListener(_loc5);
    } // End of the function
} // End of Class
