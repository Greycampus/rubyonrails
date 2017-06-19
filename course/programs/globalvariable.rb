#!/usr/bin/ruby -w

$pi = 3.14159 #GLOBAL VARIABLE

puts "enter the radius"

radius = gets.chomp.to_f

area = $pi * radius * radius

puts "Area of circle with radius #{radius} is #{area}"