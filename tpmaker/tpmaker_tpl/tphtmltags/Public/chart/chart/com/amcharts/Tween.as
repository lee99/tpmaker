class com.amcharts.Tween
{
    var __obj, __property, __effect, __initial, __final, __duration, __step_count, __interval, broadcastMessage;
    function Tween(obj, property, effect, initial, final, duration)
    {
        AsBroadcaster.initialize(this);
        __obj = obj;
        __property = property;
        __effect = effect;
        __initial = initial;
        __final = final;
        __duration = duration;
        __step_count = Math.floor(__duration * __frame_rate);
        __step = 0;
        __obj["tween" + __property].die();
        __obj["tween" + __property] = this;
        this.__init();
    } // End of the function
    function __init()
    {
        __obj[__property] = __initial;
        this.__changeProperty();
        this.__changeProperty();
        __interval = setInterval(this, "__changeProperty", 1000 / __frame_rate);
    } // End of the function
    function __changeProperty()
    {
        __obj[__property] = this.__effect(__step, __initial, __final - __initial, __step_count);
        ++__step;
        if (__step >= __step_count)
        {
            __obj[__property] = __final;
            clearInterval(__interval);
            this.broadcastMessage("onTweenFinished");
        } // end if
    } // End of the function
    function die()
    {
        clearInterval(__interval);
    } // End of the function
    function stop()
    {
        clearInterval(__interval);
    } // End of the function
    var __frame_rate = 30;
    var __step = 0;
} // End of Class
