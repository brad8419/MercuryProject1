<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>

<meta name="viewport" content="width=device-width, initial-scale=1" />

<script type="text/javascript">window.NREUM||(NREUM={});NREUM.info={"beacon":"beacon-1.newrelic.com","errorBeacon":"bam.nr-data.net","licenseKey":"153135129c","applicationID":"1723063","transactionName":"JgpdRxANWQ1SQk1VAwkJVkEbTUUTWFoHURYW","queueTime":354,"applicationTime":1002,"agentToken":null,"agent":"js-agent.newrelic.com/nr-476.min.js"}</script>
<script type="text/javascript">(window.NREUM||(NREUM={})).loader_config={xpid:"UwEGUVdACQQCV1FUBA=="};window.NREUM||(NREUM={}),__nr_require=function(t,e,n){function r(n){if(!e[n]){var o=e[n]={exports:{}};t[n][0].call(o.exports,function(e){var o=t[n][1][e];return r(o?o:e)},o,o.exports)}return e[n].exports}if("function"==typeof __nr_require)return __nr_require;for(var o=0;o<n.length;o++)r(n[o]);return r}({QJf3ax:[function(t,e){function n(t){function e(e,n,a){t&&t(e,n,a),a||(a={});for(var c=s(e),u=c.length,f=i(a,o,r),d=0;u>d;d++)c[d].apply(f,n);return f}function a(t,e){u[t]=s(t).concat(e)}function s(t){return u[t]||[]}function c(){return n(e)}var u={};return{on:a,emit:e,create:c,listeners:s,_events:u}}function r(){return{}}var o="nr@context",i=t("gos");e.exports=n()},{gos:"7eSDFh"}],ee:[function(t,e){e.exports=t("QJf3ax")},{}],3:[function(t){function e(t,e,n,i,s){try{c?c-=1:r("err",[s||new UncaughtException(t,e,n)])}catch(u){try{r("ierr",[u,(new Date).getTime(),!0])}catch(f){}}return"function"==typeof a?a.apply(this,o(arguments)):!1}function UncaughtException(t,e,n){this.message=t||"Uncaught error with no additional information",this.sourceURL=e,this.line=n}function n(t){r("err",[t,(new Date).getTime()])}var r=t("handle"),o=t(4),i=t("ee"),a=window.onerror,s=!1,c=0;t("loader").features.err=!0,window.onerror=e,NREUM.noticeError=n;try{throw new Error}catch(u){"stack"in u&&(t(5),t(3),"addEventListener"in window&&t(1),window.XMLHttpRequest&&XMLHttpRequest.prototype&&XMLHttpRequest.prototype.addEventListener&&t(2),s=!0)}i.on("fn-start",function(){s&&(c+=1)}),i.on("fn-err",function(t,e,r){s&&(this.thrown=!0,n(r))}),i.on("fn-end",function(){s&&!this.thrown&&c>0&&(c-=1)}),i.on("internal-error",function(t){r("ierr",[t,(new Date).getTime(),!0])})},{1:4,2:7,3:5,4:18,5:6,ee:"QJf3ax",handle:"D5DuLP",loader:"G9z0Bl"}],4:[function(t,e){function n(t){i.inPlace(t,["addEventListener","removeEventListener"],"-",r)}function r(t){return t[1]}var o=(t(1),t("ee").create()),i=t(2)(o),a=t("gos");if(e.exports=o,n(window),"getPrototypeOf"in Object){for(var s=document;s&&!s.hasOwnProperty("addEventListener");)s=Object.getPrototypeOf(s);s&&n(s);for(var c=XMLHttpRequest.prototype;c&&!c.hasOwnProperty("addEventListener");)c=Object.getPrototypeOf(c);c&&n(c)}else XMLHttpRequest.prototype.hasOwnProperty("addEventListener")&&n(XMLHttpRequest.prototype);o.on("addEventListener-start",function(t){if(t[1]){var e=t[1];"function"==typeof e?this.wrapped=t[1]=a(e,"nr@wrapped",function(){return i(e,"fn-",null,e.name||"anonymous")}):"function"==typeof e.handleEvent&&i.inPlace(e,["handleEvent"],"fn-")}}),o.on("removeEventListener-start",function(t){var e=this.wrapped;e&&(t[1]=e)})},{1:18,2:19,ee:"QJf3ax",gos:"7eSDFh"}],5:[function(t,e){var n=(t(2),t("ee").create()),r=t(1)(n);e.exports=n,r.inPlace(window,["requestAnimationFrame","mozRequestAnimationFrame","webkitRequestAnimationFrame","msRequestAnimationFrame"],"raf-"),n.on("raf-start",function(t){t[0]=r(t[0],"fn-")})},{1:19,2:18,ee:"QJf3ax"}],6:[function(t,e){function n(t,e,n){var r=t[0];"string"==typeof r&&(r=new Function(r)),t[0]=o(r,"fn-",null,n)}var r=(t(2),t("ee").create()),o=t(1)(r);e.exports=r,o.inPlace(window,["setTimeout","setInterval","setImmediate"],"setTimer-"),r.on("setTimer-start",n)},{1:19,2:18,ee:"QJf3ax"}],7:[function(t,e){function n(){c.inPlace(this,d,"fn-")}function r(t,e){c.inPlace(e,["onreadystatechange"],"fn-")}function o(t,e){return e}var i=t("ee").create(),a=t(1),s=t(2),c=s(i),u=s(a),f=window.XMLHttpRequest,d=["onload","onerror","onabort","onloadstart","onloadend","onprogress","ontimeout"];e.exports=i,window.XMLHttpRequest=function(t){var e=new f(t);try{i.emit("new-xhr",[],e),u.inPlace(e,["addEventListener","removeEventListener"],"-",function(t,e){return e}),e.addEventListener("readystatechange",n,!1)}catch(r){try{i.emit("internal-error",[r])}catch(o){}}return e},window.XMLHttpRequest.prototype=f.prototype,c.inPlace(XMLHttpRequest.prototype,["open","send"],"-xhr-",o),i.on("send-xhr-start",r),i.on("open-xhr-start",r)},{1:4,2:19,ee:"QJf3ax"}],8:[function(t){function e(t){if("string"==typeof t&&t.length)return t.length;if("object"!=typeof t)return void 0;if("undefined"!=typeof ArrayBuffer&&t instanceof ArrayBuffer&&t.byteLength)return t.byteLength;if("undefined"!=typeof Blob&&t instanceof Blob&&t.size)return t.size;if("undefined"!=typeof FormData&&t instanceof FormData)return void 0;try{return JSON.stringify(t).length}catch(e){return void 0}}function n(t){var n=this.params,r=this.metrics;if(!this.ended){this.ended=!0;for(var i=0;c>i;i++)t.removeEventListener(s[i],this.listener,!1);if(!n.aborted){if(r.duration=(new Date).getTime()-this.startTime,4===t.readyState){n.status=t.status;var a=t.responseType,u="arraybuffer"===a||"blob"===a||"json"===a?t.response:t.responseText,f=e(u);if(f&&(r.rxSize=f),this.sameOrigin){var d=t.getResponseHeader("X-NewRelic-App-Data");d&&(n.cat=d.split(", ").pop())}}else n.status=0;r.cbTime=this.cbTime,o("xhr",[n,r,this.startTime])}}}function r(t,e){var n=i(e),r=t.params;r.host=n.hostname+":"+n.port,r.pathname=n.pathname,t.sameOrigin=n.sameOrigin}if(window.XMLHttpRequest&&XMLHttpRequest.prototype&&XMLHttpRequest.prototype.addEventListener&&!/CriOS/.test(navigator.userAgent)){t("loader").features.xhr=!0;var o=t("handle"),i=t(2),a=t("ee"),s=["load","error","abort","timeout"],c=s.length,u=t(1);t(4),t(3),a.on("new-xhr",function(){this.totalCbs=0,this.called=0,this.cbTime=0,this.end=n,this.ended=!1,this.xhrGuids={}}),a.on("open-xhr-start",function(t){this.params={method:t[0]},r(this,t[1]),this.metrics={}}),a.on("open-xhr-end",function(t,e){"loader_config"in NREUM&&"xpid"in NREUM.loader_config&&this.sameOrigin&&e.setRequestHeader("X-NewRelic-ID",NREUM.loader_config.xpid)}),a.on("send-xhr-start",function(t,n){var r=this.metrics,o=t[0],i=this;if(r&&o){var u=e(o);u&&(r.txSize=u)}this.startTime=(new Date).getTime(),this.listener=function(t){try{"abort"===t.type&&(i.params.aborted=!0),("load"!==t.type||i.called===i.totalCbs&&(i.onloadCalled||"function"!=typeof n.onload))&&i.end(n)}catch(e){try{a.emit("internal-error",[e])}catch(r){}}};for(var f=0;c>f;f++)n.addEventListener(s[f],this.listener,!1)}),a.on("xhr-cb-time",function(t,e,n){this.cbTime+=t,e?this.onloadCalled=!0:this.called+=1,this.called!==this.totalCbs||!this.onloadCalled&&"function"==typeof n.onload||this.end(n)}),a.on("xhr-load-added",function(t,e){var n=""+u(t)+!!e;this.xhrGuids&&!this.xhrGuids[n]&&(this.xhrGuids[n]=!0,this.totalCbs+=1)}),a.on("xhr-load-removed",function(t,e){var n=""+u(t)+!!e;this.xhrGuids&&this.xhrGuids[n]&&(delete this.xhrGuids[n],this.totalCbs-=1)}),a.on("addEventListener-end",function(t,e){e instanceof XMLHttpRequest&&"load"===t[0]&&a.emit("xhr-load-added",[t[1],t[2]],e)}),a.on("removeEventListener-end",function(t,e){e instanceof XMLHttpRequest&&"load"===t[0]&&a.emit("xhr-load-removed",[t[1],t[2]],e)}),a.on("fn-start",function(t,e,n){e instanceof XMLHttpRequest&&("onload"===n&&(this.onload=!0),("load"===(t[0]&&t[0].type)||this.onload)&&(this.xhrCbStart=(new Date).getTime()))}),a.on("fn-end",function(t,e){this.xhrCbStart&&a.emit("xhr-cb-time",[(new Date).getTime()-this.xhrCbStart,this.onload,e],e)})}},{1:"XL7HBI",2:9,3:7,4:4,ee:"QJf3ax",handle:"D5DuLP",loader:"G9z0Bl"}],9:[function(t,e){e.exports=function(t){var e=document.createElement("a"),n=window.location,r={};e.href=t,r.port=e.port;var o=e.href.split("://");return!r.port&&o[1]&&(r.port=o[1].split("/")[0].split(":")[1]),r.port&&"0"!==r.port||(r.port="https"===o[0]?"443":"80"),r.hostname=e.hostname||n.hostname,r.pathname=e.pathname,"/"!==r.pathname.charAt(0)&&(r.pathname="/"+r.pathname),r.sameOrigin=!e.hostname||e.hostname===document.domain&&e.port===n.port&&e.protocol===n.protocol,r}},{}],gos:[function(t,e){e.exports=t("7eSDFh")},{}],"7eSDFh":[function(t,e){function n(t,e,n){if(r.call(t,e))return t[e];var o=n();if(Object.defineProperty&&Object.keys)try{return Object.defineProperty(t,e,{value:o,writable:!0,enumerable:!1}),o}catch(i){}return t[e]=o,o}var r=Object.prototype.hasOwnProperty;e.exports=n},{}],D5DuLP:[function(t,e){function n(t,e,n){return r.listeners(t).length?r.emit(t,e,n):(o[t]||(o[t]=[]),void o[t].push(e))}var r=t("ee").create(),o={};e.exports=n,n.ee=r,r.q=o},{ee:"QJf3ax"}],handle:[function(t,e){e.exports=t("D5DuLP")},{}],XL7HBI:[function(t,e){function n(t){var e=typeof t;return!t||"object"!==e&&"function"!==e?-1:t===window?0:i(t,o,function(){return r++})}var r=1,o="nr@id",i=t("gos");e.exports=n},{gos:"7eSDFh"}],id:[function(t,e){e.exports=t("XL7HBI")},{}],loader:[function(t,e){e.exports=t("G9z0Bl")},{}],G9z0Bl:[function(t,e){function n(){var t=p.info=NREUM.info;if(t&&t.agent&&t.licenseKey&&t.applicationID&&c&&c.body){p.proto="https"===d.split(":")[0]||t.sslForHttp?"https://":"http://",a("mark",["onload",i()]);var e=c.createElement("script");e.src=p.proto+t.agent,c.body.appendChild(e)}}function r(){"complete"===c.readyState&&o()}function o(){a("mark",["domContent",i()])}function i(){return(new Date).getTime()}var a=t("handle"),s=window,c=s.document,u="addEventListener",f="attachEvent",d=(""+location).split("?")[0],p=e.exports={offset:i(),origin:d,features:{}};c[u]?(c[u]("DOMContentLoaded",o,!1),s[u]("load",n,!1)):(c[f]("onreadystatechange",r),s[f]("onload",n)),a("mark",["firstbyte",i()])},{handle:"D5DuLP"}],18:[function(t,e){function n(t,e,n){e||(e=0),"undefined"==typeof n&&(n=t?t.length:0);for(var r=-1,o=n-e||0,i=Array(0>o?0:o);++r<o;)i[r]=t[e+r];return i}e.exports=n},{}],19:[function(t,e){function n(t){return!(t&&"function"==typeof t&&t.apply&&!t[i])}var r=t("ee"),o=t(1),i="nr@wrapper",a=Object.prototype.hasOwnProperty;e.exports=function(t){function e(t,e,r,a){function nrWrapper(){var n,i,s,u;try{i=this,n=o(arguments),s=r&&r(n,i)||{}}catch(d){f([d,"",[n,i,a],s])}c(e+"start",[n,i,a],s);try{return u=t.apply(i,n)}catch(p){throw c(e+"err",[n,i,p],s),p}finally{c(e+"end",[n,i,u],s)}}return n(t)?t:(e||(e=""),nrWrapper[i]=!0,u(t,nrWrapper),nrWrapper)}function s(t,r,o,i){o||(o="");var a,s,c,u="-"===o.charAt(0);for(c=0;c<r.length;c++)s=r[c],a=t[s],n(a)||(t[s]=e(a,u?s+o:o,i,s,t))}function c(e,n,r){try{t.emit(e,n,r)}catch(o){f([o,e,n,r])}}function u(t,e){if(Object.defineProperty&&Object.keys)try{var n=Object.keys(t);return n.forEach(function(n){Object.defineProperty(e,n,{get:function(){return t[n]},set:function(e){return t[n]=e,e}})}),e}catch(r){f([r])}for(var o in t)a.call(t,o)&&(e[o]=t[o]);return e}function f(e){try{t.emit("internal-error",e)}catch(n){}}return t||(t=r),e.inPlace=s,e.flag=i,e}},{1:18,ee:"QJf3ax"}]},{},["G9z0Bl",3,8]);</script>

  <meta content="authenticity_token" name="csrf-param" />
