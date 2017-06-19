#!/usr/bin/ruby -w

puts "enter the string"

str = gets.chomp.to_s

puts "Enter the symbol to be searched"

smbl = gets.chomp

count = str.scan(/#{smbl}/)

puts count.length
