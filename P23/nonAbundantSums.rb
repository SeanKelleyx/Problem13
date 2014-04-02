#! /usr/bin/ruby

#return array from csv file
def getAbundants()
	#open file
	f = File.open("abundants.csv", "r")
	#initialize array
	abs = []
	f.each_line do |line|
		#remove line escape
		line = line.strip
		#split into array at ,'s
		abs = line.split(',').map(&:to_i)
	end
	#close file
	f.close
	#return array
	return abs
end

#return true if n cannot be sum of two abundant nums false if not
def nonSumAb(n, abs)
	#for evey ab in abs
	for i in abs
		#if it can be added to another abundant to get n
		if abs.include? n-i
			#return value false
			return false	
		end
	end
	#if no abundants can be added to get n return true
	return true
end

#total all numbers under cap that cant be sum of two abundants
def totNonAbSums(cap)
	#init total
	total = 0
	#init abs
	abs = getAbundants()
	#for every number up to cap
	for i in cap.downto(1)
		#reduce abs by removing numbers higher than i
		abs = abs.reject {|x| x > i}
		#if i is not a sum of abundants
		if nonSumAb(i, abs)
			#add i to total
			total += i
		end
	end
	#return total
	return total
end

puts totNonAbSums(28123)