<meta content="SzcOs8ZsiDpIkVDIPieisJezZeO+TefgSQfv/UxwTA8=" name="csrf-token" />

  <script src="<c:url value='/js/md5.min.js'/>"></script>

	<link rel="stylesheet" href="<c:url value="css/bootstrap.css" />" media="screen"/>
    <link rel="stylesheet" href="<c:url value="css/mortgage.css" />"/>
    
   <!-- <script src="js\angular.min.js"></script> 
  <script src="js\jquery-1.11.1.min.js"></script>-->
  <script src="http://code.jquery.com/jquery.js"></script> 
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.16/angular.min.js"></script>
  <script src="<c:url value="js/bootstrap.min.js" />"></script>
    
	<title>Yahoo Finance Trading System</title>


<script>
	$(document).ready(function() {
		$('.login33').show();
		$('.login34').show();
		$('.login35').hide();
		$('#needlogin').hide();
		if($('#joke').text()=="anonymousUser"){
			//alert($('#joke').val());
		}else{
			//var sesioninfo = $('#joke').text();
			$('.login33').hide();
			$('.login34').hide();
			$('.login35').show();
		}
		$('#mtgc').click(function(event){
			if($('#joke').text()=="anonymousUser"){
				$('#mdl').modal('show');
				event.preventDefault();
				$('#needlogin').show();
			}
		});
		
		$('#img98').hover(function(){
			$(this).attr('src','img/96.jpg');
			$('#pkg01').show();
		});
		$('#img98').mouseleave(function(){
			$(this).attr('src','img/94.jpg');
			$('#pkg01').hide();
		});
		$('#img97').hover(function(){
			$(this).attr('src','img/93.jpg');
			$('#pkg02').show();
		});
		$('#img97').mouseleave(function(){
			$(this).attr('src','img/90.jpg');
			$('#pkg02').hide();
		});
		
		 if($('#role01').text()=='[ROLE_ADMIN]'){
			  $('#role01').text("MyAdmin");
			  $('#role01').attr("href", "admin.html");
		  }
		  if($('#role01').text()=='[ROLE_USER]'){
			  $('#role01').text("Registed user");
			  //$('#role01').attr("href", "admin.html");
		  }
		$('#login001').click(function(){
			$('#registerPass').hide();	
			$('#needlogin').hide();
		});
		$('#rgr01').click(function(){
			$("#registerUsername").hide();
			$("#registerEmail").hide();
			$('#username1').removeClass("has-success","has-feedback","ng-dirty");
			$('#email1').removeClass("has-success","has-feedback","ng-dirty");
			$('#email2').removeClass("has-success","has-feedback","ng-dirty");
			$('#password1').removeClass("has-success","has-feedback","ng-dirty");
			$('#password2').removeClass("has-success","has-feedback","ng-dirty");
			$('#username').removeClass("ng-dirty");
			$('#password').removeClass("ng-dirty");
			$('#email').removeClass("ng-dirty");
			$('#cEmail').removeClass("ng-dirty");
			$('#cPassword').removeClass("ng-dirty");
			$('#username').val('');
			$('#password').val('');
			$('#email').val('');
			$('#cEmail').val('');
			$('#cPassword').val('');
			$('#un1').hide();
			$('#emailValid').hide();
			$('#em1').hide();
			$('#em2').hide();
			$('#registerEmail').hide();
			$('#passwordShort').hide();
			$('#passwordDiff').hide();
			$('#pw2').hide();
			$('#pw1').hide();
			$('#subPass').hide();	
		});
		$('#rclr').click(function(){
			$("#registerUsername").hide();
			$("#registerEmail").hide();
			$('#username1').removeClass("has-success","has-feedback","ng-dirty");
			$('#email1').removeClass("has-success","has-feedback","ng-dirty");
			$('#email2').removeClass("has-success","has-feedback","ng-dirty");
			$('#password1').removeClass("has-success","has-feedback","ng-dirty");
			$('#password2').removeClass("has-success","has-feedback","ng-dirty");
			$('#username').val('');
			$('#un1').hide();
			$('#emailValid').hide();
			$('#em1').hide();
			$('#em2').hide();
			$('#registerEmail').hide();
			$('#passwordShort').hide();
			$('#passwordDiff').hide();
			$('#pw2').hide();
			$('#pw1').hide();
			$("#emailExsist").hide();
			$('#username').removeClass("ng-dirty");
			$('#password').removeClass("ng-dirty");
			$('#email').removeClass("ng-dirty");
			$('#cEmail').removeClass("ng-dirty");
			$('#cPassword').removeClass("ng-dirty");
			$('#subPass').hide();	
		});

		if ("<c:out value='${param.login_error}'/>" != "") {
		  	$('#wrongCredentials').show();
		  	$('#mdl').modal('show');
		}
		$('#username').keyup(function() {
			if($('#username').val()){
				$.ajax({
					url : 'http://localhost:8080/MortgageCalculator/rest/registering/usernameCheck',
					type : "get",
					dataType : "html",
					data : {
						username:$('#username').val()
					},
					success : function(response) {
						var result = response.toString().trim();
						if (result == "true") {
							$("#registerUsername").show();
							$('#username').val('');
							$('#username1').removeClass("has-success","has-feedback");
							$('#un1').hide();
						} 
						else{
								$('#username1').addClass("has-success","has-feedback");
								$("#registerUsername").hide();
								$('#un1').show();
						}
					},
					error : function(msg) {
						alert(msg);
					}
				});
			}			
			if(!$('#username').val()){
				
				$('#un1').hide();
			}
			});
		$('#username').blur(function() {
			if($('#username').val()){
				
				$.ajax({
					url : 'http://localhost:8080/MortgageCalculator/rest/registering/usernameCheck',
					type : "get",
					dataType : "html",
					data : {
						username:$('#username').val()
					},
					success : function(response) {
						var result = response.toString().trim();
						if (result == "true") {
							$("#registerUsername").show();
							$('#username').val('');
							$('#username1').removeClass("has-success","has-feedback");
							$('#un1').hide();
						} 
						else{						
								$('#username1').addClass("has-success","has-feedback");
								$("#registerUsername").hide();
								$('#un1').show();

						}
					},
					error : function(msg) {
						alert(msg);
					}
				});

			}
			
			if(!$('#username').val()){
				
				$('#un1').hide();
			}

			});
		$('#email').keyup(function() {
			var emailContent = $('#email').val();
			var re = /^[-a-z0-9_]+(\.[-a-z0-9_]+)*@[-a-z0-9_]+(\.[-a-z0-9]+)+$/gi;
			if($('#email').val()){
			$.ajax({
					url : 'http://localhost:8080/MortgageCalculator/rest/registering/emailCheck',
					type : "get",
					dataType : "html",
					data : {
						email:$('#email').val()
					},
					success : function(response) {
						var result = response.toString().trim();
						if (result == "true") {
							$("#emailExsist").show();
							$('#email').val('');
							$('#email1').removeClass("has-success","has-feedback");
							$('#emailValid').hide();
							$('#em1').hide();
						}
						else{
							if(re.test(emailContent)){
								
								$('#email1').addClass("has-success","has-feedback");
								$('#em1').show();
								$('#emailValid').hide();
								$("#emailExsist").hide();
							}else{
								$('#email1').removeClass("has-success","has-feedback");
								$('#em1').hide();
								$('#emailValid').show();
							}
					}
					},
					error : function(msg) {
						alert(msg);
					}
				});
	
			//$('#email').val('');
			//$("#registerEmail").show();
			
			}
			if(!$('#email').val()){
				$('#email1').removeClass("has-success","has-feedback");
				$('#em1').hide();
			}
			});
		$('#email').blur(function() {
			var emailContent = $('#email').val();
			var re = /^[-a-z0-9_]+(\.[-a-z0-9_]+)*@[-a-z0-9_]+(\.[-a-z0-9]+)+$/gi;
			if($('#email').val()){
			$.ajax({
					url : 'http://localhost:8080/MortgageCalculator/rest/registering/emailCheck',
					type : "get",
					dataType : "html",
					data : {
						email:$('#email').val()
					},
					success : function(response) {
						var result = response.toString().trim();
						if (result == "true") {
							$("#emailExsist").show();
							$('#email').val('');
							$('#email1').removeClass("has-success","has-feedback");
							$('#emailValid').hide();
							$('#em1').hide();
						}
						else{
							if(re.test(emailContent)){
								
								$('#email1').addClass("has-success","has-feedback");
								$('#em1').show();
								$('#emailValid').hide();
								$("#emailExsist").hide();
							}else{
								$('#email1').removeClass("has-success","has-feedback");
								$('#em1').hide();
								$('#emailValid').show();
							}
					}
					},
					error : function(msg) {
						alert(msg);
					}
				});
	
			//$('#email').val('');
			//$("#registerEmail").show();
			
			}
			if(!$('#email').val()){
				$('#email1').removeClass("has-success","has-feedback");
				$('#em1').hide();
			}
			});
		$('#cEmail').keyup(function() {
			if($('#cEmail').val()){
				if($('#email').val()==$('#cEmail').val()){
					$('#registerEmail').hide();
					$('#email2').addClass("has-success","has-feedback");
					$('#em2').show();
				}else{
					$('#email2').removeClass("has-success","has-feedback");
					$('#em2').hide();
					$('#registerEmail').show();
				}
			}		
			else if(!$('#cEmail').val()){
				$('#email2').removeClass("has-success","has-feedback");
				$('#em2').hide();
			}
			});
		$('#cEmail').blur(function() {
			if($('#cEmail').val()){
				if($('#email').val()==$('#cEmail').val()){
					$('#registerEmail').hide();
					$('#email2').addClass("has-success","has-feedback");
					$('#em2').show();
				}else{
					$('#email2').removeClass("has-success","has-feedback");
					$('#em2').hide();
					$('#registerEmail').show();
				}
			}
			
			else if(!$('#cEmail').val()){
				$('#email2').removeClass("has-success","has-feedback");
				$('#em2').hide();
			}
			});
		$('#email').keyup(function() {
			if(($('#cEmail').val())&& ($('#cEmail').hasClass('ng-dirty'))){
				if($('#email').val()==$('#cEmail').val()){
					$('#registerEmail').hide();
					$('#email2').addClass("has-success","has-feedback");
					$('#em2').show();
				}else{
					$('#email2').removeClass("has-success","has-feedback");
					$('#em2').hide();
					$('#registerEmail').show();
				}
			}		
			else if(!$('#cEmail').val()){
				$('#email2').removeClass("has-success","has-feedback");
				$('#em2').hide();
			}		   
			});
		$('#email').blur(function() {
			if(($('#cEmail').val())&& ($('#cEmail').hasClass('ng-dirty'))){
				if($('#email').val()==$('#cEmail').val()){
					$('#registerEmail').hide();
					$('#email2').addClass("has-success","has-feedback");
					$('#em2').show();
				}else{
					$('#email2').removeClass("has-success","has-feedback");
					$('#em2').hide();
					$('#registerEmail').show();
				}
			}		
			else if(!$('#cEmail').val()){
				$('#email2').removeClass("has-success","has-feedback");
				$('#em2').hide();
			}	   
			});
		$('#password').keyup(function() {
			if($('#password').val()&&($($('#password').hasClass('ng-dirty')))){
				if($('#password').val().length>=6){
					$('#password1').addClass("has-success","has-feedback");
					$('#pw1').show();
					$('#passwordShort').hide();
				}else{
					$('#password1').removeClass("has-success","has-feedback");
					$('#pw1').hide();
					$('#passwordShort').show();
				}
			}
			if(!$('#password').val()&&($($('#password').hasClass('ng-dirty')))){
				$('#password1').removeClass("has-success","has-feedback");
				$('#pw1').hide();
			}
			if($('#password1').hasClass("has-success","has-feedback")){
				if($('#cPassword').val()){
					if($('#cPassword').val()==$('#password').val()){
						$('#passwordDiff').hide();
						$('#password2').addClass("has-success","has-feedback");
						$('#pw2').show();
					}else{
						$('#password2').removeClass("has-success","has-feedback");
						$('#pw2').hide();
						$('#passwordDiff').show();
					}

				}
			}
			});
		$('#password').blur(function() {
			if($('#password').val()&&($($('#password').hasClass('ng-dirty')))){
				if($('#password').val().length>=6){
					$('#password1').addClass("has-success","has-feedback");
					$('#pw1').show();
					$('#passwordShort').hide();
				}else{
					$('#password1').removeClass("has-success","has-feedback");
					$('#pw1').hide();
					$('#passwordShort').show();
				}
			}
			if(!$('#password').val()&&($($('#password').hasClass('ng-dirty')))){
				$('#password1').removeClass("has-success","has-feedback");
				$('#pw1').hide();
			}

			if($('#password1').hasClass("has-success","has-feedback")){
				if($('#cPassword').val()){
					if($('#cPassword').val()==$('#password').val()){
						$('#passwordDiff').hide();
						$('#password2').addClass("has-success","has-feedback");
						$('#pw2').show();
					}else{
						$('#password2').removeClass("has-success","has-feedback");
						$('#pw2').hide();
						$('#passwordDiff').show();
					}

				}
			}
 
			});
		$('#cPassword').keyup(function() {
			if($('#password1').hasClass("has-success","has-feedback")){
				if($('#cPassword').val()){
					if($('#cPassword').val()==$('#password').val()){
						$('#passwordDiff').hide();
						$('#password2').addClass("has-success","has-feedback");
						$('#pw2').show();
					}else{
						$('#password2').removeClass("has-success","has-feedback");
						$('#pw2').hide();
						$('#passwordDiff').show();
					}

				}
			}

			});
		$('#cPassword').blur(function() {
			if($('#password1').hasClass("has-success","has-feedback")){
				if($('#cPassword').val()){
					if($('#cPassword').val()==$('#password').val()){
						$('#passwordDiff').hide();
						$('#password2').addClass("has-success","has-feedback");
						$('#pw2').show();
					}else{
						$('#password2').removeClass("has-success","has-feedback");
						$('#pw2').hide();
						$('#passwordDiff').show();
					}

					
				}
			}

			});

		//********************************************************************************************************************
		//********************************************************************************************************************
		//********************************************************************************************************************
		//********************************************************************************************************************
		//********************************************************************************************************************
		//********************************************************************************************************************
		//********************************************************************************************************************
		
		$('#register').click(function(event){
			var valid = 0;
			if($('#username1').hasClass("has-success","has-feedback","ng-dirty")){
				valid++;
			}
			if($('#email1').hasClass("has-success","has-feedback","ng-dirty")){
				valid++;
			}
			if($('#email2').hasClass("has-success","has-feedback","ng-dirty")){
				valid++;
			}
			if($('#password1').hasClass("has-success","has-feedback","ng-dirty")){
				valid++;
			}
			if($('#password2').hasClass("has-success","has-feedback","ng-dirty")){
				valid++;
			}
			if(valid==5){
				$.ajax({
					url : 'http://localhost:8080/MortgageCalculator/rest/registering',
					type : "post",
					dataType : "html",
					data : {
						username:$('#username').val(),
						password:$('#password').val(),
						email:$('#email').val()
					},
					success : function(response) {
						
						$('#Register').modal('hide');
						$('#mdl').modal('show');		
						$('#registerPass').show();	
						
						
					},
				
					error : function(msg) {
						alert(msg);
					}
				});
				
			}else{
				
				$('#subPass').show();	
			}

		});


		//********************************************************************************************************************
		//********************************************************************************************************************
		//********************************************************************************************************************
		//********************************************************************************************************************
		//********************************************************************************************************************
		//********************************************************************************************************************

		$('#gtx').click(function(){
			$("#usernameAndPasswordReq").hide();
			$("#usernameReq").hide();
			$("#passwordReq").hide();
			$("#passwordReq2").hide();
			$("#wrongCredentials").hide();	
		});
		
		$("#gg").on("click", loginValidation);	
		$("input").keydown(function(){
			    //$(this).css("background-color","green");
		});
		$("input").keyup(function(){
				  //$(this).css("background-color","whi");
		});
		$("input").focus(function(){
			$(this).css("background-color","#CCF9CC");
		});
		$("input").blur(function(){
			$(this).css("background-color","white");
			if( !$(this).val()){
				$(this).addClass("empty01");
			}
			if($(this).val()){
				$(this).removeClass("empty01");
			}
		});

	});

	function loginValidation() {
		
		$("#usernameAndPasswordReq").hide();
		$("#usernameReq").hide();
		$("#passwordReq").hide();
		$("#passwordReq2").hide();
		$("#wrongCredentials").hide();	
	  	if($("#j_username").val().length == 0 && $("#j_password").val().length == 0) {
	  		$("#usernameAndPasswordReq").show();
	  		return false;
	  	} else if ($("#j_username").val().length == 0) {
	  		$('#usernameReq').show();
	  		return false;
	  	} else if ($("#j_password").val().length == 0) {
	  		$("#passwordReq").show();
	  		return false;
	  	} else if ($("#j_password").val().length < 6) {
	  		$("#passwordReq2").show();
	  		return false;
	  	} else {
	  		return true;
	  	}
	}

	//var str = 'For more information, see Chapter 3.4.5.1';
	//var re = /^[-a-z0-9_]+(\.[-a-z0-9_]+)*@[-a-z0-9_]+(\.[-a-z0-9]+)+$/i;
	//var found = str.match(re);
	
	//var re = new RegExp('/^[-a-z0-9_]+(\.[-a-z0-9_]+)*@[-a-z0-9_]+(\.[-a-z0-9]+)+$/');
	
