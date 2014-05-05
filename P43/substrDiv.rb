#! /usr/bin/ruby

def getPandigitals()
        perms = (0..9).to_a.permutation.map(&:join)
	return perms
end

def isDiv(num)
	q = num[1, 3].to_i % 2 == 0
	w = num[2, 3].to_i % 3 == 0
	e = num[3, 3].to_i % 5 == 0
	r = num[4, 3].to_i % 7 == 0
	t = num[5, 3].to_i % 11 == 0
	y = num[6, 3].to_i % 13 == 0
	u = num[7, 3].to_i % 17 == 0
	return q && w && e && r && t && y && u
end

def run()
	perms = getPandigitals()
	total = 0 
	for perm in perms
		next if perm[0] == "0"
		if isDiv(perm) 
			total += perm.to_i
		end
	end
	return total
end

puts run()
