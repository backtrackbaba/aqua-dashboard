current_valuation = 0
current_karma = 0

SCHEDULER.every '2s' do
  last_valuation = current_valuation
  last_karma     = current_karma
  current_valuation = (rand(0.6000...0.8000))
  current_karma     = rand(200000)

  send_event('valuation', { current: current_valuation.round(2), last: last_valuation })
  send_event('karma', { current: current_karma, last: last_karma })
  send_event('synergy',   { value: (rand(0.20...0.50)*100).round(1) })
end