</script>

<script>
	    var app = angular.module('mainModule', []);
    
    app.controller('mainController', function($scope, $http ) {
        $scope.user = {
                username: "",
                password: "",
                
            };
        $scope.users = [];
        
      });
    
    
    app.directive("passwordVerify", function() {
           return {
              require: "ngModel",
              scope: {
                passwordVerify: '='
              },
              link: function(scope, element, attrs, ctrl) {
                scope.$watch(function() {
                    var combined;

                    if (scope.passwordVerify || ctrl.$viewValue) {
                       combined = scope.passwordVerify + '_' + ctrl.$viewValue; 
                    }                    
                    return combined;
                }, function(value) {
                    if (value) {
                        ctrl.$parsers.unshift(function(viewValue) {
                            var origin = scope.passwordVerify;
                            if (origin !== viewValue) {
                                ctrl.$setValidity("passwordVerify", false);
                                return undefined;
                            } else {
                                ctrl.$setValidity("passwordVerify", true);
                                return viewValue;
                            }
                        });
                    }
                });
             }
           };
        });

    var md5Encrypt = function(form){
    	$("#r_password").val((md5($("#r_password").val())));
    	return true;
    }
    var loginEncrypt = function(form){
    	$("#j_password").val(md5($("#j_password").val()));
    	return true;
    }
	</script>

