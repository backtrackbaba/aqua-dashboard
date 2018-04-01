class Dashing.Alert extends Dashing.Widget

  ready: ->
    # This is fired when the widget is done being rendered

  onData: (data) ->
    # Handle incoming data
    # You can access the html node of this widget with `@node`
    # Example: $(@node).fadeOut().fadeIn() will make the node flash each time data comes in.


  @accessor 'isTooHigh', ->
    @get('value') > 3.2
    
  @accessor 'isMedium', ->
    @get('value') > 2 && @get('value') < 3.2
  
  @accessor 'isLow', ->
    @get('value') < 2
  
  @accessor 'value', Dashing.AnimatedValue

 