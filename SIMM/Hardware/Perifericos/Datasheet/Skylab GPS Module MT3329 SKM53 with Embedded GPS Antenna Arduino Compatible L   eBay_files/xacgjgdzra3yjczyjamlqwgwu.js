var ds=function(){};
ds.init=function(){document.onclick=function(a){a=a?a:window.event?event:null;var b=a.target?a.target:a.srcElement?a.srcElement:null,e=true;if(typeof b.href=="undefined")for(;b;){b=b.parentNode;if(b==null){e=false;break}else if(b.tagName=="A")break;else if(b.tagName=="FORM"){b.target="_blank";e=false;break}}if(e){var c=b.href.toString();a=b.target;c=c.toLowerCase();if(typeof a=="undefined"&&c.substring(0,10)!="javascript"&&!c.match(/.ebaydesc./)&&c.substring(0,1)!="#")b.target="_blank";if(typeof a!==
"undefined"&&a.toLowerCase()!="_blank"&&a.toLowerCase()!="_top"&&c.substring(0,10)!="javascript"&&!c.match(/.ebaydesc./)&&c.substring(0,1)!="#")b.target="_blank";if(c.substring(0,10)!="javascript"&&!c.match(/.ebaydesc./)&&c.substring(0,1)!="#"){var d="http://rover."+domain+"/roverclk/0/0/9?trknvp=sid%3Dp2047675.l2879";if(ebayItemID!=="undefined")d=d+"%26itemid%3D"+ebayItemID;if(sellerId!=="undefined")d=d+"%26slrid%3D"+sellerId;d=d+"%26loc%3D"+c;d=d+"%26r%3D"+Math.floor(Math.random()*6);var g=new Image;
g.src=d}}};ds.resizeIt()};ds.setData=function(a){parent.location.replace(window.document.referrer+"#ht_"+a[0]+"wt_"+a[1])};
ds.getSize=function(){var a,b,e=[0,0],c=document.getElementById("ds_div"),d=document.getElementById("ds_thm_div"),g=ds.detectBrowser(),f=g[0].toLowerCase(),h=parseInt(g[1]);if(document.all){a=document.body.scrollHeight;b=document.body.scrollWidth;if(f=="msie"&&h>=9){a=c.scrollHeight;if(d)a=d.scrollHeight}}else{if(f=="safari"||f=="chrome"){a=c.parentNode.scrollHeight;if(isNaN(a)||typeof a=="undefined"||a==1E4||a==0){a=c.scrollHeight;if(isNaN(a)||typeof a=="undefined"||a==0)a=document.body.offsetHeight}}else{a=
document.body.offsetHeight;if(isNaN(a)||typeof a=="undefined"||a==1E4||a==0){a=c.scrollHeight;if(isNaN(a)||typeof a=="undefined"||a==1E4||a==0)a=c.parentNode.scrollHeight}}if(d)a=d.scrollHeight;if((f=="safari"||f=="chrome")&&h>=5)b=document.body.scrollWidth;else{b=document.body.offsetWidth;if(window.scrollMaxX!==0)b+=window.scrollMaxX}}if(isNaN(a)||typeof a=="undefined")a=0;if(isNaN(b)||typeof b=="undefined")b=0;if(f=="firefox"&&a>32E3)a=32E3;e[0]+=a;e[1]+=b;return e};
ds.attchMsgEvent=function(){if(typeof window.postMessage=="function")window.addEventListener?window.addEventListener("message",function(){ds.resizeItParentHandler()},false):window.attachEvent("onmessage",function(){ds.resizeItParentHandler()},false)};ds.resizeItParentHandler=function(){ds.resizeMsgSent&&ds.resizeIt()};
ds.resizeIt=function(){var a=ds.getSize();if(a)if(typeof window.postMessage=="function"){var b=JSON.stringify({h:a[0],w:a[1],t:title,s:subTitle,e:isTranslError});ds.resizeMsgSent=true;parent.postMessage(b,"*")}else ds.setData(a)};ds.detectBrowser=function(){var a=navigator.appName,b=navigator.userAgent,e,c=b.match(/(opera|chrome|safari|firefox|msie)\/?\s*(\.?\d+(\.\d+)*)/i);if(c&&(e=b.match(/version\/([\.\d]+)/i))!=null)c[2]=e[1];return c=c?[c[1],c[2]]:[a,navigator.appVersion,"-?"]};
ds.addLoadEvent=function(a){var b=window.onload;window.onload=typeof window.onload!="function"?a:function(){b&&b();a()}};ds.addLoadEvent(function(){ds.init()});ds.resizeMsgSent=false;ds.attchMsgEvent();
