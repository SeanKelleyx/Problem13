#! /usr/bin/ruby

# returns the factorial of number x
def fact(x)
        #initialize total to 1
        fact = 1
        #for each number in x
        for i in 1..x
                #multiply total by number
                fact *= i
        end
        #return factorial
        return fact
end

def run()
	totArr = [145]
	for x in 40000..50000
		xArr = x.to_s.chars.map(&:to_i)
		tot = 0
		for y in xArr
			tot += fact(y)
		end
		if tot == x
			totArr << x
		end
	end
	return total(totArr)
end

def total (arr)
	return arr.inject{|sum,x| sum + x}
end

puts run()
