#!/usr/bin/ruby -w
COMPANY = "Grey Campus"  #Constant 
class Details  
   def initialize(name, id)   
      @emp_name = name #instance variable 
      @emp_id = id  #instance variable
     
        
   end 

   def display()   
      puts "NAME : #{@emp_name}"
      puts "ID : #{@emp_id}"  
      puts "COMPANY :#{COMPANY}" 
   end

end   

puts "Enter the details of the employ (i.e., name and id)"

first = Details.new(gets.chomp,gets.chomp)

first.display()