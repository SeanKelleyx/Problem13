#! /usr/bin/ruby

def isEven?(x)
	return Math.sqrt(x)%1 == 0
end

def equalsPerim?(a, b, c, perim)
	return a + b + c == perim
end

def getCsq(a, b)
	return a**2 + b**2
end

def getRt(x)
	return Math.sqrt(x)
end

def getNumSols(perim)
	total = 0 
	for a in 1..(perim-1)
		for b in 1..(a-1)
			next if !isEven?(getCsq(a, b))
			c = getRt(getCsq(a, b))
			if equalsPerim?(a,b,c,perim)
				total += 1
			end
		end
	end
#	puts "#{perim} -- #{total}"
	return total
end

def getBestPerim(topend)
	best = 0
	bestSols = 0
	for x in 3..topend
		thisSol = getNumSols(x)
		if thisSol > bestSols
			best = x
			bestSols = thisSol
		end
	end
	return best
end

puts getBestPerim(1000)

