Backbone = require 'Backbone'

class LightBox extends Backbone.View

  template: _.template(require '../templates/LightBox.html')

  events: {}

  initialize: ->
    @$el.html @template()
    @$el.modal {show: true}

    @album = []
    @currentImageIndex = -1

  render: => @

module.exports = LightBox
