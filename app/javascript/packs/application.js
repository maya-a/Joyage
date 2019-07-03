import "bootstrap";

import "../plugins/flatpickr";
import "../plugins/slider";
import "../plugins/add-origins";
import "../plugins/clipboard";

import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import 'select2/dist/css/select2.css';
import { initMapbox } from '../plugins/init_mapbox';
import { initSelect2 } from '../plugins/init_select2';
import { timerCountdown } from '../plugins/timer';


initMapbox();
initSelect2();
timerCountdown();
