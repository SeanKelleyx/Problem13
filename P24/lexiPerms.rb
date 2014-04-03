#! /usr/bin/ruby

#return array of all permutations (in lexi order)
def getPerms(x, y)
	perms = (x..y).to_a.permutation.map(&:join)
	return perms
end

#print the 1000000th permutation
puts getPerms(0, 9)[999999]
