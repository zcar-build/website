define("javascripts/apps/main/router",["Backbone","./views/FrontPage","./views/ProductPage","./views/PrivacyPage"],function(t,e,n){var r,o,s,i,a,u,c={}.hasOwnProperty,p=function(t,e){function n(){this.constructor=t}for(var r in e)c.call(e,r)&&(t[r]=e[r]);n.prototype=e.prototype;t.prototype=new n;t.__super__=e.prototype;return t};r=t("Backbone");o=t("./views/FrontPage");i=t("./views/ProductPage");s=t("./views/PrivacyPage");a=function(t){function e(){u=e.__super__.constructor.apply(this,arguments);return u}p(e,t);e.prototype.routes={home:"index",quiver:"showQuiver",hangman:"showHangman",bussg:"showBusSG",sgshowtime:"showSGShowtime",privacy:"showPrivacyPolicy","*actions":"index"};e.prototype.initialize=function(){return{}};e.prototype.index=function(){var t;t=new o({el:$("#content-container")[0]});$(window).scrollTop(0);return app.layout.selectTab(null)};e.prototype.showQuiver=function(){var t;t=new i({product:"quiver",el:$("#content-container")[0]});$(window).scrollTop(0);return app.layout.selectTab("quiver")};e.prototype.showHangman=function(){var t;t=new i({product:"hangman",el:$("#content-container")[0]});$(window).scrollTop(0);return app.layout.selectTab("hangman")};e.prototype.showBusSG=function(){var t;t=new i({product:"bussg",el:$("#content-container")[0]});$(window).scrollTop(0);return app.layout.selectTab("bussg")};e.prototype.showSGShowtime=function(){var t;t=new i({product:"sgshowtime",el:$("#content-container")[0]});$(window).scrollTop(0);return app.layout.selectTab("sgshowtime")};e.prototype.showPrivacyPolicy=function(){var t;t=new s({el:$("#content-container")[0]});$(window).scrollTop(0);return app.layout.selectTab(null)};return e}(r.Router);n.exports=a});