#!/usr/bin/ruby -w

def fact(n)
	if n == 1 or n == 0
		return 1
	else 
		return n * fact(n-1)
	end
end


puts "Enter the number"

n = gets.chomp.to_i

puts "Factorial of #{n} is #{fact(n)}"