#!/usr/bin/ruby -w

puts "Enter the number"

n = gets.chomp.to_i

minn = Math.log(n,3).floor

maxn = Math.log(n,3).ceil


if (n - 3**minn) <= (3**maxn - n)
	puts 3**minn
else
	puts 3**maxn
end



