#!/usr/bin/ruby

def thousandDig()
	count = 1
	current, last = 1, 0
	while current.to_s.length < 1000
		last, current = current, last + current
		count +=1
	end
	return count
end

puts thousandDig()
