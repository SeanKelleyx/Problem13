#! /usr/bin/ruby

def getArrInts(cap)
	return [*(1..cap)]
end

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

def allAbundantSums(cap)
	all = []
        abs = getAbundants()
        for i in abs
                for j in abs
                        if i + j > cap
                                break
                        else
                                all << i+j
                        end
                end
        end
        return all.uniq
end

def totalArray(arr)
        total = 0
        for i in arr
                total += i
        end
        return total
end

def getIntTots(cap)
	total = 0
	for i in 1..cap
		total += i
	end
	return total
end

def nonAbSum(cap)
	
	allabs = allAbundantSums(cap)
	return getIntTots(cap)-totalArray(allabs)
end

puts nonAbSum(28123)
