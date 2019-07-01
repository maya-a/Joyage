import rangeSlider from 'ion-rangeslider'
import "ion-rangeslider/css/ion.rangeSlider.min.css" // Note this is important!


$(".js-range-slider").ionRangeSlider( {
        min: 0,
        max: 1000,
        from: 200,
        to: 800,
        prefix: "$"
});
