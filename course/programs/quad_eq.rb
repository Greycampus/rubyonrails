#!/usr/bin/ruby -w

puts "Enter the coefficients of the quadratic equation"

puts "Enter the coefficient of X^2"

a = gets.chomp.to_f

puts "Enter the coefficient of X"

b = gets.chomp.to_f

puts "Enter the coefficient of constant"

c = gets.chomp.to_f

d = (b*b) - 4 * a * c

if d > 0
	puts "Roots are real and unequal"
	puts "Roots are #{(-b + Math.sqrt(d))/(2 *a)}"
elsif d == 0
	puts "Roots are real and equal"
	puts "Roots are #{(-b + Math.sqrt(d))/(2 *a)} , #{(-b - Math.sqrt(d))/(2 *a)}"
else
	puts "Roots are irrational"