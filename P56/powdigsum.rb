#! /usr/bin/ruby

def sumdigits(num)
	num = num.to_s.chars.map(&:to_i)
	return num.inject{|sum,x| sum + x}
end

def run()
	best = 0
	for a in 1..99
		for b in 1..99
			c = sumdigits(a**b)
			if c > best
				best = c
			end
		end
	end
	best
end

puts run()
