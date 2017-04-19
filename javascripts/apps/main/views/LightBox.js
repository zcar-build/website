define("javascripts/apps/main/views/LightBox",["Backbone","bry4n/backbone-shortcuts","../templates/LightBox.html"],function(t,e,n){var r,o,s,i=function(t,e){return function(){return t.apply(e,arguments)}},a={}.hasOwnProperty,u=function(t,e){function n(){this.constructor=t}for(var r in e)a.call(e,r)&&(t[r]=e[r]);n.prototype=e.prototype;t.prototype=new n;t.__super__=e.prototype;return t};r=t("Backbone");t("bry4n/backbone-shortcuts");o=function(e){function n(){this.dismiss=i(this.dismiss,this);this.showNext=i(this.showNext,this);this.showPrevious=i(this.showPrevious,this);this.showAlbum=i(this.showAlbum,this);this.render=i(this.render,this);s=n.__super__.constructor.apply(this,arguments);return s}u(n,e);n.prototype.template=_.template(t("../templates/LightBox.html"));n.prototype.events={"click .lb-prev":"showPrevious","click .lb-next":"showNext"};n.prototype.shortcuts={left:"showPrevious",right:"showNext",esc:"dismiss"};n.prototype.initialize=function(){this.images=[];this.currentImageIndex=-1;this.$el.html(this.template());_.extend(this,new r.Shortcuts);this.delegateShortcuts();return this.$el.modal({show:!0})};n.prototype.render=function(){return this};n.prototype.updateNavButtons=function(){this.currentImageIndex<=0?this.$(".lb-prev").hide():this.$(".lb-prev").show();return this.currentImageIndex>=this.images.length-1?this.$(".lb-next").hide():this.$(".lb-next").show()};n.prototype.showAlbum=function(t,e){this.currentImageIndex=e;this.images=t;this.updateNavButtons();return this.$(".modal-body img").attr("src",this.images[this.currentImageIndex])};n.prototype.showPrevious=function(){if(!(this.currentImageIndex<=0)){this.currentImageIndex-=1;this.updateNavButtons();return this.$(".modal-body img").attr("src",this.images[this.currentImageIndex])}};n.prototype.showNext=function(){if(!(this.currentImageIndex>=this.images.length-1)){this.currentImageIndex+=1;this.updateNavButtons();return this.$(".modal-body img").attr("src",this.images[this.currentImageIndex])}};n.prototype.dismiss=function(){return this.$(".close").click()};return n}(r.View);n.exports=o});