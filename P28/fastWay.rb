#! /usr/bin/ruby

#the stupid fast version
x = ARGV[0].to_i
n = (x-1)/2
puts 8*n*(n+1)*(2*n+1)/3+2*n*(n+1)+4*n +1
