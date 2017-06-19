#!/usr/bin/ruby -w

puts "enter the string"

str = gets.chomp.to_s

puts "String before modification : #{str}"

str.gsub!(/[\!\*]/," replaced ")

puts "String after modification : #{str}"