#! /usr/bin/ruby

#load the triangle from the tri.csv file
def getTri()
	#open file
	f=File.open("tri.csv", "r")
	#init tri array
	tri = []
	#for each line
	f.each_line do |line|
		#strip end line chars
		line.strip!
		#read into array of fixnum
		tri << line.split(',').map(&:to_i)
	end
	#close file
	f.close
	#return triangle array
	return tri
end

#return the largest sum path recursively
def getSumsByRow(tri, row)
	#for every element in current line
	for i in 0..tri[row].length-1
		#add to the lagest of the child nodes
		tri[row][i] += [tri[row+1][i], tri[row+1][i+1]].max
	end
	#if the row only has one element
	if tri[row].length == 1
		#return it
		return tri[row][0]
	else
		#or else recurse 
		return getSumsByRow(tri, row-1)
	end
end

tri = getTri()
puts getSumsByRow(tri, tri.length-2)
