#!/usr/bin/ruby

def fact(n)
   if n == 1 or n == 0
      return 1
   else 
      return n * fact(n-1)
   end
end

def gcd(a,b)
   while a != b
      if a > b
         return gcd(a - b,b)
      else
         return gcd(a , b - a)
      end
   end
   return a
end

puts "START"
a = gets.chomp.to_i
b = gets.chomp.to_i
t1 = Thread.new{puts "G.C.D = #{gcd(a,b)}"}
if a > b
   t2 = Thread.new{puts "Fact of #{b} : #{fact(b)}"}
else
   t2 = Thread.new{puts "Fact of #{a} : #{fact(a)}"}     
end
t1.join
t2.join
puts "END"