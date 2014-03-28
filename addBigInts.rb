#!/usr/bin/ruby

#initialize total
total = 0

#open and read file
file = File.open('numbers').read

#remove carriage return chars
file.gsub!(/\r\n?/, "")

#for each line convert str to int
#and add to total
file.each_line do |line|
	total += line.to_i
end

#print the total for user
puts "The total of the big Ints in the file 'numbers' is: #{total}"
