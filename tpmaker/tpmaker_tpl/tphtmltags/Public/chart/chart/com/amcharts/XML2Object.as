class com.amcharts.XML2Object
{
    var __xml, __get__xml;
    function XML2Object()
    {
    } // End of the function
    function parseXML(file)
    {
        __result = new Object();
        __xml = file;
        __result = this.__translateXML();
        return (__result);
    } // End of the function
    function __translateXML(from, path, name, position)
    {
        var _loc2;
        var _loc9;
        var _loc4;
        var _loc10;
        if (path == undefined)
        {
            path = this;
            name = "__result";
        } // end if
        path = path[name];
        if (from == undefined)
        {
            from = new XML(this.__get__xml().toString());
            from.ignoreWhite = true;
        } // end if
        if (from.hasChildNodes())
        {
            _loc9 = from.childNodes;
            if (position != undefined)
            {
                _loc10 = path;
                path = path[position];
            } // end if
            while (_loc9.length > 0)
            {
                _loc4 = _loc9.shift();
                _loc2 = _loc4.nodeName;
                if (_loc2 != undefined)
                {
                    var _loc5 = new Object();
                    _loc5.attributes = _loc4.attributes;
                    _loc5.data = _loc4.firstChild.nodeValue;
                    if (position != undefined)
                    {
                        _loc10 = path;
                    } // end if
                    if (path[_loc2] != undefined)
                    {
                        if (path[_loc2].__proto__ == Array.prototype)
                        {
                            path[_loc2].push(_loc5);
                            name = _loc4.nodeName;
                            position = path[_loc2].length - 1;
                        }
                        else
                        {
                            var _loc8 = path[_loc2];
                            path[_loc2] = new Array();
                            path[_loc2].push(_loc8);
                            path[_loc2].push(_loc5);
                            name = _loc2;
                            position = path[_loc2].length - 1;
                        } // end else if
                    }
                    else
                    {
                        path[_loc2] = _loc5;
                        name = _loc2;
                        position = undefined;
                    } // end if
                } // end else if
                if (_loc4.hasChildNodes())
                {
                    this.__translateXML(_loc4, path, name, position);
                } // end if
            } // end while
        } // end if
        return (__result);
    } // End of the function
    function get xml()
    {
        return (__xml);
    } // End of the function
    var __result = new Object();
} // End of Class
