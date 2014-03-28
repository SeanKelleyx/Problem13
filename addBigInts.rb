#!/usr/bin/ruby

total = 0
file = File.open('numbers').read
file.gsub!(/\r\n?/, "")
file.each_line do |line|
	total += line.to_i
end
puts "The total of the big Ints in the file 'numbers' is: #{total}"
