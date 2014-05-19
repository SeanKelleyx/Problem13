#! /usr/bin/ruby

def getPents(top)
	pents = []
	for x in 1..top
		pents << x*((3*x)-1)/2
	end
	return pents
end

def checks(pents)
	solutions = []
	for x in 2..pents.length
		for y in 1..x
			if pents.include?(pents[x-1] + pents[y-1]) && pents.include?(pents[x-1] - pents[y-1])
				solutions << (pents[x-1] - pents[y-1]).abs
			end
		end
	end
	return solutions
end

puts checks(getPents(2000))
