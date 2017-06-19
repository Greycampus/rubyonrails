#!/usr/bin/ruby -w

def armstrong (num)
	sum = 0
	copy = num
	while num > 0
		temp = num % 10
		sum = sum + ( temp * temp *temp )
	end
	if copy == num
		return 1
	else
		return 0
	end
end

puts "Enter a number"

a = gets.chomp.to_i

if (arm(a))
	puts "armstrong number"
else
	puts "not a armstrong number"

