#!/usr/bin/ruby

puts "Enter the String"

str = gets.chomp.to_s

puts "Enter a number"

n = gets.chomp

count = 0

0.upto(str.length) do |val|
	if n == str[val]
		count = count + 1
	end
end

puts "Occurences : #{count}"