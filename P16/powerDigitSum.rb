#!/usr/bin/ruby

def powerDigit(x,y)
	return x**y
end
def digitSum(input)
	total = 0
	input = input.to_s
	for i in 0..input.length-1
		total += input[i].to_i
	end
	return total
end

puts digitSum(powerDigit(2, 1000))
