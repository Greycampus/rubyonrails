#!/usr/bin/ruby -w

puts "Enter the co-efficients of the quadratic equation"

a = gets.chomp.to_f

b = gets.chomp.to_f

c = gets.chomp.to_f

begin 
	d = (b * b) - (4 * a * c)
	if d < 0
	end

rescue
		puts "Roots are imaginary"
end	