</head>

<body ng-app="mainModule">
	<section id="title" class="row bcc topp">
		<p class="col-md-3"></p>
		<img id="logo01" class="col-md-6" src="img/yahoo.png"/>
		<p class="col-md-1 col-md-offset-2"></p>
		<div class="dp2">
		<!-- 
		<form class="navbar-form dp2" role="search">
        <div class="form-group">
          <input type="text" class="form-control dp2" placeholder="Search">
        </div>
        <button type="submit" class="btn btn-default dp2">GO</button>
      </form> -->
      </div>
	</section>

	<section class="row bcc">
	<div class="col-md-3 bcb">&nbsp;</div>
	<nav id="tposition" class="navbar navbar-default" role="navigation">
	<div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header ">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div>
	
	<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	<ul id="nav01" class="row col-md-8 navbar bcc" style="list-style-type: none;"> 
      

    
    <!--<li class="col-md-1"><a href="">HOME</a></li>
    <li class="col-md-1"><a href="#" data-toggle="modal" data-target="#mdl02">AboutUs</a></li>
      <li class="col-md-1"><a id="mtgc" href="/Finance/appfin/transaction2.htm">Transaction</a></li>
    <li class="col-md-1"><a id="mtgc" href="/Finance/appfin/dashboard2.htm">MarketData</a></li>
    <li class="col-md-1"><a id="mtgc" href="/Finance/appfin/portfolio2.htm">Portfolio</a></li>
    <li class="col-md-1"><a id="mtgc" href="/Finance/appfin/history2.htm">History</a></li>-->
    <li class="col-md-1"><a id="login001" href="#info" data-toggle="modal" data-target="#mdl">Login</a></li>
    <li class="col-md-1"><a href="#info" data-toggle="modal" data-target="#Register" id="rgr01">Register</a></li>
    
