#!/usr/bin/ruby -w

puts "Enter the number of students"

a = gets.chomp.to_i

marks = Array.new 


while a > 0
	puts "Enter the details of student"
	b = gets.chomp.split(" ")
	marks.push(b)
	a = a - 1
end

puts "Enter the name of the student whose details are to be displayed"

c = gets.chomp.to_s

marks.each{
	|x|
	if x[0] == c
		total = x[1].to_i + x[2].to_i + x[3].to_i
		puts "Precentage of #{c} is #{total/3}"
	end
}
