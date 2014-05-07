#!/usr/bin/ruby

t = []
p = []
h = []

100000.times do |i|
  t[i] = i * (i + 1) / 2
  p[i] = i * (3 * i - 1) / 2
  h[i] = i * (2 * i - 1)
end

puts t & p & h
