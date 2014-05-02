#! /usr/bin/ruby

def getWords()
	f=File.open("words.txt", "r")
	words = []
	f.each_line do |line|
		line.strip!
		line.delete!('"')
		words += line.split(',').map(&:to_s)
	end
	return words
end

def getScoreCard()
	card = [*('A'..'Z')]
	card = Hash[card.map.with_index.to_a]
	return card
end

def getWordScores(scoreHash, wordArr)
	scored = []
	for word in wordArr
		tempscore = 0
		word.split("").each do |i|
			tempscore += scoreHash[i]+1
		end
		scored << tempscore
	end
	return scored
end

def getTriNums()
	tris = []
	for x in 1..1000
		tris << (x * 0.5)*(x + 1)
	end
	return tris
end

def countTriWords(scored, tris)
	total = 0
	for x in scored
		if tris.include?(x)
			total += 1
		end
	end
	return total
end

puts countTriWords(getWordScores(getScoreCard(),getWords()), getTriNums())
