#!/usr/bin/ruby

#function returns x to the power of y
def powerDigit(x,y)
	return x**y
end

#returns the sum of all digits in the input number
def digitSum(input)
	#initialize total
	total = 0
	#initialize input as string
	input = input.to_s
	#for every digit...
	for i in 0..input.length-1
		#add digit as int to total
		total += input[i].to_i
	end
	#return the total
	return total
end

puts digitSum(powerDigit(2, 1000))
