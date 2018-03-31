# :first_in sets how long it takes before the job is first run. In this case, it is run immediately

SCHEDULER.every '1s', :first_in => 0 do |job|
  send_event('chlorine', { value: (rand(0.1...0.5)*10).round(2) })
end