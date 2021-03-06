class Dashing.Switch extends Dashing.Widget

  ready: ->
    # This is fired when the widget is done being rendered

  onData: (data) ->
    # Handle incoming data
    # You can access the html node of this widget with `@node`
    # Example: $(@node).fadeOut().fadeIn() will make the node flash each time data comes in.

  @accessor 'isOn', ->
    @get('status') == "ON"

  @accessor 'isOff', ->
    @get('status') == "OFF"