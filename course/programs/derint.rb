#!/usr/bin/ruby -w

puts "Enter the coefficients of the equation"

a = gets

coef = Array.new

coef = a.split(" ").map(&:to_f)


puts "Equation : "

count = coef.count - 1

coef.each{
	|x|
	print "#{x}x^#{count}"
	if count != 0
		print "+"
	end
	count = count - 1
}
puts ""

mul = Array.new(coef.count){ |x| x = x }

defe = Array.new

i = 0
while i < mul.count
	defe[i] = coef[i] * mul[-i-1]
	i = i + 1
end

count = defe.count - 1

puts "Differential Equation"

defe.each{
	|x|
	if count == 0 
		break
	else
		print "#{x}x^#{count-1}"	
	end
	
	if count > 1
		print "+"
	end
	count = count - 1
}
puts ""

inti = Array.new

mul = Array.new(coef.count){ |x| x = x + 1 }

i = 0
while i < mul.count
	inti[i] = coef[i] / mul[-i-1]
	i = i + 1
end

count = inti.count - 1

puts "Integral Equation"

inti.each{
	|x|
	print "#{x}x^#{count+1}"
	if count != 0
		print "+"
	else
		break
	end
	count = count - 1
}
puts ""