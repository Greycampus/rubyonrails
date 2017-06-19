#!/usr/bin/ruby -w

def vote(a)
	i = 0
	result = Array.new
	while i < a.length
		result.push(a[i])
		i = i + 1
	end
	b = Hash.new(0)
	result.each{
		|x|
		b[x] += 1
	}

	result = (b.sort_by { |keys,values| values }.reverse).to_a
	p result

end

puts "Enter the string"

a = gets.chomp.to_s

vote(a)