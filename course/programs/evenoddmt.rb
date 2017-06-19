#!/usr/bin/ruby

def func1(n)
   i = 1 
   while i <= n
         puts "#{i*2}"
         sleep(1)
         i = i+1
   end
end

def func2(n)
   j = 1
   while j <= n
         puts "#{j*3}"
         sleep(1)
         j = j+1
   end
end

puts "START"
n = gets.chomp.to_i
t1 = Thread.new{func1(n)}
t2 = Thread.new{func2(n)}
t1.join
t2.join
puts "END"