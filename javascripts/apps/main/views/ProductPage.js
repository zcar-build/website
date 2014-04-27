define("javascripts/apps/main/views/ProductPage",["Backbone","../templates/productivity.html","../templates/utilities.html","../templates/education.html","../templates/game.html","../templates/opensource.html","../templates/quiver.html","../templates/bussg.html","../templates/sgshowtime.html","../templates/hangman.html","../templates/jumpingcarp.html","../templates/muffin.html"],function(t,e,n){var r,s,o,i=function(t,e){return function(){return t.apply(e,arguments)}},a={}.hasOwnProperty,l=function(t,e){function n(){this.constructor=t}for(var r in e)a.call(e,r)&&(t[r]=e[r]);n.prototype=e.prototype;t.prototype=new n;t.__super__=e.prototype;return t};r=t("Backbone");t("../templates/productivity.html");t("../templates/utilities.html");t("../templates/education.html");t("../templates/game.html");t("../templates/opensource.html");t("../templates/quiver.html");t("../templates/bussg.html");t("../templates/sgshowtime.html");t("../templates/hangman.html");t("../templates/jumpingcarp.html");t("../templates/muffin.html");s=function(e){function n(){this.switchProduct=i(this.switchProduct,this);this.render=i(this.render,this);o=n.__super__.constructor.apply(this,arguments);return o}l(n,e);n.prototype.className="container marketing";n.prototype.events={"click #switcher .thumbnail":"switchProduct"};n.prototype.initialize=function(t){this.options=t;return app.layout.selectTab(t.category)};n.prototype.render=function(){var e,n;e=_.template(t("../templates/"+this.options.category+".html"));this.$el.html(e());1===this.$("#switcher .thumbnail").length&&this.$("#switcher").hide();if(null!=this.options.product){n=_.template(t("../templates/"+this.options.product+".html"));this.$("#productarea").html(n())}else this.$("#switcher .thumbnail:first").click();return this};n.prototype.switchProduct=function(e){var n,r,s;n=$(e.currentTarget);n.siblings().removeClass("active");n.addClass("active");r=n.attr("data-product");s=_.template(t("../templates/"+r+".html"));return this.$("#productarea").html(s())};return n}(r.View);n.exports=s});