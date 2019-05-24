//var product = "bh";
var isWebKit = 'WebkitAppearance' in document.documentElement.style;
if (isWebKit) {
    var product = document.getElementById("sNotify").getAttribute("p");
    window.addEventListener("load", function (e) {
        if (typeof product != "undefined") {

            var link = document.createElement("link");
            link.href = "https://alerts.hungama.com/bNotify/notify_style.css";
            link.type = "text/css";
            link.rel = "stylesheet";
            link.media = "screen,print";

            document.getElementsByTagName("head")[0].appendChild(link);


            var cookie_key = product + "_n";
            var cookie_val = getCookie(cookie_key);
            cookie_val = cookie_val.trim();
            if (cookie_val == "") {
                var wrapper = document.createElement('div');
                wrapper.innerHTML = '<div class="noti_wrap" id="noti_wrap"><div class="notif_box"><div class="noti_img"><img width="65" height="65" style="border-radius:5px;" src="https://alerts.hungama.com/notification_icon.png"/></div><div class="noti_cont"><h2>Get <span>Entertainment</span> alerts From Bollywood Hungama.</h2><div class="botinfo">You can manage these alerts any time from your browser settings.</div></div></div><div class="noti_btnwrap"><span id="__emsg" style="color:red;font-size:12px;"></span><a class="notnow" onclick="cancel_notify();" href="javascript:void(0);">No Thanks</a><a class="allow" onclick="register_notification();" href="javascript:void(0);">&nbsp;&nbsp;&nbsp;&nbsp;Allow&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a> </div> </div>';

                document.body.insertBefore(wrapper.firstChild, document.body.childNodes[0]);
            } else {
                var oQueryString = queryString();
                if (typeof oQueryString["browserpush"] != "undefined") {
                    if (getCookie(product + "_push") != 1) {
                        setCookie(product + "_push", 1, 60 * 60 * 24 * 365);//for 1 year (in secs)
                        setCookie(product + "_n", 1, 60 * 60 * 24 * 365);//for 1 year (in secs)
                    }
                }
            }
        }
    });

}

function register_notification() {
    var cookie_key = product + "_n";
    setCookie(cookie_key, 1, 60 * 60 * 24 * 2); //for 2 days (in secs)
    window.open("https://alerts.hungama.com/bNotify/index.html?p=" + product, "_self");

}

function cancel_notify() {
    var cookie_key = product + "_n";
    setCookie(cookie_key, 1, 60 * 60 * 24 * 7); //do not disturb user for 7 days (in secs)
    document.getElementsByTagName("body")[0].removeChild(document.getElementById("noti_wrap"));
}

function getCookie(cname) {
    var name = cname + "=",
        ca = document.cookie.split(';'),
        i,
        c,
        ca_length = ca.length;
    for (i = 0; i < ca_length; i += 1) {
        c = ca[i];
        while (c.charAt(0) === ' ') {
            c = c.substring(1);
        }
        if (c.indexOf(name) !== -1) {
            return c.substring(name.length, c.length);
        }
    }
    return "";
}

function setCookie(variable, value, expires_seconds) {
    var d = new Date();
    d = new Date(d.getTime() + 1000 * expires_seconds);
    document.cookie = variable + '=' + value + '; expires=' + d.toGMTString() + '; path=/;';
}

function queryString() {
    var queryString = window.location.search;
    queryString = queryString.replace("?", "");
    var varArray = queryString.split("&");
    var param = {};
    for (var i = 0; i < varArray.length; i++) {
        param[varArray[i].split("=")[0]] = varArray[i].split("=")[1];
        //parameter-value pair
    }
    return param;
}

