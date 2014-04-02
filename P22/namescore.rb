#!/usr/bin/ruby

#return all names in names.txt as an array
def getNames()
	#open file
	f = File.open("names.txt", "r")
	#initialize namear array
	namear = []
	f.each_line do |line|
		#remove '"' and line escapes
		line = line.gsub(/"/,'').strip
		#split the line into individual names separating at ','
		namear = line.split(',')
	end
	#close file
	f.close
	#return array
	return namear
end

#return alphabet hash to use to score letters
def getScoreCard()
	#create array A to Z
	card = [*('A'..'Z')]
	#convert array to Hash
	card = Hash[card.map.with_index.to_a]
	#return hash
	return card
end

#return sorted array
def sortArray(arr)
	return	arr.sort!
end

#return array of letter scores for each name
def getLetScoreArr(scoreHash,nameArray)
	#init scored array
	scored=[]
	#for each name
	for name in nameArray 
		#init/reset temp score to 0
		tempscore = 0
		#split name to chars
		name.split("").each do |i|
			#add score of each char to tempscore
			tempscore += scoreHash[i]+1 
		end
		#add this name's tempscore to the scored array
		scored << tempscore
	end
	#return scored array
	return scored
end

#return array of name scores where letter score is multiplied by alphabetic position
def getListPosScore(letScoreArray)
	#initialize finalArr array
	finalArr = []
	#for each letter score in array
	for i in 0..letScoreArray.length-1
		#add letterScore * position to finalArr
		finalArr << (i+1) * letScoreArray[i]
	end
	#return finalArr array
	return finalArr	
end

#return total of all numbers in array
def totalArray(scoreArr)
	#initialize total
	total = 0
	#for each number in array
	for num in scoreArr
		#add number to total 
		total += num
	end
	#return total
	return total
end


puts totalArray(getListPosScore(getLetScoreArr(getScoreCard, sortArray(getNames))))

