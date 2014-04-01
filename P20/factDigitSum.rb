#! /usr/bin/ruby

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

def fact(x)
	total = 1
	for i in 1..x
		total *= i
	end
	return total
end

puts digitSum(fact(100))
