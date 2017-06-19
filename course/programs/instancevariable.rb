#!/usr/bin/ruby -w

class Details  
   def initialize(name ,id)   
      @emp_name = name #instance variable 
      @emp_id = id  #instance variable   
   end 

   def display()   
      puts "Name : #{@emp_name}"
      puts "ID : #{@emp_id}"   
   end

end   

puts "Enter the details of the employ (i.e., name and id)"

first = Details.new(gets.chomp,gets.chomp)

first.display()