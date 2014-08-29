Backbone = require 'Backbone'
require 'bry4n/backbone-shortcuts'

class LightBox extends Backbone.View

  template: _.template(require '../templates/LightBox.html')

  events:
    'click .lb-prev': 'showPrevious'
    'click .lb-next': 'showNext'

  shortcuts:
    'left': 'showPrevious'
    'right': 'showNext'
    'esc': 'dismiss'

  initialize: ->
    @images = []
    @currentImageIndex = -1
    @$el.html @template()

    # Set up shortcuts
    _.extend(@, new Backbone.Shortcuts)
    @delegateShortcuts()

    # Show the modal
    @$el.modal {show: true}

  render: => @

  updateNavButtons: ->
    if @currentImageIndex <= 0
      @$('.lb-prev').hide()
    else
      @$('.lb-prev').show()

    if @currentImageIndex >= @images.length - 1
      @$('.lb-next').hide()
    else
      @$('.lb-next').show()

  showAlbum: (images, currentImageIndex) =>
    @currentImageIndex = currentImageIndex
    @images = images
    @updateNavButtons()
    @$('.modal-body img').attr('src', @images[@currentImageIndex])

  showPrevious: =>
    return if @currentImageIndex <= 0
    @currentImageIndex -= 1
    @updateNavButtons()
    @$('.modal-body img').attr('src', @images[@currentImageIndex])

  showNext: =>
    return if @currentImageIndex >= @images.length - 1
    @currentImageIndex += 1
    @updateNavButtons()
    @$('.modal-body img').attr('src', @images[@currentImageIndex])

  dismiss: =>
    @$('.close').click()

module.exports = LightBox
