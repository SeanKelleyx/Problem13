#! /usr/bin/ruby

sequenceLength = 0

for x in 1000.downto(1)
	if (sequenceLength >= x)
		break
	end
	foundRemainders = [x]
	value =1
	position = 0
	while (foundRemainders[value] == 0 && value != 0)
		foundRemainders[value] = position
		value *= 10
		value %= x
		position += 1
	end
	if (position - foundRemainders[value] > sequenceLength)
		sequenceLength  = position - foundRemainders[value]
	end
end
puts sequenceLength
	
	
