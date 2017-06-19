#!/usr/bin/ruby -w

puts "enter the string"

str = gets.chomp.to_s

sum = str.scan(/[0-9]/)

total = 0

sum.each{ |x| total += x}

puts total