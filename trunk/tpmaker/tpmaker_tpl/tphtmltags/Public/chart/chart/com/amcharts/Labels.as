class com.amcharts.Labels
{
    var __mc, __config;
    function Labels(target_mc, name, depth, config)
    {
        __mc = target_mc.createEmptyMovieClip(name, depth);
        __config = config;
        this.__init();
    } // End of the function
    function __init()
    {
        for (var _loc6 = 0; _loc6 < __config.labels.label.length; ++_loc6)
        {
            if (__config.labels.label[_loc6].text != undefined)
            {
                var _loc2 = __config.labels.label[_loc6];
                var _loc5 = __mc.getNextHighestDepth();
                var _loc7 = com.amcharts.Utils.toCoordinate(_loc2.width, __config.width);
                var _loc9 = com.amcharts.Utils.toCoordinate(_loc2.x, __config.width);
                var _loc8 = com.amcharts.Utils.toCoordinate(_loc2.y, __config.height);
                if (isNaN(_loc7) == true)
                {
                    if (_loc2.rotate == true)
                    {
                        _loc7 = _loc8;
                    }
                    else
                    {
                        _loc7 = __config.width - _loc9;
                    } // end if
                } // end else if
                var _loc3 = new com.amcharts.Text(__mc, "label" + _loc5, _loc5, _loc9, _loc8, _loc7, __config.height, "left", __config);
                _loc3.size = _loc2.text_size;
                _loc3.color = _loc2.text_color;
                _loc3.align = _loc2.align;
                _loc3.htmlTxt = _loc2.text;
                if (_loc2.rotate == true)
                {
                    var _loc4 = com.amcharts.Utils.rotateText(__mc["label" + _loc5], __config.background.color, __mc, "label_r" + _loc5, __mc.getNextHighestDepth());
                    if (_loc2.align == "center")
                    {
                        _loc4._y = _loc4._y - (_loc7 - _loc4._height) / 2;
                    } // end if
                    if (_loc2.align == "right")
                    {
                        _loc4._y = _loc4._y - (_loc7 - _loc4._height);
                    } // end if
                } // end if
            } // end if
        } // end of for
    } // End of the function
} // End of Class
