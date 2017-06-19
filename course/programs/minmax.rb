#!/usr/bin/ruby -w

puts "Enter the coefficients of the function"

a = gets.chomp

coef = Array.new(0)

coef = a.split(" ").map(&:to_f )

if coef[0] > 0
	puts "Minimum value of function is #{(-coef[1])/(2*coef[0])}"
else 
	puts "Maximum value of function is #{(-coef[1])/(2*coef[0])}"
end
