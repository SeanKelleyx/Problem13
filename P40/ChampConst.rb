#! /usr/bin/ruby

def getNums()
	return (0..200000).map(&:to_s).join.chars.map(&:to_i)
end

def run()
	arr = getNums()
	return arr[1]*arr[10]*arr[100]*arr[1000]*arr[10000]*arr[100000]*arr[1000000]
end	

puts run()
