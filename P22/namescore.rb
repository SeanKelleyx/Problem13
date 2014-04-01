#!/usr/bin/ruby

def getNames()
	f = File.open("names.txt", "r")
	namear = []
	f.each_line do |line|
		line = line.gsub(/"/,'').strip
		namear = line.split(',')
	end
	f.close
	return namear
end

def getScoreCard()
	card = [*('A'..'Z')]
	card = Hash[card.map.with_index.to_a]
	return card
end

def sortArray(arr)
	return	arr.sort!
end

def getLetScoreArr(scoreHash,nameArray)
	scored=[]
	for name in nameArray 
		tempscore = 0
		name.split("").each do |i|
			tempscore += scoreHash[i]+1 
		end
		scored << tempscore
	end
	return scored
end

def getListPosScore(letScoreArray)
	finalArr = []
	for i in 0..letScoreArray.length-1
		finalArr << (i+1) * letScoreArray[i]
	end
	return finalArr	
end

def totalArray(scoreArr)
	total = 0
	for num in scoreArr
		total += num
	end
	return total
end


puts totalArray(getListPosScore(getLetScoreArr(getScoreCard, sortArray(getNames))))

