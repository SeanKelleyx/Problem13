#! /usr/bin/ruby

def isEven?(x)
	return Math.sqrt(x)%1 == 0
end

def getPerim(a, b, c)
	return a + b + c 
end

def getCsq(a, b)
	return a*a + b*b
end

def getRt(x)
	return Math.sqrt(x)
end

def getNumSols(perim)
	total = 0 
	for a in 2..(perim/3)
		for b in a+1..(perim/2)
			cSq = getCsq(a,b)
			next if !isEven?(cSq)
			c = getRt(cSq)
			test = getPerim(a,b,c)
			if test == perim
				total += 1
			elsif test > perim
				break
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

