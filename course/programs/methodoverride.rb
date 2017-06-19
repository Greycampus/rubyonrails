#!/usr/bin/ruby -w

class Person

  def welcome(name,msg,food)
	puts "Hi #{name}"
	puts "Hi #{msg}"
	puts "I will cook #{food} for you"
  end

end

class Indian < Person

  def welcome(name,msg,food)
	puts "sorry..I do not know you"
  end

end

puts "************welcome in parent class*************"
Person.new.welcome("arunow","how are you", "pizaa")

puts "\n\n************welcome in subclass*************"
Indian.new.welcome("arun","namaste..kaise hain app", "rice")