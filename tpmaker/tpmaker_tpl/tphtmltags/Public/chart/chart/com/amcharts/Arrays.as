class com.amcharts.Arrays
{
    function Arrays()
    {
    } // End of the function
    static function isInArray(array, value)
    {
        for (var _loc1 = 0; _loc1 < array.length; ++_loc1)
        {
            if (value == array[_loc1])
            {
                return (true);
            } // end if
        } // end of for
        return (false);
    } // End of the function
    static function deleteEqualTo(array, symbol)
    {
        for (var _loc1 = 0; _loc1 < array.length; ++_loc1)
        {
            if (array[_loc1] == symbol)
            {
                array.splice(_loc1, 1);
                com.amcharts.Arrays.deleteEqualTo(array, symbol);
                break;
            } // end if
        } // end of for
        return (array);
    } // End of the function
    static function getMax(array)
    {
        var _loc3 = -Number.MAX_VALUE;
        for (var _loc1 = 0; _loc1 < array.length; ++_loc1)
        {
            if (array[_loc1] > _loc3)
            {
                _loc3 = array[_loc1];
            } // end if
        } // end of for
        return (_loc3);
    } // End of the function
    static function getMin(array)
    {
        var _loc3 = Number.MAX_VALUE;
        for (var _loc1 = 0; _loc1 < array.length; ++_loc1)
        {
            if (array[_loc1] < _loc3)
            {
                _loc3 = array[_loc1];
            } // end if
        } // end of for
        return (_loc3);
    } // End of the function
    static function getIndex(array, value)
    {
        for (var _loc1 = 0; _loc1 < array.length; ++_loc1)
        {
            if (value == array[_loc1])
            {
                return (_loc1);
            } // end if
        } // end of for
        return (-1);
    } // End of the function
} // End of Class