<!--           <li class="col-md-1" ><font size="3" color="red">Registration</font></li>
          <li class="col-md-1" ><font size="3" color="red"></font></li>
 <li class="col-md-1"  color="red"><font size="3" color="red">Successful</font></li>  --> 
    
    <!-- <li class="col-md-1" ><center ><font size="3" color="red">Registration</font></center></li> -->



</ul>
</div>
</div></nav>
<div class="col-md-1 bcb">&nbsp;</div>
	</section>
	
	
	
	
	




<div class="modal fade" id="mdl" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content lg01">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h4 class="modal-title">Sign in now!</h4>
      </div>
      <div class="modal-body">
      
      


       <form class="navbar-form navbar-right" action="<c:url value='${request.contextPath}/j_spring_security_check'/>" method="POST" id="login-form" onSubmit="loginEncrypt(this)">
        <div class="form-group">
          <input type="text" placeholder="Username" class="form-control" name="j_username" id="j_username" />
          
          <input type="password" placeholder="Password" class="form-control" name="j_password" id="j_password"/>
        </div>
    
        <button id="signin" type="submit" ></span>Login</button>
        <!-- End of Login Form -->
      </form>




</div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->












<!-- XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX -->
<!-- XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX -->
<!-- XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX -->
<!-- XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX -->
<div class="modal fade" ng-controller="mainController" id="Register" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h4 class="modal-title">Register here please:</h4>
      </div>
      
      
      
      

        <div class="modal-body">


          <form class="form-horizontal" name="registerform" onSubmit="md5Encrypt(this)" role="form" action="register.htm" method="POST" id="register-form">
          <!-- <div class="well well-sm"><strong><span class="glyphicon glyphicon-asterisk"></span>Required Field</strong></div> -->
          <div class="form-group">
              <label for="r_username" class="col-sm-2 control-label">Username:</label>
              <!--  <span class="glyphicon glyphicon-asterisk"></span>-->
              
              <div class="col-sm-6">
                <input type="text" class="form-control" name="r_username" id="r_username" ng-model="user.username" placeholder="Username" required>
                <span class="col-md-4" ng-show="registerform.r_username.$dirty && registerform.r_username.$invalid">Required</span>
              </div>
            </div> 
            
            <div class="alert" style="display:none;" id="userExist">
	        <p>The user already exists</p>
            </div>
          
          <div class="form-group">
              <label for="r_password" class="col-sm-2 control-label">Password:</label>
             <!-- <span class="glyphicon glyphicon-asterisk"></span> --> 
              <div class="col-sm-6">
                <input type="password" class="form-control" name="r_password" ng-model="user.r_password" id="r_password" placeholder="Password must between 6 to 20" required ng-minlength="6" ng-maxlength="20">
                <span class="col-md-4" ng-show="registerform.r_password.$dirty && registerform.r_password.$error.required">Required</span>
                <span class="col-md-4" ng-show="registerform.password.$dirty && (registerform.password.$error.minlength || registerform.password.$error.maxlength)">6 to 20 characters</span>

              </div>
            </div>


          <div class="form-group">
          <label class="control-label col-sm-2" for="pwd1">Confirm Password:</label>
          <!-- <span class="glyphicon glyphicon-asterisk"></span> -->
          <div class="col-sm-6">          
          <input type="password" class="form-control" name="r_r_password" id="r_r_password" ng-model="user.r_r_password" password-verify="user.r_password" placeholder="Re-enter password must between 6 to 20" required ng-minlength="6" ng-maxlength="20">
          </div>
         <span class="col-md-4" ng-show="registerform.r_r_password.$dirty && registerform.r_r_password.$error.required">Required</span>
         <span class="col-md-4" ng-show="registerform.r_r_password.$dirty && registerform.r_r_password.$error.passwordVerify">Password does not match</span>
           <span class="col-md-4" ng-show="registerform.password.$dirty && (registerform.password.$error.minlength || registerform.password.$error.maxlength)">6 to 20 characters</span>
          <!-- <button type="button" onclick="check()" value="Check">Check</button> -->
        </div>

          <div class="form-group">
          <label class="control-label col-sm-2" for="r_firstname">Firstname:</label>
          <!-- <span class="glyphicon glyphicon-asterisk"></span> -->
          <div class="col-sm-6">
            <input onclick="check()"type="text" class="form-control" name="r_firstname" id="r_firstname" ng-model="user.r_firstname" placeholder="Firstname" required>
         	<span class="col-md-4" ng-show="registerform.r_firstname.$dirty && registerform.r_firstname.$error.required">Required</span>

          </div>
        </div>


           <div class="form-group">
          <label class="control-label col-sm-2" for="r_lastname">Lastname:</label>
          <!-- <span class="glyphicon glyphicon-asterisk"></span> -->
          <div class="col-sm-6">
            <input type="text" class="form-control" name="r_lastname" id="r_lastname" ng-model="user.r_lastname" placeholder="Lastname" required>
            <span class="col-md-4" ng-show="registerform.r_lastname.$dirty && registerform.r_lastname.$error.required">Required</span>

          </div>
        </div>


            <div class="form-group">
              <label for="r_email" class="col-sm-2 control-label">Email:</label>
              <!-- <span class="glyphicon glyphicon-asterisk"></span> -->
              <div class="col-sm-6">
                <input type="email" class="form-control" name="r_email" id="r_email" ng-model="user.r_email" ng-pattern="/^[a-z]+[a-z0-9._]+@[a-z]+\.[a-z.]{2,5}$/"  placeholder="Email" required>
                    <span class="col-md-4" ng-show="registerform.r_email.$dirty && registerform.r_email.$error.required">Required</span>
                    <span class="col-md-4" ng-show="registerform.r_email.$dirty && registerform.r_email.$error.email">Invalid Email</span>
              </div>
            </div>
            
         

        <div class="form-group" style="display:none;">
          <label class="control-label col-sm-2" for="r_address">Address:</label>
          <div class="col-sm-6">          
            <input type="text" class="form-control" name="r_address" id="r_address" ng-model="user.r_address" placeholder="Enter address">
            <span class="col-md-4" ng-show="registerform.r_address.$dirty && registerform.r_address.$error.required">Required</span>
          </div>
        </div>



         <div class="form-group" style="display:none;">
          <label class="control-label col-sm-2" for="r_city">City:</label>
          <div class="col-sm-6">          
            <input type="text" class="form-control" name="r_city" id="r_city" placeholder="Enter city">
          </div>
        </div>

         <div class="form-group" style="display:none;">
          <label class="control-label col-sm-2" for="r_state">State:</label>
          <div class="col-sm-6">          
            <input type="text" class="form-control" name="r_state" id="r_state" placeholder="Enter state">
          </div>
        </div>
        
        <div class="form-group" style="display:none;">
          <label class="control-label col-sm-2" for="r_zipcode">Zipcode:</label>
          <div class="col-sm-6">          
            <input type="text" class="form-control" name="r_zipcode" id="r_zipcode" placeholder="Enter state">
          </div>
        </div>

           <div class="form-group" style="display:none;">
          <label class="control-label col-sm-2" for="r_phone">Phone:</label>
          <div class="col-sm-6">          
            <input type="text" class="form-control" name="r_phone" id="r_phone" placeholder="Enter phone">
          </div>
        </div>


          
            <div class="form-group">
              <div class="col-sm-offset-2 col-sm-10">
                <button type="submit" class="btn btn-default" >Sign Up</button>
              </div>
            </div>
          </form>
          
        </div>






      
      
      

    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->




