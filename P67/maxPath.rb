#! /usr/bin/ruby

def getTri()
	f=File.open("tri.txt", "r")
	tri = []
	f.each_line do |line|
		line.strip!
		tri << line.split(' ').map(&:to_i)
	end
	f.close
	return tri
end

def getSumsByRow(tri, row)
	for i in 0..tri[row].length-1
		tri[row][i] += [tri[row+1][i], tri[row+1][i+1]].max
	end
	if tri[row].length == 1
		return tri[row][0]
	else
		return getSumsByRow(tri, row-1)
	end
end

tri = getTri()
puts getSumsByRow(tri, tri.length-2)
