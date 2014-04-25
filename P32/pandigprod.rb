#! /usr/bin/ruby

def isPan (multiplicand, multiplier, product)
	arr = multiplicand.to_s.chars.map(&:to_i)
	arr += multiplier.to_s.chars.map(&:to_i)
	arr += product.to_s.chars.map(&:to_i)
	return arr.sort == [1, 2, 3, 4, 5, 6, 7, 8, 9]
end

def run ()
	prodsArr = []
	for x in 100..99999
		for y in 2..Math.sqrt(x).floor
			next if x%y != 0
			z = x/y
			total = (Math.log10(x).to_i+1)+(Math.log10(y).to_i+1)+(Math.log10(z).to_i+1)
			next if total != 9
			if isPan(y, z, x)
				prodsArr << x
				break
			end	
		end
	end
	puts total(prodsArr)
end

def total(prodsArr)
	return prodsArr.inject{|sum,x| sum + x }
end

run()
