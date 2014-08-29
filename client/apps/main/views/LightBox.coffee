Backbone = require 'Backbone'

class LightBox extends Backbone.View

  template: _.template(require '../templates/LightBox.html')

  events: {}

  initialize: ->
    @$el.html @template()
    @$('.modal-body').html """
        <img src="images/quiver/screenshot1.jpg" alt="">
      """
    @$el.modal {show: true}

  render: => @

module.exports = LightBox
