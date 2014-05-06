#! /usr/bin/ruby

def getTris()
        tris = []
        for x in 286..50000
                tris << (x*(x+1))/2
        end
        return tris
end

def getPents()
        pents = []
        for x in 165..35000
                pents << (x*((3*x)-1))/2
        end
        return pents
end

def getHex()
        hex = []
        for x in 143..25000
                hex << x*((2*x)-1)
        end
        return hex
end

def run()
	tri = getTris()
	puts tri[tri.length-1]
	pent = getPents()
	puts pent[pent.length-1]
	hex = getHex()
	puts hex[hex.length-1]
	puts "got nums checking arrs"
	for x in tri
		if pent.include?(x) && hex.include?(x)
			return x
		else
			pent.reject!{|y| y < x}
			hex.reject!{|y| y < x}
		end
	end
	return "you need to step up your ciel"
end

puts run()
