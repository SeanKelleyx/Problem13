#! /usr/bin/ruby

def mainFunc(topend)
	array = []
	for x in 10..topend
		x1 = convert(x)
		if isSumDigits(x1)
			array << x
		end
	end
	return totalArr(array)
end

def convert(x)
	return x.to_s
end

def isSumDigits(conX)
	total = 0
	conX.split("").each do |i|
		total += i.to_i**5
	end
	if total == conX.to_i
		return true
	end
	return false
end

def totalArr(arr)
	total = 0 
	for x in arr
		total += x
	end
	return total
end

puts mainFunc(10000000)
