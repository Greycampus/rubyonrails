#!/usr/bin/ruby -w

puts "Enter the height of pyramid"

a = gets.chomp.to_i

i = 1

while i <= a
	j = 1
	while j <= i 
		print "1"
		j = j + 1
	end
	puts ""
	i = i + 1
end 