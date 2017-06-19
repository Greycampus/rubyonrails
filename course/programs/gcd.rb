#!/usr/bin/ruby -w

def gcd(a,b)
	while a != b
		if a > b
			return gcd(a - b,b)
		else
			return gcd(a , b - a)
		end
	end
	return a
end

puts "Enter the numbers whose G.C.D is to be found"

a = gets.chomp.to_i

b = gets.chomp.to_i

result = gcd a,b

puts "G.C.D of #{a} , #{b} is #{result}"

