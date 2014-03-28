#!/usr/bin/ruby

# input the size of grid
def grid(input)
	#initialize arrays
	last = Array.new(input+1){1}
	current =  Array.new(input+1)
	#for every square over
	for i in 1..input
		current[0] = 1
		#for every square down
		for i in 1..input
			current[i] = last[i]+current[i-1]	
		end
		last = current
	end
	#return the final number
	return current[input]	
end

puts grid(2)
puts grid(20)