<!-- XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX -->
<!-- XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX -->
<!-- XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX -->
<!-- XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX -->
<div class="modal fade" id="mdl02" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h4 class="modal-title">team</h4>
      </div>
      <div class="modal-body row">
      	<div class="col-md-5">
      	<b>    </b>
      	<img id="img98" alt="" src="" class="img-circle img99">
      	
      	</div>
        <div class="col-md-5 col-md-offset-1">
        <b>   </b>
        <img id="img97" alt="" src="" class="img-circle img99">
        
        </p>
        </div>
        <div class="col-md-12">
        <p id="pkg01" style="display:none;"></p>
      	<p id="pkg02" style="display:none;"></p>
        </div>
	
      </div>

    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<!-- XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX -->
<!-- XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX -->
<!-- XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX -->
<!-- XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX -->





<section id="carousel01" class="row bcc">
	<div id="this-carousel-id" class="carousel slide col-md-12 col-sm-12 col-xs-12"><!-- class of slide for animation -->
  <ol class="carousel-indicators">
        <li data-target="#this-carousel-id" data-slide-to="0" class="active"></li>
        <li data-target="#this-carousel-id" data-slide-to="1"></li>
        <li data-target="#this-carousel-id" data-slide-to="2"></li>
      </ol>
  <div class="carousel-inner">
    <div class="item active"><!-- class of active since it's the first item -->
      <img class="crimg" src="img/a1.jpg" alt="" />
      <div class="carousel-caption">
        <p class="illus hold leftn">
        	<a href="http://www.sec.gov/edgar/searchedgar/companysearch.html" class="ctitle" traget="_blank">SEC: Searching Company Filings</a><br>
        	U.S. Securities and Exchange Commission provide Free access to more than 20 million filings.
        	According Company Name, or Fast Search by Ticker symbol or CIK.
        	<br><a href="http://www.sec.gov/edgar/searchedgar/companysearch.html" class="ctitle" traget="_blank"><button class="btn btn-lg btn-primary">Learn more.</button></a>
        </p>
      </div>
    </div>
    <div class="item">
      <img class="crimg" src="img/b1.jpg" alt="" />
      <div class="carousel-caption">
        <p class="illus hold leftn">
        	<a href="http://www.nasdaq.com/" class="ctitle">Nasdaq</a><br>
        	 NASDAQ stood for National Association of Securities Dealers Automated Quotations, was founded in 1971
        	When the NASDAQ began trading on February 8, 1971, it was the world's first electronic stock market. 
        	<br><a href="http://www.nasdaq.com/" class="ctitle"><button class="btn btn-lg btn-primary">Learn more.</button></a>
        </p>
      </div>
    </div>
    <div class="item">
      <img class="crimg" src="img/c1.jpg" alt="" />
     <!-- 
      <div class="carousel-caption">
        <p class="illus hold leftn">
        	<a href="" class="ctitle">Invested in Detroit's Future</a><br>
        	$100 million over the next five years will support and accelerate the city's dynamic recovery.
        	<br><button class="btn btn-lg btn-primary">Learn more.</button>
        </p>
      </div> -->
      <div class="carousel-caption">
        <p class="illus hold leftn">
        	<a href="http://www.sec.gov/edgar/searchedgar/companysearch.html" class="ctitle" traget="_blank">SEC: Searching Company Filings</a><br>
        	U.S. Securities and Exchange Commission provide Free access to more than 20 million filings.
        	According Company Name, or Fast Search by Ticker symbol or CIK.
        	<br><a href="http://www.sec.gov/edgar/searchedgar/companysearch.html" class="ctitle" traget="_blank"><button class="btn btn-lg btn-primary">Learn more.</button></a>
        </p>
      </div>
    </div>
     <div class="item">
      <img class="crimg" src="img/d1.jpg" alt="" />
      <div class="carousel-caption">
        <p class="illus hold leftn">
        	<a href="https://www.nyse.com/index" class="ctitle">New York Stock Exchange (NYSE)</a><br>
