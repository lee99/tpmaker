class com.amcharts.Load
{
    var __loader, __preloader;
    function Load()
    {
    } // End of the function
    function loadVars(file_name, obj, funct, error_funct, param)
    {
        file_name = com.amcharts.Utils.validateFileName(file_name);
        var main_obj = this;
        __loader = new LoadVars();
        __loader.onData = function (variable)
        {
            main_obj.__preloader.die();
            if (variable == undefined)
            {
                obj[error_funct]("Error loading file: " + file_name);
            }
            else
            {
                obj[funct](variable, param);
            } // end else if
        };
        __loader.load(file_name);
    } // End of the function
    function loadXML(file_name, obj, funct, error_funct, param)
    {
        file_name = com.amcharts.Utils.validateFileName(file_name);
        var main_obj = this;
        __loader = new XML();
        __loader.ignoreWhite = true;
        __loader.onLoad = function (success)
        {
            main_obj.__preloader.die();
            if (success == false)
            {
                obj[error_funct]("Error loading file: " + file_name);
            }
            else
            {
                obj[funct](main_obj.__loader, param);
            } // end else if
        };
        __loader.load(file_name);
    } // End of the function
    function loadClip(file_name, target_mc, obj, funct, error_funct, param)
    {
        file_name = com.amcharts.Utils.validateFileName(file_name);
        var main_obj = this;
        __loader = target_mc;
        var _loc3 = new MovieClipLoader();
        var _loc2 = new Object();
        _loc2.onLoadError = function (target_mc, errorCode, httpStatus)
        {
            main_obj.__preloader.die();
            obj[error_funct]("Error loading file: " + file_name);
        };
        _loc2.onLoadInit = function ()
        {
            main_obj.__preloader.die();
            obj[funct](target_mc, param);
        };
        _loc3.addListener(_loc2);
        _loc3.loadClip(file_name, __loader);
    } // End of the function
    function loadClip2(file_name, target_mc, obj, funct, error_funct, param, on_init)
    {
        file_name = com.amcharts.Utils.validateFileName(file_name);
        var main_obj = this;
        __loader = target_mc;
        var _loc3 = new MovieClipLoader();
        var _loc2 = new Object();
        _loc2.onLoadError = function (target_mc, errorCode, httpStatus)
        {
            main_obj.__preloader.remove();
            obj[error_funct]("Error loading file: " + file_name);
        };
        _loc2.onLoadComplete = function ()
        {
            main_obj.__preloader.die();
            obj[funct](target_mc, param);
        };
        _loc2.onLoadInit = function ()
        {
            obj[on_init](target_mc, param);
        };
        _loc3.addListener(_loc2);
        _loc3.loadClip(file_name, __loader);
    } // End of the function
    function preloader(target_mc, name, depth, x, y, width, height, color, bgColor, text)
    {
        __preloader = new com.amcharts.Preloader(target_mc, name, depth, __loader, width, height, color, bgColor, text);
        __preloader.__get__mc()._x = x;
        __preloader.__get__mc()._y = y;
    } // End of the function
} // End of Class
