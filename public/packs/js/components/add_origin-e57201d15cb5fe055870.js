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
/******/ 	return __webpack_require__(__webpack_require__.s = "./app/javascript/packs/components/add_origin.js");
/******/ })
/************************************************************************/
/******/ ({

/***/ "./app/javascript/packs/components/add_origin.js":
/*!*******************************************************!*\
  !*** ./app/javascript/packs/components/add_origin.js ***!
  \*******************************************************/
/*! no static exports found */
/***/ (function(module, exports) {

console.log('here!'); // $(document).ready(function() {
//   var max_fields      = 10; //maximum input boxes allowed
//   var wrapper       = $(".origins"); //Fields wrapper
//   var add_button      = $("#add-origin"); //Add button ID
//   var x = 1; //initlal text box count
//   $(add_button).click(function(e){ //on add input button click
//     e.preventDefault();
//     console.log('here!');
//     if(x < max_fields){ //max input box allowed
//       x++; //text box increment
//       $(wrapper).append('<%= s.input :origin, label: "Hometown", placeholder: "Enter starting point" %>'); //add input box
//     }
//   });
//   $(wrapper).on("click",".remove_field", function(e){ //user click on remove text
//     e.preventDefault(); $(this).parent('div').remove(); x--;
//   })
// });
// var max_fields      = 10;
// var wrapper         = $(".origins");
// var add_button      = $("#add-origin");
// var remove_button   = $(".remove_field_button");
// $(add_button).click(function(e){
//     e.preventDefault();
//     var total_fields = wrapper[0].childNodes.length;
//     if(total_fields < max_fields){
//         $(wrapper).append('<%= s.input :origin, label: "Hometown", placeholder: "Enter starting point" %>');
//     }
// });
// $(remove_button).click(function(e){
//     e.preventDefault();
//     var total_fields = wrapper[0].childNodes.length;
//     if(total_fields>1){
//         wrapper[0].childNodes[total_fields-1].remove();
//     }
// });

/***/ })

/******/ });
//# sourceMappingURL=add_origin-e57201d15cb5fe055870.js.map