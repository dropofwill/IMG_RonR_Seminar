# Examples of how to create functions

def double(x)
  x * 2
end

# Functions (and all blocks) implicitly return the value of the last statement
double(2) #=> 4

# Parentheses are optional where the result is unambiguous
double 3 #=> 6

double double 3 #=> 12

def sum(x,y)
  x + y
end

# Method arguments are separated by a comma
sum 3, 4 #=> 7

sum sum(3,4), 5 #=> 12

# yield
# All methods have an implicit, optional block parameter
# it can be called with the 'yield' keyword

def surround
  puts "{"
  yield
  puts "}"
end

surround { puts 'hello world' }

#=>
# {
# hello world
# }


# Blocks are like closures or lamdas in other languages
# They can be made either with:
do
  puts "some stuff"
end
#or
{ puts "some stuff" }

# You can add parameters to blocks, and they remain local to the blocks scope

x = 10  
5.times do |x|  
  puts "x inside the block: #{x}"  
end  
  
puts "x outside the block: #{x}"  

#=>
#x inside the block: 0  
#x inside the block: 1  
#x inside the block: 2  
#x inside the block: 3  
#x inside the block: 4  
#x outside the block: 10  


# Everything can go on one line, but it probably shouldn't
def hello_semicolons a_string; puts "hello" + a_string; end

# Whitespace, parenthesises are not necessary
# String concatentation can work a number of ways
def hello_newline string_1, string_2
puts "hello" << string_1
puts "or " + string_2
end

# String interpolation is a really handy way of sticking variables into strings
def hello_the_typical_way (string_1, string_2)
  puts "hello, #{string_1} #{string_2}"
end

hello_semicolons " from one line sepearated by semicolons"
hello_newline " concatenate with this << operator", "with the + operator"

# Escape special characters with \
hello_the_typical_way "parenthesis are optional", " and you can interpolate with this \#\{\}"



# Control structures

#if elsif else structure
if true
  "if statement"
elsif false
  "else if, optional"
else
  "else, also optional"
end

# there is also an unless structure

unless true
  "it's false"
else
  "it is true"
end

#Switch structure
grade = 'B'

case grade
when 'A'
  puts "Way to go kiddo"
when 'B'
  puts "Better luck next time"
when 'C'
  puts "You can do better"
when 'D'
  puts "Scraping through"
when 'F'
  puts "You failed!"
else
  puts "Alternative grading system, eh?"
end