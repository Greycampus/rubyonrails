#!/usr/bin/ruby -w

puts "Enter the year"

a = gets.chomp.to_i

if (a % 4 == 0 && a % 100 != 0) || a % 400 == 0
	puts "#{a} is a leap year"
else 
	puts "#{a} is not a leap year"
end