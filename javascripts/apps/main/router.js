define("javascripts/apps/main/router",["Backbone","./views/FrontPage","./views/ProductPage"],function(t,e,n){var r,o,a,s,i,u={}.hasOwnProperty,p=function(t,e){function n(){this.constructor=t}for(var r in e)u.call(e,r)&&(t[r]=e[r]);n.prototype=e.prototype;t.prototype=new n;t.__super__=e.prototype;return t};r=t("Backbone");o=t("./views/FrontPage");a=t("./views/ProductPage");s=function(t){function e(){i=e.__super__.constructor.apply(this,arguments);return i}p(e,t);e.prototype.routes={home:"index",quiver:"showQuiver",bussg:"showBusSG",sgshowtime:"showSGShowtime",hangman:"showHangman",muffin:"showMuffin","*actions":"index"};e.prototype.initialize=function(){return{}};e.prototype.index=function(){var t;t=new o;app.layout.selectTab(null);return app.layout.showPage(t)};e.prototype.showQuiver=function(){var t;t=new a({product:"quiver",category:"productivity"});return app.layout.showPage(t)};e.prototype.showBusSG=function(){var t;t=new a({product:"bussg",category:"utilities"});return app.layout.showPage(t)};e.prototype.showSGShowtime=function(){var t;t=new a({product:"sgshowtime",category:"utilities"});return app.layout.showPage(t)};e.prototype.showHangman=function(){var t;t=new a({product:"hangman",category:"education"});return app.layout.showPage(t)};e.prototype.showMuffin=function(){var t;t=new a({product:"muffin",category:"opensource"});return app.layout.showPage(t)};return e}(r.Router);n.exports=s});