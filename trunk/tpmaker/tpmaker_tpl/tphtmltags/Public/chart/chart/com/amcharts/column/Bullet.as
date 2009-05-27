class com.amcharts.column.Bullet
{
    var __mc, __point_config, __graph_config, __config, __x, __y, __bullet_size, __get__mc, __get__size;
    function Bullet(target_mc, name, depth, x, y, point_config, graph_config, config)
    {
        __mc = target_mc.createEmptyMovieClip(name, depth);
        __point_config = point_config;
        __graph_config = graph_config;
        __config = config;
        __x = x;
        __y = y;
        this.__init();
    } // End of the function
    function __init()
    {
        if (__point_config.bullet != undefined)
        {
            var _loc2 = __point_config.bullet;
        }
        else
        {
            _loc2 = __graph_config.bullet;
        } // end else if
        if (__point_config.bullet_size != undefined)
        {
            __bullet_size = __point_config.bullet_size;
        }
        else
        {
            __bullet_size = __graph_config.bullet_size;
        } // end else if
        if (_loc2.indexOf("?") != 1)
        {
            var _loc3 = _loc2.split("?")[0].substr(-3).toLowerCase();
        }
        else
        {
            _loc3 = _loc2.substr(-3).toLowerCase();
        } // end else if
        if (_loc3 == "gif" || _loc3 == "jpg" || _loc3 == "png" || _loc3 == "swf")
        {
            var _loc4 = __mc.createEmptyMovieClip("icon_mc", 1);
            if (_loc3 == "swf")
            {
                var _loc7 = "";
            }
            else
            {
                _loc7 = "__placeBullet";
            } // end else if
            var _loc8 = new com.amcharts.Load();
            _loc8.loadClip(__config.path + _loc2, _loc4, this, _loc7);
        }
        else
        {
            _loc4 = __mc.attachMovie("bullet_" + _loc2, "bullet_mc", 1);
            _loc4._width = __bullet_size;
            _loc4._height = __bullet_size;
            var _loc6 = new Color(_loc4.main_mc);
            if (__point_config.bullet_color != undefined)
            {
                _loc6.setRGB(__point_config.bullet_color);
            }
            else
            {
                _loc6.setRGB(__graph_config.bullet_color);
            } // end else if
            _loc6 = new Color(_loc4.border_mc);
            _loc6.setRGB(__config.plot_area.color);
        } // end else if
        __mc._x = __x;
        __mc._y = __y;
        __mc._alpha = __graph_config.alpha;
        var _loc5 = __mc.attachMovie("bullet_round", "hit_mc", 0);
        _loc5._width = 15;
        _loc5._height = 15;
        _loc5._alpha = 0;
    } // End of the function
    function __placeBullet(clip_mc)
    {
        clip_mc._x = clip_mc._x - clip_mc._width / 2;
        clip_mc._y = clip_mc._y - clip_mc._height / 2;
    } // End of the function
    function get mc()
    {
        return (__mc);
    } // End of the function
    function get size()
    {
        return (__bullet_size);
    } // End of the function
} // End of Class
