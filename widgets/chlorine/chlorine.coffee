class Dashing.Chlorine extends Dashing.Widget

  ready: ->
    # This is fired when the widget is done being rendered

  onData: (data) ->
    # Handle incoming data
    # You can access the html node of this widget with `@node`
    # Example: $(@node).fadeOut().fadeIn() will make the node flash each time data comes in.


  @accessor '0p5', ->
    @get('value') <= 0.5
    
  @accessor '1p0', ->
    @get('value') > 0.5 && @get('value') <= 1.0
  
  @accessor '1p5', ->
    @get('value') > 1.0 && @get('value') <= 1.5
    
  @accessor '2p0', ->
    @get('value') > 1.5 && @get('value') <= 2.0
  
  @accessor '2p5', ->
    @get('value') > 2.0 && @get('value') <= 2.5
  
  @accessor '3p0', ->
    @get('value') > 2.5 && @get('value') <= 3.0
  
  @accessor '3p5', ->
    @get('value') > 3.0 && @get('value') <= 3.5
  
  @accessor '4p0', ->
    @get('value') > 3.5 && @get('value') <= 4.0
  
  @accessor '4p5', ->
    @get('value') > 4.0 && @get('value') <= 4.5
  
  @accessor '5p0', ->
    @get('value') > 4.5 && @get('value') <= 5.0

  @accessor 'value', Dashing.AnimatedValue

 
 #data-addclass-fourp5="4p5"