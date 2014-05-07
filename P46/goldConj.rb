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
	elsif isComp(x+2)
		x+2
	else
		nextComp(x+2)
	end
end
 
def isComp(x)
	for y in 1..


	for y in 1..x
		if isPrime(x - 2*(y*y))
			return true
		elsif
		end
 
end

def run()
	
