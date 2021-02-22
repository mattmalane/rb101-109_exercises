def initialize_switch(num)
  switch_bank = []

  (1..num).each do |switch_num|
    switch_bank << [switch_num, false]
  end
  switch_bank
end

def lights_on(num)
  switches = initialize_switch(num)
  round = 1
  lights = num

  loop do
    sequence = Array.new(1, round) # => [1,2,3,4,5]
    lights.times {sequence << sequence.last + round}
    
    switches.each do |switch|
      if sequence.include?(switch[0])
        switch[1] = !switch[1]
      end
    end

    round += 1
    break if round > lights
  end

  lights_on = Array.new
  arr = switches.select {|subarr| subarr[1] == true}
  arr.each {|subarr| lights_on << subarr[0]}
  lights_on
end

