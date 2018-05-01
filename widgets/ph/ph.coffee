class Dashing.Ph extends Dashing.Widget
  @accessor 'current', Dashing.AnimatedValue

  @accessor 'difference', ->
    if @get('last')
      last = parseFloat(@get('last'))
      current = parseFloat(@get('current'))
      if last != 0
        diff = Math.abs(Math.round((current - last) / last * 100))
        "#{diff}%"
    else

  @accessor 'arrow', ->
    if @get('last')
      if parseFloat(@get('current')) > parseFloat(@get('last')) then 'fa fa-arrow-up' else 'fa fa-arrow-down'

  onData: (data) ->
    if data.status
      # clear existing "status-*" classes
      $(@get('node')).attr 'class', (i,c) ->
        c.replace /\bstatus-\S+/g, ''
      # add new class
      $(@get('node')).addClass "status-#{data.status}"

 
    @accessor 'is1', ->
      @get('current') == 1
      
    @accessor 'is2', ->
      @get('current') == 2
    
    @accessor 'is3', ->
      @get('current') == 3
      
    @accessor 'is4', ->
      @get('current') == 4

    @accessor 'is5', ->
      @get('current') == 5
      
    @accessor 'is6', ->
      @get('current') == 6

    @accessor 'is7', ->
      @get('current') == 7
      
    @accessor 'is8', ->
      @get('current') == 8

    @accessor 'is9', ->
      @get('current') == 9
      
    @accessor 'is10', ->
      @get('current') == 10

    @accessor 'is11', ->
      @get('current') == 11
      
    @accessor 'is12', ->
      @get('current') == 12

    @accessor 'is13', ->
      @get('current') == 13
      
    @accessor 'is14', ->
      @get('current') == 14

  @accessor 'value', Dashing.AnimatedValue


#data-addclass-one="is1"
