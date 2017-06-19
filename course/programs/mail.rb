#!/usr/bin/ruby -w

puts "enter the data"

data = gets.chomp.to_s

puts data.scan(/\b[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,}\b/i)