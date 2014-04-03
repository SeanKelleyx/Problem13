#! /usr/bin/ruby

def getPerms(x, y)
	perms = (x..y).to_a.permutation.map(&:join)
	return perms
end

puts getPerms(0, 9)[999999]
