class com.amcharts.StageSize
{
    var __obj, __funct, __interval;
    function StageSize(obj, funct)
    {
        __obj = obj;
        __funct = funct;
        __interval = setInterval(this, "__getSize", 10);
    } // End of the function
    function __getSize()
    {
        if (Stage.width != undefined && Stage.height != undefined && Stage.width > 0 && Stage.height > 0)
        {
            clearInterval(__interval);
            __interval = setInterval(this, "__lastCheck", 20);
        } // end if
    } // End of the function
    function __lastCheck()
    {
        clearInterval(__interval);
        __obj[__funct](Stage.width, Stage.height);
    } // End of the function
} // End of Class
