#! /usr/bin/ruby

array = []
for a in 2..100
	for  b in 2..100
		array << a**b
	end
end
array = array.uniq
puts array.count
