#!/usr/bin/ruby -w

puts "Enter the number of elements"

a = gets.chomp.to_i

num = Array.new

puts "Enter the elements"

while (a > 0)
	num.push(gets.chomp.to_i)
	a = a - 1
end

p num.uniq!