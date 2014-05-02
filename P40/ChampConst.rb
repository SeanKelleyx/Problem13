#! /usr/bin/ruby

def getNums()
	arr = [0]
	x = 10
	while arr.length < 1000002
		arr += x.to_s.chars.map(&:to_i)
		x +=1
	end
	return arr
end

def run()
	arr = getNums()
	return arr[1]*arr[10]*arr[100]*arr[1000]*arr[10000]*arr[100000]*arr[1000000]
end	

puts run()
