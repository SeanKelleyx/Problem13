#! /usr/bin/ruby


def test(x, y)
	x1 = x.to_s.chars.map(&:to_i)
	y1 = y.to_s.chars.map(&:to_i)
	if y1[1]== x1[0] 
		y2 = y1[0]
		x2 = x1[1]  
		if (x/(y*1.0)) == (x2/(y2*1.0))
			return [x, y]
		end
	elsif y1[0] == x1[1]
		y2 = y1[1]
		x2 = x1[0]
		if (x/(y*1.0)) == (x2/(y2*1.0))
			return [x, y]
		end
	end
end

def getArr()
	arr =[]
	for y in 10..99
		next if y%10 == 0
		for x in 10..y-1
			next if x%10 == 0
			arr << test(x, y)
		end
	end
	return arr.compact
end

def getprod(arr)
	num = 1
	denom = 1
	for x in arr
		num *= x[0]
		denom *= x[1]
	end
	frac = Rational(num, denom)
	return frac
end

puts getprod(getArr())
