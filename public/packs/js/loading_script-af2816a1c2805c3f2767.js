/******/ (function(modules) { // webpackBootstrap
/******/ 	// The module cache
/******/ 	var installedModules = {};
/******/
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/
/******/ 		// Check if module is in cache
/******/ 		if(installedModules[moduleId]) {
/******/ 			return installedModules[moduleId].exports;
/******/ 		}
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = installedModules[moduleId] = {
/******/ 			i: moduleId,
/******/ 			l: false,
/******/ 			exports: {}
/******/ 		};
/******/
/******/ 		// Execute the module function
/******/ 		modules[moduleId].call(module.exports, module, module.exports, __webpack_require__);
/******/
/******/ 		// Flag the module as loaded
/******/ 		module.l = true;
/******/
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/
/******/
/******/ 	// expose the modules object (__webpack_modules__)
/******/ 	__webpack_require__.m = modules;
/******/
/******/ 	// expose the module cache
/******/ 	__webpack_require__.c = installedModules;
/******/
/******/ 	// define getter function for harmony exports
/******/ 	__webpack_require__.d = function(exports, name, getter) {
/******/ 		if(!__webpack_require__.o(exports, name)) {
/******/ 			Object.defineProperty(exports, name, { enumerable: true, get: getter });
/******/ 		}
/******/ 	};
/******/
/******/ 	// define __esModule on exports
/******/ 	__webpack_require__.r = function(exports) {
/******/ 		if(typeof Symbol !== 'undefined' && Symbol.toStringTag) {
/******/ 			Object.defineProperty(exports, Symbol.toStringTag, { value: 'Module' });
/******/ 		}
/******/ 		Object.defineProperty(exports, '__esModule', { value: true });
/******/ 	};
/******/
/******/ 	// create a fake namespace object
/******/ 	// mode & 1: value is a module id, require it
/******/ 	// mode & 2: merge all properties of value into the ns
/******/ 	// mode & 4: return value when already ns object
/******/ 	// mode & 8|1: behave like require
/******/ 	__webpack_require__.t = function(value, mode) {
/******/ 		if(mode & 1) value = __webpack_require__(value);
/******/ 		if(mode & 8) return value;
/******/ 		if((mode & 4) && typeof value === 'object' && value && value.__esModule) return value;
/******/ 		var ns = Object.create(null);
/******/ 		__webpack_require__.r(ns);
/******/ 		Object.defineProperty(ns, 'default', { enumerable: true, value: value });
/******/ 		if(mode & 2 && typeof value != 'string') for(var key in value) __webpack_require__.d(ns, key, function(key) { return value[key]; }.bind(null, key));
/******/ 		return ns;
/******/ 	};
/******/
/******/ 	// getDefaultExport function for compatibility with non-harmony modules
/******/ 	__webpack_require__.n = function(module) {
/******/ 		var getter = module && module.__esModule ?
/******/ 			function getDefault() { return module['default']; } :
/******/ 			function getModuleExports() { return module; };
/******/ 		__webpack_require__.d(getter, 'a', getter);
/******/ 		return getter;
/******/ 	};
/******/
/******/ 	// Object.prototype.hasOwnProperty.call
/******/ 	__webpack_require__.o = function(object, property) { return Object.prototype.hasOwnProperty.call(object, property); };
/******/
/******/ 	// __webpack_public_path__
/******/ 	__webpack_require__.p = "/packs/";
/******/
/******/
/******/ 	// Load entry module and return exports
/******/ 	return __webpack_require__(__webpack_require__.s = "./app/javascript/packs/loading_script.js");
/******/ })
/************************************************************************/
/******/ ({

/***/ "./app/javascript/packs/loading_script.js":
/*!************************************************!*\
  !*** ./app/javascript/packs/loading_script.js ***!
  \************************************************/
/*! no static exports found */
/***/ (function(module, exports) {

TweenMax.set('#circlePath', {
  attr: {
    r: document.querySelector('#mainCircle').getAttribute('r')
  }
});
MorphSVGPTlugin.convertToPath('#circlePath');

var xmlns = "http://www.w3.org/2000/svg",
    xlinkns = "http://www.w3.org/1999/xlink",
    select = function select(s) {
  return document.querySelector(s);
},
    selectAll = function selectAll(s) {
  return document.querySelectorAll(s);
},
    mainCircle = select('#mainCircle'),
    mainContainer = select('#mainContainer'),
    plane = select('#plane'),
    mainSVG = select('.mainSVG'),
    mainCircleRadius = Number(mainCircle.getAttribute('r')),
    radius = mainCircleRadius,
    numDots = mainCircleRadius / 2,
    step = 360 / numDots,
    dotMin = 0,
    circlePath = select('#circlePath');

mainSVG.appendChild(circlePath);
TweenMax.set('svg', {
  visibility: 'visible'
});
TweenMax.set([plane], {
  transformOrigin: '50% 50%'
});
var circleBezier = MorphSVGPlugin.pathDataToBezier(circlePath.getAttribute('d'), {
  offsetX: -19,
  offsetY: -18
});
console.log(circlePath);
var mainTl = new TimelineMax();

function makeDots() {
  var d, angle, tl;

  for (var i = 0; i < numDots; i++) {
    d = select('#dot').cloneNode(true);
    mainContainer.appendChild(d);
    angle = step * i;
    TweenMax.set(d, {
      attr: {
        cx: Math.cos(angle * Math.PI / 180) * mainCircleRadius + 400,
        cy: Math.sin(angle * Math.PI / 180) * mainCircleRadius + 300
      }
    });
    tl = new TimelineMax({
      repeat: -1
    });
    tl.from(d, 0.2, {
      attr: {
        r: dotMin
      },
      ease: Power2.easeIn
    }).to(d, 1.8, {
      attr: {
        r: dotMin
      },
      ease: Power2.easeOut
    });
    mainTl.add(tl, i / (numDots / tl.duration()));
  }

  var planeTl = new TimelineMax({
    repeat: -1
  });
  planeTl.to(plane, tl.duration(), {
    bezier: {
      type: "cubic",
      values: circleBezier,
      autoRotate: true
    },
    ease: Linear.easeNone
  });
  mainTl.add(planeTl, 0.05);
}

makeDots();
mainTl.time(20);
TweenMax.to(mainContainer, 30, {
  rotation: -360,
  svgOrigin: '400 300',
  repeat: -1,
  ease: Linear.easeNone
});
mainTl.timeScale(0.7);

/***/ })

/******/ });
//# sourceMappingURL=loading_script-af2816a1c2805c3f2767.js.map