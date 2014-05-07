#! /usr/bin/ruby

def isPrime(x)
	if x == 2
		true
	end 
        for y in 2..Math.sqrt(x).ceil
                next if y%2 == 0
		if x%y == 0
                        return false
                end
        end
        return true
end

def nextComp(x)
	if isPrime(x+2)
		nextComp(x+2)
	else
		x+2
	end
end
 
def isConj(x)
	for y in 1..(x-1)
		if (x-2*(y*y))<2
			return false		
		elsif isPrime(x - 2*(y*y))
			return true
		end
	end
	return false 
end

def run()
	i = 9
	while true
		if isConj(i)
			i = nextComp(i)
		else 
			return i
		end
	end
end

puts run()
	
