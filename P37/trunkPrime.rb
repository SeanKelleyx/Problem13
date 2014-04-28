#! /usr/bin/ruby

def isPrime(x)
	if x == 1
		return false
	end
        for y in 2..Math.sqrt(x).ceil
                if x%y == 0
                        return false
                end
        end
        return true
end

def getReverse(x)
        return x.to_s.reverse.to_i
end

def toarr(x)
	return x.to_s.chars.map(&:to_i)
end

def toint(arr)
	return arr.inject{|a,i| a*10 + i}
end

def run 
	total = 0
	count = 0
	i = 10
	while count < 11
		if isPrime(i)
			ia = toarr(i)
			revia = toarr(i)
			add = true
			while ia.length > 1
				ia.shift
				revia.delete_at(revia.length-1)
				if !isPrime(toint(ia)) || !isPrime(toint(revia))
					add = false
					break
				end
			end
			if add
				puts i
				total += i
				count += 1
			end
		end
		i += 1
	end	
	puts total
end

run()
