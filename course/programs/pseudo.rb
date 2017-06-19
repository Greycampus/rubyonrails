class Example
  def self.eg #self is pseudo-constant
    puts "class method : eg"
  end

  def eg
    puts "instance method : eg"
  end
end

Example.eg  #returns class method 

example = Example.new
example.eg #returns instance method