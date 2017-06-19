#!/usr/bin/ruby -w

puts "Enter the Input"

a = gets.chomp.to_i

n = gets.chomp.to_i

char = "a"

check = 0

c = 1

while check < a
	i = 0
	while i < n/2
		print "-"
		i = i + 1
	end
	j = 0
	while j < c
		print "#{char}"
		j = j + 1
	end 
	c = c + 2
	char.next!
	i = 0
	while i < n/2
		print "-"
		i = i + 1
	end
	puts "\n"
	check = check + 1
	n = n - 2
end


check1 = 0
char = (char.ord-1).chr
c = c - 4

while check1 < a - 1
	char = (char.ord-1).chr
	k = 0
	while k <  i + 1
		print "-"
		k = k + 1  
	end
	j = 0
	while j < c
		print "#{char}"
		j = j + 1
	end
	c = c - 2
	k = 0 
	while k < i + 1
		print "-"
		k = k + 1  
	end
	print "\n"
	check = check + 1
	check1 = check1 + 1
	i = i + 1
end
