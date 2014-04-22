#! /usr/bin/ruby

def makeArr()
	coins = [1,2,5,10,20,50,100,200]
	arr = []
	for x in 1..200
		arr += coins.repeated_combination(x).to_a
	end
	return arr
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
end

def getCount(arr)
	return arr.count
end

getCount(getTotals(makeArr()))
