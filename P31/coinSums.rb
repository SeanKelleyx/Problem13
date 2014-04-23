#! /usr/bin/ruby

def makeArr()
	coins = [1,2,5,10,20,50,100,200]
	arr = []
	total = 0
	for x in 1..30
		#arr = coins.repeated_combination(x).to_a
		#total += getCount(getTotals(arr))
		arr += coins.repeated_combination(x).inject {|sum, n| sum +n}
		puts "after x = #{x}, the total is #{total}"
	end
	return total
end

def getTotals(arr)
	tot200 = []
	for array in arr
		total = 0
		for x in array
			total += x
		end
		if total == 200
			tot200 << total 
		end
	end
	return tot200
end

def getCount(arr)
	return arr.count
end

puts makeArr()
