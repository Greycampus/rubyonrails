#!/usr/bin/ruby -w

puts "Example on operators"

puts "Enter a number"

a = gets.chomp.to_i

puts "Enter another number"

b = gets.chomp.to_i

puts "\n---------------"
puts "UNARY OPERATORS"
puts "---------------"

puts "\n! operator "
puts "\n"
puts "!#{a} : #{!a} "

puts "!0 : #{!0} "

puts "!true : #{!true}"

puts "!false : #{!false}"

puts "\n~ operator "
puts "\n"
puts "~#{a} : #{~a}"

puts "~(-#{a}) : #{~-a}"


puts "\n-------------------"
puts "Airthmetic Operator"
puts "-------------------"
 puts "\nadd operator\n"   
 puts "#{a} + #{b} = #{a + b}" 

 puts "\nsubtract operator\n"   
 puts "#{a} - #{b} = #{a - b}"

 puts "\nmultiply operator\n"   
 puts "#{a} * #{b} = #{a * b}" 

 puts "\ndivision operator\n"   
 puts "#{a} / #{b} = #{a / b}"

 puts "\nexponential operator\n"   
 puts "#{a} ** #{b} = #{a ** b}"

 puts "\nmodulo operator\n"   
 puts "#{a} % #{b} = #{a % b}"   

 puts "\n----------------"
 puts "Bitwise Operator"
 puts "----------------"
 puts "\n"

 puts "BINARY NOTATION OF #{a} : #{a.to_s(2)}"
 puts "BINARY NOTATION OF #{b} : #{b.to_s(2)}"

 puts "\nAND (&) Operator\n"
 puts "#{a.to_s(2)} & #{b.to_s(2)} = #{(a & b).to_s(2)}"

 puts "\nOR (|) Operator\n"
 puts "#{a.to_s(2)} | #{b.to_s(2)} = #{(a | b).to_s(2)}"

 puts "\nLEFT SHIFT (<<) Operator\n"
 puts "#{a.to_s(2)} << 2 = #{(a << 2).to_s(2)}"

 puts "\nRIGHT SHIFT (>>) Operator\n"
 puts "#{a.to_s(2)} >> 2 = #{(a >> 2).to_s(2)}" 

 puts "\nXOR (^) Operator\n"
 puts "#{a.to_s(2)} ^ #{b.to_s(2)} = #{(a ^ b).to_s(2)}"

 puts "\nCOMPLEMENT Operator (~) Operator\n"
 puts "~#{a.to_s(2)} = #{(~a).to_s(2)}"

 puts "\n----------------"
 puts "Logical Operator"
 puts "----------------"
 puts "\n"

 puts"\nAND Operator (&&)\n"
 puts "Enter a new number"
 
 c = gets.chomp.to_i

 if c > a && c > b
 	puts "\n#{c} is greater than both #{a} and #{b}"
 elsif c < a && c < b
 	puts "\n#{c} is less than both #{a} and #{b}"
 else 
 	puts "\n#{c} lies between #{a} and #{b}"
 end

 puts"\nOR Operator (||)\n"

 if c > a || b > c
 	puts "#{c} lies between #{a} and #{b}"
 elsif c > b || a > c
 	puts "#{c} lies between #{a} and #{b}"
 else
 	puts "#{c} doen not lies between #{a}  and #{b}"
 end















