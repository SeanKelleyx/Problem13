#! /usr/bin/ruby

def isPalindrome(x,y)
	if x == y 
		return true
	end
	return false
end

def toBin(x)
	return x.to_s(2).to_i
end

def getReverse(x)
	return x.to_s.reverse.to_i
end

def run()
	total = 0
	for i in 1..1000000
		ib = toBin(i)
		next if ib%10 == 0
		if i == getReverse(i) && ib == getReverse(ib)
			total += i
		end
	end
	puts total
end 

run()
