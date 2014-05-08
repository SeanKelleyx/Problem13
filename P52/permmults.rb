#! /usr/bin/ruby

def getArr(x)
	return x.to_s.chars.map(&:to_i)
end

def main()
	i = 1
	while true
		one = getArr(i)
		two = getArr(i*2)
		three = getArr(i*3)
		four = getArr(i*4)	
		five = getArr(i*5)
		six = getArr(i*6)
		if two - one == [] &&
			three - one == [] &&
			four - one == [] &&
			five - one == [] &&
			six - one == []
			return i
		end
		i += 1
	end
end

puts main()	
