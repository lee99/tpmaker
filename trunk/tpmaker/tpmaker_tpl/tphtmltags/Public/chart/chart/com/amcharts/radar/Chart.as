class com.amcharts.radar.Chart
{
    var __config, __data, __config_original, __data_original, __target_mc, __tween_array, __appear_interval, __mc, __radar, __graphs, __chart_inited, __legend, __bg_mc, __inited_interval, __chart_completed, __completed_interval, __balloon_column_index, __balloon_graph_index, __balloon, __balloon_mc, __mouse_listener, __stage_listener, __resize_interval, __get__completed, __set__completed;
    function Chart(target_mc, name, depth, config, data, config_original, data_original, resize_on_init)
    {
        __config = config;
        __data = data;
        __config_original = config_original;
        __data_original = data_original;
        __target_mc = target_mc;
        __config.root_mc = __target_mc;
        __tween_array = new Array();
        __appear_interval = new Array();
        __mc = target_mc.createEmptyMovieClip(name, depth);
        if (resize_on_init == true)
        {
            __resize_time = 2;
            this.__countResizeTime();
        }
        else
        {
            this.__init();
        } // end else if
        if (__config.redraw == true)
        {
            this.__stageListener();
        } // end if
    } // End of the function
    function __init()
    {
        this.__updateConfig();
        new com.amcharts.Rectangle(__mc, "bg_mc", __bg_depth, __config.width, __config.height, __config.background.color, 1, __config.background.border_color, 0, __config.background.alpha, __config.background.border_alpha);
        this.__build();
        if (__data.message != undefined)
        {
            this.__popUp(__data.message, __data.message_bg_color, __data.message_text_color);
        } // end if
    } // End of the function
    function __updateConfig()
    {
        var _loc2 = __config.height;
        if (__config.width < __config.height)
        {
            _loc2 = __config.width;
        } // end if
        __config.radar.r_x = com.amcharts.Utils.toCoordinate(__config.radar.x, __config.width);
        __config.radar.r_y = com.amcharts.Utils.toCoordinate(__config.radar.y, __config.height);
        __config.radar.r_radius = com.amcharts.Utils.toCoordinate(__config.radar.radius, _loc2);
        if (__config.radar.r_radius < 0)
        {
            __config.radar.r_radius = 1;
        } // end if
        __config.legend.r_x = com.amcharts.Utils.toCoordinate(__config.legend.x, __config.width);
        if (__config.legend.y == undefined)
        {
            __config.legend.r_y = __config.height;
        }
        else
        {
            __config.legend.r_y = com.amcharts.Utils.toCoordinate(__config.legend.y, __config.height);
        } // end else if
        __config.legend.r_width = com.amcharts.Utils.toCoordinate(__config.legend.width, __config.width);
    } // End of the function
    function __build()
    {
        var main_obj = this;
        __radar = new com.amcharts.radar.Radar(__mc, "radar_mc", __radar_depth, __values_depth, __config, __data);
        var _loc4 = __mc.createEmptyMovieClip("graphs_mc", __graphs_depth);
        var _loc3 = __mc.createEmptyMovieClip("bullets_mc", __bullets_depth);
        __graphs = new com.amcharts.radar.Graphs(_loc4, _loc3, __config, __data);
        if (__config.radar.grow_time > 0 && __chart_inited != true)
        {
            this.__startAnimation();
        } // end if
        var _loc2 = new Object();
        _loc2.onRollOver = function (graph_index, index)
        {
            main_obj.__balloon_graph_index = graph_index;
            main_obj.__balloon_column_index = index;
            main_obj.__showBalloon();
        };
        _loc2.onRollOut = function ()
        {
            main_obj.__hideBalloon();
        };
        __graphs.addListener(_loc2);
        if (__config.legend.enabled == true)
        {
            if (__config.legend.y == undefined)
            {
                __config.legend.r_y = __radar.__get__mc()._y + __radar.__get__mc().getBounds().yMax + __legend_spacing + 10;
            } // end if
            __legend = new com.amcharts.radar.Legend(__mc, "legend_mc", __legend_depth, __config, __data);
            if (__config.legend.y == undefined)
            {
                if (__legend.__get__mc()._y + __legend.__get__mc()._height > __config.height - __legend_spacing)
                {
                    __config.legend.y = __config.height - __legend_spacing - __legend.__get__mc()._height;
                    __config.radar.y = (__config.height - __legend.__get__mc()._height) / 2;
                    __config.radar.radius = (__config.height - __legend.__get__mc()._height) / 2 * 6.000000E-001;
                    this.__init();
                    return;
                } // end if
            } // end if
            if (__config.legend.initial_y == undefined)
            {
                __legend.__get__mc()._y = __config.height - __legend_spacing - __legend.__get__mc()._height;
            } // end if
        } // end if
        if (__config.labels.label.length > 0)
        {
            var _loc6 = new com.amcharts.Labels(__mc, "labels_mc", __labels_depth, __config);
        } // end if
        if (__config.background.file != undefined)
        {
            __bg_mc = __target_mc.createEmptyMovieClip("bg_mc", 0);
            var _loc5 = new com.amcharts.Load();
            _loc5.loadClip(__config.path + __config.background.file, __bg_mc, this, "__passPluginData");
        } // end if
        if (__chart_inited != true)
        {
            __inited_interval = setInterval(this, "__chartInited", 100);
        } // end if
        if (__chart_completed != true)
        {
            clearInterval(__completed_interval);
            __completed_interval = setInterval(this, "__chartCompleted", 101);
        } // end if
    } // End of the function
    function __showBalloon()
    {
        if (__config.balloon.enabled == true)
        {
            var _loc3 = com.amcharts.radar.Custom.formatText(__config, __config.graphs.graph[__balloon_graph_index].balloon_text, __config.graphs.graph[__balloon_graph_index].title, __data.graphs.graph[__balloon_graph_index].values[__balloon_column_index].value, __data.graphs.graph[__balloon_graph_index].values[__balloon_column_index].percent, __data.graphs.graph[__balloon_graph_index].values[__balloon_column_index].description, __data.axes[__balloon_column_index].axis, __config.date_formats.balloon);
            if (_loc3 != "" && _loc3 != undefined && _loc3 != " ")
            {
                __balloon = new com.amcharts.Balloon(__mc, "balloon_mc", __balloon_depth, _loc3, 0, 0, __config.width, __config.height, __config.balloon.max_width, __config);
                __balloon.pointTo(__mc._xmouse, __mc._ymouse);
                __balloon.__set__distance(12);
                __balloon.__set__hMargins(12);
                __balloon.__set__pointerWidth(20);
                __balloon.__set__vMargins(5);
                var _loc2 = __config.graphs.graph[__balloon_graph_index].balloon_color;
                _loc2 = com.amcharts.Colors.adjustLuminosity(_loc2, -10);
                var _loc4 = __config.balloon.border_color;
                if (_loc4 == undefined)
                {
                    _loc4 = _loc2;
                } // end if
                __balloon.__set__bgColor(_loc2);
                __balloon.__set__borderColor(_loc2);
                __balloon.__set__bgAlpha(__config.balloon.alpha);
                __balloon.__set__borderAlpha(__config.balloon.alpha);
                __balloon.__set__textColor(__config.graphs.graph[__balloon_graph_index].balloon_text_color);
                __balloon.__set__textSize(__config.balloon.text_size);
                __balloon.__set__cornerRadius(__config.balloon.corner_radius);
                __balloon.__set__borderWidth(__config.balloon.border_width);
                __balloon.__set__borderAlpha(__config.balloon.border_alpha);
                __balloon.__set__borderColor(_loc4);
                __balloon.show();
                __balloon_mc = __balloon.mc;
                __balloon.pointTo(__mc._xmouse, __mc._ymouse);
            } // end if
            Mouse.removeListener(__mouse_listener);
            __mouse_listener = new Object();
            var main_obj = this;
            __mouse_listener.onMouseMove = function ()
            {
                main_obj.__balloon.pointTo(main_obj.__mc._xmouse, main_obj.__mc._ymouse);
            };
            Mouse.addListener(__mouse_listener);
        } // end if
    } // End of the function
    function __hideBalloon()
    {
        Mouse.removeListener(__mouse_listener);
        __balloon.hide();
    } // End of the function
    function __startAnimation()
    {
        var _loc6 = this;
        var _loc5 = __config.radar.grow_time;
        if (__config.radar.sequenced_grow == true)
        {
            _loc5 = _loc5 / __data.graphs.graph.length;
        } // end if
        for (var _loc2 = 0; _loc2 < __data.graphs.graph.length; ++_loc2)
        {
            var _loc4 = __graphs.getGraphMc(_loc2);
            _loc4._alpha = 0;
            _loc4._xscale = 1.000000E-001;
            _loc4._yscale = 1.000000E-001;
            var _loc3 = __graphs.getBulletsMc(_loc2);
            _loc3._alpha = 0;
            _loc3._xscale = 1.000000E-001;
            _loc3._yscale = 1.000000E-001;
            if (__config.radar.sequenced_grow == false)
            {
                this.__animate(_loc2, _loc5);
                continue;
            } // end if
            __appear_interval[_loc2] = setInterval(this, "__animate", _loc5 * _loc2 * 1000 - _loc5 * _loc2 * 1000 * 5.000000E-001, _loc2, _loc5 * 2);
        } // end of for
    } // End of the function
    function __animate(index, time)
    {
        clearInterval(__appear_interval[index]);
        var _loc4 = __graphs.getGraphMc(index);
        __tween_array.push(new com.amcharts.Tween(_loc4, "_xscale", __config.radar.grow_effect, 0, 100, time));
        __tween_array.push(new com.amcharts.Tween(_loc4, "_yscale", __config.radar.grow_effect, 0, 100, time));
        __tween_array.push(new com.amcharts.Tween(_loc4, "_alpha", __config.radar.grow_effect, 0, 100, time));
        var _loc3 = __graphs.getBulletsMc(index);
        __tween_array.push(new com.amcharts.Tween(_loc3, "_xscale", __config.radar.grow_effect, 0, 100, time));
        __tween_array.push(new com.amcharts.Tween(_loc3, "_yscale", __config.radar.grow_effect, 0, 100, time));
        __tween_array.push(new com.amcharts.Tween(_loc3, "_alpha", __config.radar.grow_effect, 0, 100, time));
    } // End of the function
    function __stageListener()
    {
        Stage.removeListener(__stage_listener);
        var main_obj = this;
        __stage_listener = new Object();
        __stage_listener.onResize = function ()
        {
            main_obj.__resize_time = 2;
        };
        Stage.addListener(__stage_listener);
        clearInterval(__resize_interval);
        __resize_interval = setInterval(this, "__countResizeTime", 40);
        __resize_time = 0;
    } // End of the function
    function __countResizeTime()
    {
        if (__resize_time > 0)
        {
            --__resize_time;
        } // end if
        if (__resize_time == 1)
        {
            __config.width = Stage.width;
            __config.height = Stage.height;
            __target_mc.chart_width = Stage.width;
            __target_mc.chart_height = Stage.height;
            __config.legend.y = __config.legend.initial_y;
            __config.radar.radius = __config.radar.initial_radius;
            __config.radar.y = __config.radar.initial_y;
            this.__init();
        } // end if
    } // End of the function
    function __popUp(text, color, text_color)
    {
        __target_mc.__process = undefined;
        __target_mc.externalCall("amError", [__config.chart_id, text]);
        if (__config.error_messages.enabled == true)
        {
            var _loc4 = __config.width * 7.000000E-001;
            var _loc3 = com.amcharts.Utils.toCoordinate(__config.error_messages.x, __config.width);
            var _loc2 = com.amcharts.Utils.toCoordinate(__config.error_messages.y, __config.height);
            if (isNaN(_loc3) == true)
            {
                _loc3 = (__config.width - _loc4) / 2;
            } // end if
            if (isNaN(_loc2) == true)
            {
                _loc2 = __config.height / 2.500000E+000;
            } // end if
            if (color == undefined)
            {
                color = __config.error_messages.color;
            } // end if
            if (text_color == undefined)
            {
                text_color = __config.error_messages.text_color;
            } // end if
            new com.amcharts.PopUp(__mc, "popup_mc", __popup_depth, text, _loc3, _loc2, _loc4, color, text_color, "center", __config.error_messages.alpha, __config.error_messages.text_size);
        } // end if
    } // End of the function
    function __chartInited()
    {
        __chart_inited = true;
        clearInterval(__inited_interval);
        if (__target_mc.__chart_inited != true)
        {
            __target_mc.externalCall("amChartInited", [__config.chart_id]);
            __target_mc.__chart_inited = true;
        } // end if
    } // End of the function
    function __chartCompleted()
    {
        __chart_completed = true;
        clearInterval(__completed_interval);
        var _loc2 = __target_mc.__process;
        __target_mc.__process = undefined;
        __target_mc.externalCall("amProcessCompleted", [__config.chart_id, _loc2]);
    } // End of the function
    function set completed(param)
    {
        __chart_completed = param;
        //return (this.completed());
        null;
    } // End of the function
    function die()
    {
        for (var _loc2 = 0; _loc2 < __tween_array.length; ++_loc2)
        {
            __tween_array[_loc2].die();
            __tween_array[_loc2] = null;
        } // end of for
        for (var _loc2 = 0; _loc2 < __appear_interval.length; ++_loc2)
        {
            clearInterval(__appear_interval[_loc2]);
        } // end of for
        clearInterval(__resize_interval);
        clearInterval(__inited_interval);
        clearInterval(__completed_interval);
        Stage.removeListener(__stage_listener);
        Mouse.removeListener(__mouse_listener);
    } // End of the function
    var __resize_time = 0;
    var __bg_depth = 10;
    var __radar_depth = 30;
    var __graphs_depth = 40;
    var __bullets_depth = 50;
    var __legend_depth = 60;
    var __values_depth = 70;
    var __labels_depth = 100;
    var __balloon_depth = 1000;
    var __popup_depth = 3000;
    var __legend_spacing = 13;
} // End of Class
