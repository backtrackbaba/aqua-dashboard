=begin
current_valuation = 0
current_karma = 0
random_ph = 0
chlorine=0
status = "OFF"

SCHEDULER.every '2s' do
  #last_valuation = current_valuation
  last_ph = random_ph
  #last_karma     = current_karma
  #last_chlorine = chlorine
  #current_valuation = (rand(0.6000...0.8000))
  #current_karma     = rand(200000)
  random_ph = rand(0...14)
  #chlorine  = rand(0...14)

    

  send_event('chlorine', { value: (rand(0.00...0.49)*10).round(1)})
  send_event('ph', { current: random_ph, last: last_ph })
  send_event('pool_temp',   { value: (rand(0.20...0.50)*100).round(1) })
  #send_event('uv',   { status:  })

  #send_event('valuation', { current: current_valuation.round(2), last: last_valuation })
  #send_event('karma', { current: current_karma, last: last_karma })
  #send_event('synergy',   { value: (rand(0.20...0.50)*100).round(1) })
=end

