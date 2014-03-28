#!/usr/bin/ruby

def grid(input)
	last = Array.new(input+1){1}
	current =  Array.new(input+1)
	for i in 1..input
		current[0] = 1
		for i in 1..input
			current[i] = last[i]+current[i-1]	
		end
		last = current
	end
	return current[input]	
end

puts grid(2)
puts grid(20)
