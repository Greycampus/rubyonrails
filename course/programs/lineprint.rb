#!/usr/bin/ruby -w

f = File.open("read.txt", "r")


puts "Enter the line number to be printed"

a = gets.chomp.to_i

count = 0
check = 1

f.each_line{
	| line |
	if count == a
		puts line
		check = 0 
	end
	count = count + 1
}

if check == 1
	puts "No data"
end