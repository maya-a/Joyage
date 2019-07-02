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

throw new Error("Module build failed (from ./node_modules/babel-loader/lib/index.js):\nSyntaxError: /Users/charlottehetzler/code/maya-a/Joyage/app/javascript/packs/components/add_origin.js: Unexpected token (15:17)\n\n  13 |     if(x < max_fields){ //max input box allowed\n  14 |       x++; //text box increment\n> 15 |       $(wrapper).('<input class=\"form-control string optional\" placeholder=\"Enter starting point\" type=\"text\" name=\"search[origin][]\" id=\"search_origin\">'); //add input box\n     |                  ^\n  16 |     }\n  17 |   });\n  18 | \n    at Parser.raise (/Users/charlottehetzler/code/maya-a/Joyage/node_modules/@babel/parser/lib/index.js:6344:17)\n    at Parser.unexpected (/Users/charlottehetzler/code/maya-a/Joyage/node_modules/@babel/parser/lib/index.js:7659:16)\n    at Parser.parseIdentifierName (/Users/charlottehetzler/code/maya-a/Joyage/node_modules/@babel/parser/lib/index.js:9505:18)\n    at Parser.parseIdentifier (/Users/charlottehetzler/code/maya-a/Joyage/node_modules/@babel/parser/lib/index.js:9483:23)\n    at Parser.parseMaybePrivateName (/Users/charlottehetzler/code/maya-a/Joyage/node_modules/@babel/parser/lib/index.js:8850:19)\n    at Parser.parseSubscript (/Users/charlottehetzler/code/maya-a/Joyage/node_modules/@babel/parser/lib/index.js:8481:28)\n    at Parser.parseSubscripts (/Users/charlottehetzler/code/maya-a/Joyage/node_modules/@babel/parser/lib/index.js:8434:19)\n    at Parser.parseExprSubscripts (/Users/charlottehetzler/code/maya-a/Joyage/node_modules/@babel/parser/lib/index.js:8423:17)\n    at Parser.parseMaybeUnary (/Users/charlottehetzler/code/maya-a/Joyage/node_modules/@babel/parser/lib/index.js:8393:21)\n    at Parser.parseExprOps (/Users/charlottehetzler/code/maya-a/Joyage/node_modules/@babel/parser/lib/index.js:8280:23)\n    at Parser.parseMaybeConditional (/Users/charlottehetzler/code/maya-a/Joyage/node_modules/@babel/parser/lib/index.js:8253:23)\n    at Parser.parseMaybeAssign (/Users/charlottehetzler/code/maya-a/Joyage/node_modules/@babel/parser/lib/index.js:8200:21)\n    at Parser.parseExpression (/Users/charlottehetzler/code/maya-a/Joyage/node_modules/@babel/parser/lib/index.js:8148:23)\n    at Parser.parseStatementContent (/Users/charlottehetzler/code/maya-a/Joyage/node_modules/@babel/parser/lib/index.js:9917:23)\n    at Parser.parseStatement (/Users/charlottehetzler/code/maya-a/Joyage/node_modules/@babel/parser/lib/index.js:9788:17)\n    at Parser.parseBlockOrModuleBlockBody (/Users/charlottehetzler/code/maya-a/Joyage/node_modules/@babel/parser/lib/index.js:10364:25)\n    at Parser.parseBlockBody (/Users/charlottehetzler/code/maya-a/Joyage/node_modules/@babel/parser/lib/index.js:10351:10)\n    at Parser.parseBlock (/Users/charlottehetzler/code/maya-a/Joyage/node_modules/@babel/parser/lib/index.js:10335:10)\n    at Parser.parseStatementContent (/Users/charlottehetzler/code/maya-a/Joyage/node_modules/@babel/parser/lib/index.js:9864:21)\n    at Parser.parseStatement (/Users/charlottehetzler/code/maya-a/Joyage/node_modules/@babel/parser/lib/index.js:9788:17)\n    at Parser.parseIfStatement (/Users/charlottehetzler/code/maya-a/Joyage/node_modules/@babel/parser/lib/index.js:10142:28)\n    at Parser.parseStatementContent (/Users/charlottehetzler/code/maya-a/Joyage/node_modules/@babel/parser/lib/index.js:9833:21)\n    at Parser.parseStatement (/Users/charlottehetzler/code/maya-a/Joyage/node_modules/@babel/parser/lib/index.js:9788:17)\n    at Parser.parseBlockOrModuleBlockBody (/Users/charlottehetzler/code/maya-a/Joyage/node_modules/@babel/parser/lib/index.js:10364:25)\n    at Parser.parseBlockBody (/Users/charlottehetzler/code/maya-a/Joyage/node_modules/@babel/parser/lib/index.js:10351:10)\n    at Parser.parseBlock (/Users/charlottehetzler/code/maya-a/Joyage/node_modules/@babel/parser/lib/index.js:10335:10)\n    at Parser.parseFunctionBody (/Users/charlottehetzler/code/maya-a/Joyage/node_modules/@babel/parser/lib/index.js:9408:24)\n    at Parser.parseFunctionBodyAndFinish (/Users/charlottehetzler/code/maya-a/Joyage/node_modules/@babel/parser/lib/index.js:9378:10)\n    at /Users/charlottehetzler/code/maya-a/Joyage/node_modules/@babel/parser/lib/index.js:10498:12\n    at Parser.withTopicForbiddingContext (/Users/charlottehetzler/code/maya-a/Joyage/node_modules/@babel/parser/lib/index.js:9683:14)");

/***/ })

/******/ });
//# sourceMappingURL=add_origin-590d4ea0ae7ebfa30f13.js.map