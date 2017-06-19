#!/usr/bin/ruby -w

puts "Enter the Percentage"

a = gets.chomp.to_i


if a > 85
	puts "GRADE AWARDED : A"
elsif a > 80 and a <=85
	puts "GRADE AWARDED : A-"
elsif a > 70 and a <=80
	puts "GRADE AWARDED : B"
elsif a > 60 and a <=70
	puts "GRADE AWARDED : C"
elsif a > 40 and a <=60
	puts "GRADE AWARDED : D"
elsif a > 35 and a <=40
	puts "GRADE AWARDED : E"
else
	puts "Candidate Failed"
end
