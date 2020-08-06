# :first_in sets how long it takes before the job is first run. In this case, it is run immediately
=begin
delay = '100s'

SCHEDULER.every delay, :first_in => 0 do |job|
  send_event('chlorine', { value: (rand(0.1...0.5)*10).round(2) })
end

SCHEDULER.every delay, :first_in => 0 do |job|
  send_event('pool_temp', { value: (rand(20...30)).round(2) })
end

SCHEDULER.every delay, :first_in => 0 do |job|
  send_event('ph', { last: (rand(0.72...0.78)*10).round(2), current: (rand(0.72...0.78)*10).round(2) })
end

SCHEDULER.every delay, :first_in => 0 do |job|
  send_event('uv', { status: "ON" })
end

SCHEDULER.every delay, :first_in => 0 do |job|
  send_event('ozone', { status: "OFF" })
end

=end