sometimes known as the "Big Board", is an American stock exchange located at 11 Wall Street, 
Lower Manhattan, New York City, New York, United States. 
It is by far the world's largest stock exchange by market capitalization of its listed companies 
at US$16.6 trillion as of February 2015. Average daily trading value was approximately US$169 billion in 2013.<br>
<a href="https://www.nyse.com/index" class="ctitle"><button class="btn btn-lg btn-primary">Learn more.</button></a>
        </p>
      </div>
    </div>
    
  </div><!-- /.carousel-inner -->
  <!--  Next and Previous controls below
        href values must reference the id for this carousel -->
    <a class="carousel-control left" href="#this-carousel-id" data-slide="prev"><div class="inccc icl"><img class="myicn" src="img/slide_prev_white.png" alt=""></div></a>
    <a class="carousel-control right" href="#this-carousel-id" data-slide="next"><div class="inccc icr"><img class="myicn" src="img/slide_next_white.png" alt=""></div></a>

</div><!-- /.carousel -->
</section>


<section class="body01 row col-md-8 col-md-offset-3">
  <section class="row col-md-9" id="last02">
  	<aside class="col-md-12 body04 body00 body30 dp01">
  	<img alt="" src="img/88.png" style="width:50%;height:100%;">
  	


  </aside>
 
  
  <aside class="col-md-4 body02 body03">
    <div class="inner">
      <img class="iimg" src="img/i1.png">
      <div class="try"><a href="http://www.sec.gov/edgar/searchedgar/companysearch.html" >
