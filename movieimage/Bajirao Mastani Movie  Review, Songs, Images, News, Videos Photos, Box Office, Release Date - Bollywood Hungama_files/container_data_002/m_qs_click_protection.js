(function(){function g(a){var b=0;return function(){return b<a.length?{done:!1,value:a[b++]}:{done:!0}}}function n(a){var b="undefined"!=typeof Symbol&&Symbol.iterator&&a[Symbol.iterator];return b?b.call(a):{next:g(a)}}var p=this;function q(a){var b=typeof a;if("object"==b)if(a){if(a instanceof Array)return"array";if(a instanceof Object)return b;var c=Object.prototype.toString.call(a);if("[object Window]"==c)return"object";if("[object Array]"==c||"number"==typeof a.length&&"undefined"!=typeof a.splice&&"undefined"!=typeof a.propertyIsEnumerable&&!a.propertyIsEnumerable("splice"))return"array";if("[object Function]"==c||"undefined"!=typeof a.call&&"undefined"!=typeof a.propertyIsEnumerable&&!a.propertyIsEnumerable("call"))return"function"}else return"null";else if("function"==b&&"undefined"==typeof a.call)return"object";return b}function r(a,b,c){return a.call.apply(a.bind,arguments)}function u(a,b,c){if(!a)throw Error();if(2<arguments.length){var d=Array.prototype.slice.call(arguments,2);return function(){var c=Array.prototype.slice.call(arguments);Array.prototype.unshift.apply(c,d);return a.apply(b,c)}}return function(){return a.apply(b,arguments)}}function v(a,b,c){Function.prototype.bind&&-1!=Function.prototype.bind.toString().indexOf("native code")?v=r:v=u;return v.apply(null,arguments)}var w=Date.now||function(){return+new Date};function y(a,b){function c(){}c.prototype=b.prototype;a.B=b.prototype;a.prototype=new c;a.prototype.constructor=a;a.C=function(a,c,H){for(var d=Array(arguments.length-2),e=2;e<arguments.length;e++)d[e-2]=arguments[e];return b.prototype[c].apply(a,d)}};var z=Array.prototype.forEach?function(a,b){Array.prototype.forEach.call(a,b,void 0)}:function(a,b){for(var c=a.length,d="string"==typeof a?a.split(""):a,e=0;e<c;e++)e in d&&b.call(void 0,d[e],e,a)};function A(){}var B="function"==typeof Uint8Array;function C(a,b,c){a.a=null;b||(b=[]);a.l=void 0;a.f=-1;a.b=b;a:{if(b=a.b.length){--b;var d=a.b[b];if(!(null===d||"object"!=typeof d||"array"==q(d)||B&&d instanceof Uint8Array)){a.g=b-a.f;a.c=d;break a}}a.g=Number.MAX_VALUE}a.i={};if(c)for(b=0;b<c.length;b++)if(d=c[b],d<a.g)d+=a.f,a.b[d]=a.b[d]||D;else{var e=a.g+a.f;a.b[e]||(a.c=a.b[e]={});a.c[d]=a.c[d]||D}}var D=[];function E(a,b){if(b<a.g){b+=a.f;var c=a.b[b];return c===D?a.b[b]=[]:c}if(a.c)return c=a.c[b],c===D?a.c[b]=[]:c}function F(a,b,c){a=E(a,b);return null==a?c:a}function G(a){a=E(a,9);a=null==a?a:!!a;return null==a?!1:a}function aa(a){var b=J;a.a||(a.a={});if(!a.a[1]){var c=E(a,1);c&&(a.a[1]=new b(c))}return a.a[1]}function K(a){var b=L;a.a||(a.a={});if(!a.a[1]){for(var c=E(a,1),d=[],e=0;e<c.length;e++)d[e]=new b(c[e]);a.a[1]=d}b=a.a[1];b==D&&(b=a.a[1]=[]);return b}A.prototype.toString=function(){return this.b.toString()};function J(a){C(this,a,ba)}y(J,A);function L(a){C(this,a,null)}y(L,A);function M(a){C(this,a,null)}y(M,A);var ba=[1];var N=document,O=window;var ca={capture:!0},da=function(a){var b=!1,c;return function(){b||(c=a(),b=!0);return c}}(function(){var a=!1;try{var b=Object.defineProperty({},"passive",{get:function(){a=!0}});p.addEventListener("test",null,b)}catch(c){}return a});function ea(a){return a?a.passive&&da()?a:a.capture||!1:!1}function P(a,b,c,d){a.addEventListener&&a.addEventListener(b,c,ea(d))};function fa(a,b){for(var c in a)Object.prototype.hasOwnProperty.call(a,c)&&b.call(void 0,a[c],c,a)}function Q(a,b){a&&fa(b,function(b,d){a.style[d]=b})}function ha(a){for(var b=N.body,c=document.createDocumentFragment(),d=a.length,e=0;e<d;++e)c.appendChild(a[e]);b.appendChild(c)};function ia(a){a=void 0===a?[]:a;p.google_logging_queue||(p.google_logging_queue=[]);p.google_logging_queue.push([12,a])};function R(){this.b=this.b;this.c=this.c}R.prototype.b=!1;function ja(a){a.b||(a.b=!0,a.f())}R.prototype.f=function(){if(this.c)for(;this.c.length;)this.c.shift()()};function S(a,b,c){R.call(this);this.g=a;this.u=b||0;this.i=c;this.l=v(this.s,this)}y(S,R);S.prototype.a=0;S.prototype.f=function(){S.B.f.call(this);this.stop();delete this.g;delete this.i};S.prototype.start=function(a){this.stop();var b=this.l;a=void 0!==a?a:this.u;if("function"!=q(b))if(b&&"function"==typeof b.handleEvent)b=v(b.handleEvent,b);else throw Error("Invalid listener argument");this.a=2147483647<Number(a)?-1:p.setTimeout(b,a||0)};S.prototype.stop=function(){0!=this.a&&p.clearTimeout(this.a);this.a=0};S.prototype.s=function(){this.a=0;this.g&&this.g.call(this.i)};function ka(a){P(O,"message",function(b){try{var c=JSON.parse(b.data)}catch(d){return}!c||"ig"!==c.googMsgType||a(c,b)})};var la={display:"inline-block",position:"absolute"},ma={display:"none",width:"100%",height:"100%",top:"0",left:"0"};function U(a,b){a&&(a.style.display=(void 0===b?0:b)?"none":"inline-block")}function V(){this.c=[];this.f=this.a=null;this.u=[];this.i=null;this.s=[];this.b=[];this.g=[];this.l={};this.A=[]}V.prototype.init=function(a){var b=this;ia([a]);this.i=new M(a);a=aa(this.i);z(K(a),function(a){b.g.push({v:0,m:!1,w:0,h:a,o:-1})});try{var c=N.querySelectorAll("*[data-ifc]")}catch(e){c=[]}this.b=c;c=this.b.length;for(a={j:0};a.j<c;a={j:a.j},++a.j){var d=new J(JSON.parse(this.b[a.j].getAttribute("data-ifc")||"[]"));z(K(d),function(a){return function(c){b.g.push({v:0,m:!1,w:0,h:c,o:a.j})}}(a))}c=n(this.g);for(a=c.next();!a.done;a=c.next())a=a.value,d=a.h,0<F(d,2,0)&&0<F(d,5,1)?(!this.a&&G(d)&&(this.a=W(ma)),na(this,a)):F(d,1,"")&&G(d)&&oa(this,F(d,1,""));c=this.c.slice(0);this.a&&c.push(this.a);N.body&&ha(c);P(N,"click",function(a){for(var c,d=-1,e=[],T=n(b.g),m=T.next();!m.done;m=T.next()){m=m.value;var f=m.o,l=-1!==f;if(!(F(m.h,3,0)<=d||m.m||l&&!1===e[f])){var h=!l||e[f]||b.b[f].contains(a.target);l&&h&&(e[f]=!0);if(f=h)if(l=a,f=m,h=f.h,0<F(h,2,0)&&0<F(h,5,1))f=b.l[F(h,5,1)],f=void 0!==f&&w()<f+F(h,2,0);else if(F(h,1,"")){h=(0<=f.o?b.b[f.o]:N.body).getBoundingClientRect();var x=parseFloat(N.body.style.zoom||1),t=n([l.clientX/x-h.left,l.clientY/x-h.top,h.width,h.height]);l=t.next().value;h=t.next().value;x=t.next().value;t=t.next().value;!(0<x&&0<t)||isNaN(l)||isNaN(h)||0>l||0>h?f=!1:(f=X(F(f.h,1,"")),f=!(l>=f.left&&x-l>f.right&&h>=f.top&&t-h>f.bottom))}else f=!0;f&&(c=m,d=F(m.h,3,0))}}if(c)switch(d=c.h,F(d,4,1)){case 2:case 3:case 4:var k=void 0===k?!1:k;a.preventDefault?a.preventDefault():a.returnValue=!1;k&&a.stopPropagation();k=w();500<k-c.w&&(c.w=k,++c.v);k=c.h;if(F(k,8,0)&&c.v>=F(k,8,0))if(c.m=!0,b.a&&0<F(k,2,0))Y(b);else if(0<b.c.length&&F(k,1,""))for(k=n(b.c),c=k.next();!c.done;c=k.next())U(c.value,!0);k=d.b;c=n(b.s);for(d=c.next();!d.done;d=c.next())d=d.value,d(a,k)}},ca)};V.prototype.registerCallback=function(a){this.s.push(a)};function oa(a,b){b=X(b);var c=F(a.i,9,0);a.c=[{width:"100%",height:b.top+c+"px",top:-c+"px",left:"0"},{width:b.right+c+"px",height:"100%",top:"0",right:-c+"px"},{width:"100%",height:b.bottom+c+"px",bottom:-c+"px",left:"0"},{width:b.left+c+"px",height:"100%",top:"0",left:-c+"px"}].map(function(a){return W(a,9019)})}function Z(a,b){if(!b.m){var c=F(b.h,5,1);a.l[c]=w();G(b.h)&&(a.u.push(b),Y(a))}}function na(a,b){switch(F(b.h,5,1)){case 2:O.AFMA_Communicator&&O.AFMA_Communicator.addEventListener&&O.AFMA_Communicator.addEventListener("onshow",function(){Z(a,b)});break;case 4:P(N,"DOMContentLoaded",function(){Z(a,b)});break;case 7:O.mraid&&O.mraid.isViewable&&P(O.mraid,"viewableChange",function(){var c=O.mraid;"function"==q(c.isViewable)&&c.isViewable()&&Z(a,b)});break;case 8:ka(function(c){c.rr&&Z(a,b)});break;case 9:if(O.IntersectionObserver){var c=new IntersectionObserver(function(c){c=n(c);for(var d=c.next();!d.done;d=c.next())if(0<d.value.intersectionRatio){Z(a,b);break}});c.observe(N.body);a.A.push(c)}}}function Y(a){for(var b=0,c=n(a.u),d=c.next();!d.done;d=c.next()){d=d.value;var e=d.h,H=a.l[F(e,5,1)];d.m||void 0===H||(b=Math.max(b,H+F(e,2,0)))}a.f&&ja(a.f);b-=w();var I=a.a;0<b?(U(I),a.f=new S(function(){U(I,!0)},b),a.f.start()):U(I,!0)}function W(a,b){b=void 0===b?2147483647:b;var c=N.createElement("DIV");Q(c,la);Q(c,{"z-index":b});Q(c,a);return c}function X(a){a=void 0===a?"":a;var b={top:0,right:0,bottom:0,left:0};a&&(a=a.split(","),4==a.length&&a.reduce(function(a,b){return a&&!isNaN(b)},!0)&&(a=n(a.map(function(a){return+a})),b.top=a.next().value,b.right=a.next().value,b.bottom=a.next().value,b.left=a.next().value));return b};window.googqscp=new V;}).call(this);
