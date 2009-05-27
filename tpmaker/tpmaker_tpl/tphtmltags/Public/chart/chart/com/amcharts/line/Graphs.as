class com.amcharts.line.Graphs
{
    var __config, __data, __mc, __reverse, __min, __max, __min_real, __height, __width, __base_val, __cell_count, __step_width, __step_height, __graph_count, __no_data, url, description, series, value, graph_index, useHandCursor, index, __get__noData;
    function Graphs(target_mc, name, depth, min_left, max_left, min_right, max_right, min_real_left, min_real_right, config, data)
    {
        AsBroadcaster.initialize(this);
        __config = config;
        __data = data;
        __mc = target_mc.createEmptyMovieClip(name, depth);
        __mc._y = __config.height - __config.plot_area.margins.bottom;
        __reverse = new Object();
        __reverse.left = __config.values.y_left.reverse;
        __reverse.right = __config.values.y_right.reverse;
        __min = new Object();
        __min.left = min_left;
        __min.right = min_right;
        __max = new Object();
        __max.left = max_left;
        __max.right = max_right;
        __min_real = new Object();
        __min_real.left = min_real_left;
        __min_real.right = min_real_right;
        __height = __config.plot_area.height;
        __width = __config.plot_area.width;
        __base_val = new Object();
        __base_val.left = 0;
        __base_val.right = 0;
        if (__min.left > 0 && __max.left > 0)
        {
            __base_val.left = __min.left;
        } // end if
        if (__min.left < 0 && __max.left < 0)
        {
            __base_val.left = __max.left;
        } // end if
        if (__min.right > 0 && __max.right > 0)
        {
            __base_val.right = __min.right;
        } // end if
        if (__min.right < 0 && __max.right < 0)
        {
            __base_val.right = __max.right;
        } // end if
        __cell_count = __config.end - __config.start;
        if (__config.start_on_axis == true)
        {
            __step_width = __width / (__cell_count - 1);
            __mc._x = __config.plot_area.margins.left;
        }
        else
        {
            __step_width = __width / __cell_count;
            __mc._x = __config.plot_area.margins.left + __step_width / 2;
        } // end else if
        __step_height = new Object();
        __step_height.left = __height / (__max.left - __min.left);
        __step_height.right = __height / (__max.right - __min.right);
        if (__config.axes.y_left.logarithmic == true)
        {
            __base_val.left = __min_real.left;
            var _loc2 = Math.log(__max.left) * 4.342945E-001 - Math.log(__base_val.left) * 4.342945E-001;
            __step_height.left = __height / _loc2;
        } // end if
        if (__config.axes.y_right.logarithmic == true)
        {
            __base_val.right = __min_real.right;
            _loc2 = Math.log(__max.right) * 4.342945E-001 - Math.log(__base_val.right) * 4.342945E-001;
            __step_height.right = __height / _loc2;
        } // end if
        __graph_count = __config.graphs.graph.length;
        this.__init();
    } // End of the function
    function __init()
    {
        this.__no_data = true;
        var sum_left = new Array();
        var sum_right = new Array();
        var i = this.__config.start;
        while (i < this.__config.end)
        {
            sum_left[i] = 0;
            sum_right[i] = 0;
            ++i;
        } // end while
        if (this.__config.vertical_lines.clustered == true)
        {
            var vertical_lines_count = 0;
            var j = 0;
            while (j < this.__graph_count)
            {
                if (this.__config.graphs.graph[j].vertical_lines == true)
                {
                    ++vertical_lines_count;
                } // end if
                ++j;
            } // end while
            var vertical_line_width = this.__step_width * this.__config.vertical_lines.width / 100 / vertical_lines_count;
        }
        else
        {
            var vertical_line_width = this.__step_width * this.__config.vertical_lines.width / 100;
        } // end else if
        if (vertical_line_width < 1)
        {
            vertical_line_width = 1;
        } // end if
        this.__config.vertical_lines.vertical_line_width = vertical_line_width;
        this.__config.vertical_lines.count = vertical_lines_count;
        var v_count = 0;
        var j = 0;
        while (j < this.__graph_count)
        {
            var graph_config = this.__config.graphs.graph[j];
            if (this.__config.rescale_on_hide == true && graph_config.hidden == true)
            {
            }
            else
            {
                var graph_data = this.__data.graphs.graph[j];
                var axis = this.__config.graphs.graph[j].axis;
                if (this.__cell_count == 1 && graph_config.bullet == undefined)
                {
                    graph_config.bullet = "round";
                } // end if
                var y = new Array();
                var x = new Array();
                var indexes = new Array();
                var graph_mc = this.__mc.createEmptyMovieClip("graph_mc" + j, j);
                var data_labels_mc = this.__mc.createEmptyMovieClip("labels_mc" + j, j + this.__graph_count);
                var line_mc = graph_mc.createEmptyMovieClip("line_mc", 0);
                var bullets_mc = this.__mc.createEmptyMovieClip("bullets_mc" + j, j + this.__graph_count * 3);
                var from = this.__config.start;
                if (graph_data.values[this.__config.start].value == null)
                {
                    var i = this.__config.start;
                    while (i > -1)
                    {
                        if (graph_data.values[i].value != null)
                        {
                            from = i;
                            break;
                        } // end if
                        --i;
                    } // end while
                } // end if
                var to = this.__config.end;
                if (graph_data.values[to - 1].value == null)
                {
                    var i = this.__config.end;
                    while (i < this.__data.series.length)
                    {
                        if (graph_data.values[i].value != null)
                        {
                            to = i + 1;
                            break;
                        } // end if
                        ++i;
                    } // end while
                } // end if
                var i = from;
                while (i < to)
                {
                    var x_pos = (i - this.__config.start) * this.__step_width;
                    x.push(x_pos);
                    indexes.push(i);
                    var y_pos;
                    var value;
                    if (graph_data.values[i].value == null)
                    {
                        value = null;
                        y_pos = null;
                    }
                    else
                    {
                        if (this.__config.axes["y_" + axis].type == "line")
                        {
                            if (this.__config.axes["y_" + axis].logarithmic == true)
                            {
                                value = graph_data.values[i].value;
                            }
                            else
                            {
                                value = graph_data.values[i].value - this.__min[axis];
                            } // end if
                        } // end else if
                        if (this.__config.axes["y_" + axis].type == "stacked")
                        {
                            if (this.__config.axes["y_" + axis].logarithmic == true)
                            {
                                value = graph_data.values[i].value + (eval("sum_" + axis)[i]);
                            }
                            else
                            {
                                value = graph_data.values[i].value + (eval("sum_" + axis)[i]) - this.__min[axis];
                            } // end else if
                            if (axis == "right")
                            {
                                sum_right[i] = sum_right[i] + graph_data.values[i].value;
                            }
                            else
                            {
                                sum_left[i] = sum_left[i] + graph_data.values[i].value;
                            } // end if
                        } // end else if
                        if (this.__config.axes["y_" + axis].type == "100% stacked")
                        {
                            if (this.__config.axes["y_" + axis].logarithmic == true)
                            {
                                value = graph_data.values[i].percent + (eval("sum_" + axis)[i]);
                            }
                            else
                            {
                                value = graph_data.values[i].percent + (eval("sum_" + axis)[i]) - this.__min[axis];
                            } // end else if
                            if (axis == "right")
                            {
                                sum_right[i] = sum_right[i] + graph_data.values[i].percent;
                            }
                            else
                            {
                                sum_left[i] = sum_left[i] + graph_data.values[i].percent;
                            } // end if
                        } // end else if
                        if (this.__reverse[axis] == true)
                        {
                            y_pos = value * this.__step_height[axis] - this.__height;
                        }
                        else
                        {
                            y_pos = -value * this.__step_height[axis];
                        } // end else if
                        if (this.__config.axes["y_" + axis].logarithmic == true)
                        {
                            var degree = Math.log(value) * 4.342945E-001 - Math.log(this.__base_val[axis]) * 4.342945E-001;
                            y_pos = -this.__step_height[axis] * degree;
                            if (this.__reverse[axis] == true)
                            {
                                y_pos = -this.__height - y_pos;
                            } // end if
                        } // end if
                    } // end else if
                    graph_data.values[i].y = y_pos;
                    y.push(y_pos);
                    if (y_pos != null)
                    {
                        this.__no_data = false;
                    } // end if
                    if (graph_data.values[i].value != null && x_pos >= 0 && x_pos <= this.__width && y_pos <= 0 && y_pos >= -this.__height)
                    {
                        var custom_bullet = false;
                        var bullet_mc = bullets_mc.createEmptyMovieClip("bullet_mc" + i, i);
                        if (graph_data.values[i].bullet != undefined)
                        {
                            var bullet = graph_data.values[i].bullet;
                        }
                        else
                        {
                            var bullet = graph_config.bullet;
                        } // end else if
                        if (bullet.indexOf("?") != 1)
                        {
                            var extension = bullet.split("?")[0].substr(-3).toLowerCase();
                        }
                        else
                        {
                            var extension = bullet.substr(-3).toLowerCase();
                        } // end else if
                        if (extension == "gif" || extension == "jpg" || extension == "png" || extension == "swf")
                        {
                            custom_bullet = true;
                            var icon_mc = bullet_mc.createEmptyMovieClip("icon_mc", 1);
                            var loader = new com.amcharts.Load();
                            if (extension == "swf")
                            {
                                var funct = "";
                            }
                            else
                            {
                                var funct = "__placeBullet";
                            } // end else if
                            loader.loadClip(this.__config.path + bullet, icon_mc, this, funct);
                        }
                        else
                        {
                            var icon_mc = bullet_mc.attachMovie("bullet_" + bullet, "bullet_mc", 1);
                            if (graph_data.values[i].bullet_size != undefined)
                            {
                                var bullet_size = graph_data.values[i].bullet_size;
                                custom_bullet = true;
                            }
                            else
                            {
                                var bullet_size = graph_config.bullet_size;
                            } // end else if
                            icon_mc._width = bullet_size;
                            icon_mc._height = bullet_size;
                            var color = new Color(icon_mc.main_mc);
                            if (graph_data.values[i].bullet_color != undefined)
                            {
                                custom_bullet = true;
                                color.setRGB(graph_data.values[i].bullet_color);
                            }
                            else
                            {
                                color.setRGB(graph_config.bullet_color);
                            } // end else if
                            var color = new Color(icon_mc.border_mc);
                            color.setRGB(this.__config.plot_area.color);
                        } // end else if
                        bullet_mc._x = x_pos;
                        bullet_mc._y = y_pos;
                        bullet_mc._alpha = graph_config.bullet_alpha;
                        bullet_mc.index = i;
                        bullet_mc.graph_index = j;
                        bullet_mc.series = this.__data.series[i].value;
                        bullet_mc.value = graph_data.values[i].value;
                        bullet_mc.description = graph_data.values[i].description;
                        var hit_mc = bullet_mc.attachMovie("bullet_round", "hit_mc", 0);
                        hit_mc._width = 15;
                        hit_mc._height = 15;
                        hit_mc._alpha = 0;
                        var main_obj = this;
                        bullet_mc.url = graph_data.values[i].url;
                        bullet_mc.onRelease = function ()
                        {
                            if (url != undefined)
                            {
                                getURL(url, main_obj.__config.link_target);
                            } // end if
                            main_obj.__config.root_mc.externalCall("amClickedOnBullet", [main_obj.__config.chart_id, graph_index, value, series, url, description]);
                        };
                        bullet_mc.tabEnabled = false;
                        bullet_mc.onRollOver = function ()
                        {
                            if (url == undefined)
                            {
                                useHandCursor = false;
                            } // end if
                            _root.showIndicator = true;
                            main_obj.__config.root_mc.externalCall("amRolledOverBullet", [main_obj.__config.chart_id, graph_index, value, series, url, description]);
                        };
                        bullet_mc.onRollOut = function ()
                        {
                            main_obj.__config.root_mc.externalCall("amRolledOutBullet");
                        };
                        if (this.__cell_count > this.__config.hide_bullets_count && this.__config.hide_bullets_count != 0)
                        {
                            if (custom_bullet == false)
                            {
                                bullet_mc._visible = false;
                            } // end if
                        } // end if
                    } // end if
                    if (graph_config.data_labels != undefined && graph_config.data_labels != "" && graph_data.values[i].value != null && x_pos >= 0 && x_pos <= this.__width)
                    {
                        if (this.__cell_count <= this.__config.hide_bullets_count || this.__config.hide_bullets_count == 0)
                        {
                            var data_label_txt = new com.amcharts.Text(data_labels_mc, "data_label_txt" + i, i, x_pos, y_pos, undefined, undefined, "center");
                            data_label_txt.color = graph_config.data_labels_text_color;
                            data_label_txt.size = graph_config.data_labels_text_size;
                            data_label_txt.htmlTxt = com.amcharts.line.Custom.formatText(this.__config, graph_config.data_labels, graph_config.title, graph_data.values[i].value, this.__data.series[i].value, graph_data.values[i].description, graph_data.values[i].percent, graph_data.values[i].duration);
                            if (graph_config.data_labels_position == "below")
                            {
                                var position = "below";
                            }
                            else
                            {
                                var position = "above";
                            } // end else if
                            if (graph_data.values[i].label_position == "below")
                            {
                                var position = "below";
                            } // end if
                            if (graph_data.values[i].label_position == "above")
                            {
                                var position = "above";
                            } // end if
                            if (position == "below")
                            {
                                data_label_txt.y = data_label_txt.y + 2;
                                if (bullet_size != undefined)
                                {
                                    data_label_txt.y = data_label_txt.y + bullet_size / 2;
                                } // end if
                            }
                            else
                            {
                                data_label_txt.y = data_label_txt.y - data_label_txt.height;
                                if (bullet_size != undefined)
                                {
                                    data_label_txt.y = data_label_txt.y - bullet_size / 2;
                                } // end if
                            } // end else if
                            if (this.__config.start_on_axis == true)
                            {
                                if (i == this.__config.start && data_label_txt.x < 0)
                                {
                                    data_label_txt.x = 0;
                                } // end if
                                if (i == this.__config.end - 1 && data_label_txt.x + data_label_txt.width > this.__config.plot_area.width)
                                {
                                    data_label_txt.x = this.__config.plot_area.width - data_label_txt.width;
                                } // end if
                            }
                            else
                            {
                                if (i == this.__config.start && data_label_txt.x < -this.__step_width / 2)
                                {
                                    data_label_txt.x = -this.__step_width / 2;
                                } // end if
                                if (i == this.__config.end - 1 && data_label_txt.x + data_label_txt.width > this.__config.plot_area.width - this.__step_width / 2)
                                {
                                    data_label_txt.x = this.__config.plot_area.width - data_label_txt.width - this.__step_width / 2;
                                } // end if
                            } // end else if
                            data_label_txt.width = data_label_txt.width + 1;
                        } // end if
                    } // end if
                    ++i;
                } // end while
                if (this.__no_data != true)
                {
                    new com.amcharts.line.GraphLine(line_mc, "line_mc", 20, x, y, indexes, graph_config.line_width, graph_config.color, this.__config.connect, graph_config.line_alpha);
                    if (this.__config.balloon.on_off == true)
                    {
                        var hit_line = new com.amcharts.line.GraphLine(line_mc, "hit_mc", 0, x, y, indexes, 10, graph_config.color, this.__config.connect, 0);
                        var hit_line_mc = hit_line.mc;
                        hit_line_mc.index = j;
                        hit_line_mc.tabEnabled = false;
                        hit_line_mc.onRelease = function ()
                        {
                            main_obj.broadcastMessage("onRelease", index);
                        };
                        hit_line_mc.onRollOver = function ()
                        {
                            _root.showIndicator = true;
                            main_obj.broadcastMessage("onRollOver", index);
                        };
                        hit_line_mc.onRollOut = hit_line_mc.onReleaseOutside = function ()
                        {
                            main_obj.broadcastMessage("onRollOut", index);
                        };
                    } // end if
                    if (this.__config.axes["y_" + axis].logarithmic == true)
                    {
                        if (this.__reverse[axis] == true)
                        {
                            var base_y = -this.__height;
                        }
                        else
                        {
                            var base_y = 0;
                        } // end else if
                    }
                    else if (this.__reverse[axis] == true)
                    {
                        var base_y = (this.__base_val[axis] - this.__min[axis]) * this.__step_height[axis] - this.__height;
                    }
                    else
                    {
                        var base_y = (this.__min[axis] - this.__base_val[axis]) * this.__step_height[axis];
                    } // end else if
                    if (graph_config.fill_alpha > 0)
                    {
                        var shape = new com.amcharts.line.GraphLine(line_mc, "fill_mc", 10, x, y, indexes, 0, graph_config.fill_color, this.__config.connect, 0, graph_config.fill_alpha, base_y, this.__data, this.__config.axes["y_" + axis].type, j, undefined, graph_config.axis, this.__config);
                    } // end if
                    if (this.__config.vertical_lines.clustered == true && graph_config.vertical_lines == true)
                    {
                        var v_shift = -(vertical_lines_count / 2 - v_count) * vertical_line_width;
                        graph_config.vertical_lines_index = v_count;
                        ++v_count;
                    }
                    else
                    {
                        var v_shift = -vertical_line_width / 2;
                        if (Math.abs(v_shift) < 1)
                        {
                            v_shift = 0;
                        } // end if
                    } // end else if
                    new com.amcharts.line.GraphLine(line_mc, "vertical_lines_mc", 19, x, y, indexes, graph_config.line_width, graph_config.color, this.__config.connect, 0, undefined, base_y, undefined, undefined, undefined, graph_config.vertical_lines, undefined, this.__config, v_shift, vertical_line_width);
                    if (this.__config.vertical_lines.mask == true)
                    {
                        var mask = new com.amcharts.Rectangle(graph_mc, "v_lines_mask_mc", 88, this.__width + 1, -this.__height, 13369344);
                        if (this.__config.start_on_axis == false)
                        {
                            mask.mc._x = -this.__step_width / 2;
                        } // end if
                        mask.mc._alpha = 0;
                        line_mc.setMask(mask.mc);
                    } // end if
                    graph_config.y = y;
                    graph_data.values[i].y = y_pos;
                    if (graph_config.hidden == true)
                    {
                        graph_mc._visible = false;
                        bullets_mc._visible = false;
                        data_labels_mc._visible = false;
                    } // end if
                } // end if
            } // end else if
            ++j;
        } // end while
    } // End of the function
    function __placeBullet(clip_mc)
    {
        clip_mc._x = clip_mc._x - clip_mc._width / 2;
        clip_mc._y = clip_mc._y - clip_mc._height / 2;
    } // End of the function
    function rollOverLine(index)
    {
        var _loc2 = new Color(__mc["graph_mc" + index].line_mc.line_mc);
        _loc2.setRGB(__config.graphs.graph[index].color_hover);
    } // End of the function
    function rollOutLine(index)
    {
        var _loc2 = new Color(__mc["graph_mc" + index].line_mc.line_mc);
        _loc2.setRGB(__config.graphs.graph[index].color);
    } // End of the function
    function showLine(index)
    {
        __config.old_hidden[index] = false;
        __config.graphs.graph[index].hidden = false;
        __mc["graph_mc" + index]._visible = true;
        __mc["labels_mc" + index]._visible = true;
        __mc["bullets_mc" + index]._visible = true;
    } // End of the function
    function hideLine(index)
    {
        __config.old_hidden[index] = true;
        __config.graphs.graph[index].hidden = true;
        __mc["graph_mc" + index]._visible = false;
        __mc["labels_mc" + index]._visible = false;
        __mc["bullets_mc" + index]._visible = false;
    } // End of the function
    function get noData()
    {
        return (__no_data);
    } // End of the function
} // End of Class
