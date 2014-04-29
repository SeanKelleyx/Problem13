#! /usr/bin/ruby

def run()
	best = 0
	for x in 1..9999
		test = ""
		i = 1
		while test.length < 9
			test += xtos(x, i)
			i += 1
		end
		if test.length = 9 && isPandigital(test) && test.to_i > best
			best = test.to_i
		end
	end
	return best
end

def xtos(x, y)
	return x*y.to_s
end

