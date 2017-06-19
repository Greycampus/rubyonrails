#!/usr/bin/ruby -w

puts "Enter the number of students"

a = gets.chomp.to_i
 
details = Array.new

puts "Enter the details of students"

while a > 0
	b =  gets.chomp.split(" ")
	details.push(b)
	a = a - 1
end

details.sort_by!{ |x| [ x[1] , x[0] ] }

mark = details.collect{ |x| x[1]}.sort[2]

details.each{
	|x|
	if x[1] == mark
		puts x[0]
	end
}

