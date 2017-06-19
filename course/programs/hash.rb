#!/usr/bin/ruby -w

puts "Enter the number of pairs"

a = gets.chomp.to_i

b = Hash.new

while a > 0
	puts "Enter the key"
	c = gets.chomp
	puts "Enter the value"
	d = gets.chomp
	b.store(c,d)
	a = a - 1
end

puts "Enter the key to be searched"

e = gets.chomp

puts "The value of key #{e} is #{b[e]}"


