# Variable's scopes are defined by the way we name them.
# Variables that start with $ have global scope
$var = "I'm a global var"
defined? $var #=> "global-variable"

# Variables that start with @ have instance scope
@var = "I'm an instance var"
defined? @var #=> "instance-variable"

# Variables that start with @@ have class scope
@@var = "I'm a class var"
defined? @@var #=> "class variable"

# Variables that start with a capital letter are constants
Var = "I'm a constant"
defined? Var #=> "constant"


# Define a person class with the class keyword
class Person
  # Class variables are defined with two @@ and are common to all instances
  @@class_var = 'class_specific'
  
  # Instance variables are defined with one @ symbol
  # We could define getters and setters manually like so:

  # setter:
  # def name=(name)
	# 	@name = name
	# end
	
  # getter
	# def name
	# 	@name
	# end
  
  # However ruby has methods that generate this stuff for us:
  # attr_accessor (creates getters & setters), attr_reader (just getters), or attr_writer (just setters)
  # and because it's based on symbols it is faster under the hood.
  
  attr_accessor :class_var
  attr_reader :name, :age
  attr_writer :name
  
  # Class.new is defined such that it calls the initialize method (if it is present)
  def initialize(name, age=0)
    @name, @age = name, age
  end
  
  # Class methods can only be called by the class not instances of a class
  # and are marked as seperate from instance method by self.
  def self.say(msg)
    puts "#{msg}"
  end
  
end

=begin
group = [
  Person.new("Bob", 33),
  Person.new("Chris", 16),
  Person.new("Ash", 23)
]
 
puts group.sort.reverse


person_1 = group[0]
puts person_1.name
puts person_1.age
puts person_1.name = "George"
# puts person_1.age = 10 #=> not accesible

# Call the class method
Person.say("Hi") #=> "Hi"
=end