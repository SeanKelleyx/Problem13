#! /usr/bin/ruby

#set array
array = []
#for every a
for a in 2..100
	#for every b
	for  b in 2..100
		#add term to array
		array << a**b
	end
end
#remove duplicate terms
array = array.uniq
#print the count of terms in the array
puts array.count
