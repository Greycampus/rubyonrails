#!/usr/bin/ruby -w

puts "Enter a number"

a = gets.chomp.to_i

if a % 2 != 0
	puts "#{a} is a odd number"

	if a % 9 == 0
		puts "#{a} is also a multiple of 9"
	end
else
	puts "#{a} is a even number"
end