SEC: Searching Company Filings</a><br>
        	U.S. Securities and Exchange Commission provide Free access to more than 20 million filings.
        	According Company Name, or Fast Search by Ticker symbol or CIK.     

      
      <a href="http://www.sec.gov/edgar/searchedgar/companysearch.html" >Learn More</a></div>
      
    </div>
  </aside>
  <aside class="col-md-4 body02 body03">
    <div class="inner">
      <img class="iimg" src="img/i2.jpg">
      <div class="try"><a href="http://www.sec.gov/edgar/searchedgar/companysearch.html" >
SEC: Searching Company Filings</a><br>
        	U.S. Securities and Exchange Commission provide Free access to more than 20 million filings.
        	According Company Name, or Fast Search by Ticker symbol or CIK.     

      
      <a href="http://www.sec.gov/edgar/searchedgar/companysearch.html" >Learn More</a></div>
      
    </div>
  </aside>
  <aside class="col-md-4 body02 body03">
    <div class="inner">
      <a href="http://www.nasdaq.com/"><img class="iimg" src="img/i3.jpg"></a>
      <div class="try"><a href="http://www.nasdaq.com/">The NASDAQ Stock Market, </a>commonly known as the NASDAQ, 
      is an American stock exchange. In terms of market share and volume traded, 
      it is the largest stock exchange in the United States
       <br><br><a href="">Learn More</div>
      
    </div>
  </aside>
  <aside class="col-md-4 body02 body03">
    <div class="inner">
      <img class="iimg" src="img/i4.jpg">
<div class="try"><a href="http://www.sec.gov/edgar/searchedgar/companysearch.html" >
SEC: Searching Company Filings</a><br>
        	U.S. Securities and Exchange Commission provide Free access to more than 20 million filings.
        	According Company Name, or Fast Search by Ticker symbol or CIK.     

      
      <a href="http://www.sec.gov/edgar/searchedgar/companysearch.html" >Learn More</a></div>
  </aside>
  <aside class="col-md-4 body02 body03">
    <div class="inner">
      <a href="http://www.nasdaq.com/"><img class="iimg" src="img/i5.jpg"></a>
      <div class="try"><a href="http://www.nasdaq.com/">The NASDAQ Stock Market, </a>commonly known as the NASDAQ, 
      is an American stock exchange. In terms of market share and volume traded, 
      it is the largest stock exchange in the United States<br><a href="">Learn More</a></div>
    </div>
  </aside>
  <aside class="col-md-4 body02 body03">
    <div class="inner">
      <img class="iimg" src="img/i6.jpg">
      <div class="try"><a href="https://www.nyse.com/index">New York Stock Exchange (NYSE)</a> <br>
sometimes known as the "Big Board", is an American stock exchange.
It is by far the world's largest stock exchange.<br>
 <a href="https://www.nyse.com/index">Learn More</a></div>
    </div>
  </aside>

  </section>
  <section id="last11"class="col-md-3">IN THE NEWS<br><br>
  <a href="">Houtson Skills Gap Report Released</a><br><br><a href="">NYC Skills Gap Report Released</a><br><br><a href="">Chase Joins HBO and Starbucks to Salute U.S Veterans and Their Families</a>
  <br><br><br><br>CORPORATE RESPONSIBILITY<br><br><a href="">New research from the Global Cities Initiative finds foreign students are a growing force in U.S. economy</a><br><br><a href="">Small Business, Big Investment: $30 Million to Help Entrepreneur Networks</a><br><br><a href="">Update on $100 million Detroit commitment</a>
  <br><br><br><br>

  </section>

</section>

<div id="dvd"></div>

<footer class="row">
  <section class="col-md-6 col-md-offset-3 row">
    <aside class="col-md-3 asd"><b>Explore</b>
        <br><a href="">About us</a>
         <br><a href="">Investor Relations</a>
          <br><a href="">Corporate Responsiblility</a>
           <br><a href="">Careers</a>
           <br><a href="">Site Map</a>
           <p id="joke" style="display:none;">${username}</p>
    </aside>
     <aside class="col-md-3 asd"><b>Related Sites</b>
        <br><a href="">Nasdaq</a>
         <br><a href="">NYSE</a>


    </aside>
    <aside class="col-md-3 asd">Terms & Privacy
        <br><a href="">Privacy & Security</a>
         <br><a href="">Terms & Conditions</a>
          <br><a href="">USA Patriot Act Certification</a>
           <br><a href="">Cookie Policy</a>

    </aside>

    <aside class="col-md-3 asd">Connect With Us


          
          <br><a href="">
              <strong>Twitter</strong>
                <i class="icon-twitter icon-24"></i> </a>

           <a  href="">
           <br><strong>Facebook</strong>
             <i class="icon-facebook icon-24"></i> </a>
          


    </aside>
  </section>


</footer>



</body>
</html>



