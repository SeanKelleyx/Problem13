#! /usr/bin/ruby

total = 0
for i in 1..1000
	total += i**i
end
puts total % 10000000000
