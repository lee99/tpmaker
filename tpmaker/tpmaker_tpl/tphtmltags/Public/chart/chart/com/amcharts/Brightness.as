class com.amcharts.Brightness
{
    function Brightness(target_mc, value)
    {
        var _loc5 = new Color(target_mc);
        var _loc4 = 100 - Math.abs(value);
        var _loc2 = 0;
        if (value > 0)
        {
            _loc2 = 256 * (value / 100);
        } // end if
        var _loc1 = new Object();
        _loc1.ra = _loc1.ga = _loc1.ba = _loc4;
        _loc1.rb = _loc1.gb = _loc1.bb = _loc2;
        _loc5.setTransform(_loc1);
    } // End of the function
} // End of Class
