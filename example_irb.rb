# This is a comment
=begin
This is a multiline comment
No-one really uses them
=end

#for this program this:
#=>
#represents what the function returns

# Everything is an object.

# Numbers are objects
3.class #=> Fixnum
  
#and can be converted to strings
3.to_s #=> "3"
3.to_s.class #=> String

# Special values are objects
nil # Nothing to see here
true # truth
false # falsehood

nil.class #=> NilClass
true.class #=> TrueClass
false.class #=> FalseClass
  

# Some basic arithmetic
1 + 1 #=> 2
8 - 1 #=> 7
10 * 2 #=> 20
35 / 5 #=> 7
2 ** 2 #=> 4
  
# There are no ++ or -- operators, but in their place we have a ton of X= operators:
a_num = 1
a_num += 1 #=> 2
a_num -= 1 #=> 1
a_num *= 3 #=> 6
#a_num /= 3 #=> 2
#a_num **= 3 #=> 8
  
  
# Arithmetic is just syntactic sugar
# for calling a method on an object
1.+(3) #=> 4
10.* 5 #=> 50

# Equality
1 == 1 #=> true
2 == 1 #=> false

# Inequality
1 != 1 #=> false
2 != 1 #=> true
!true  #=> false
!false #=> true

# apart from false itself, nil is the only other 'falsey' value

!nil   #=> true
!false #=> true
!0     #=> false

# More comparisons
1 < 10 #=> true
1 > 10 #=> false
2 <= 2 #=> true
2 >= 2 #=> true

placeholder = "use string interpolation"
"I can #{placeholder} when using double quoted strings"
#=> "I can use string interpolation when using double quoted strings"


# print to the output
  puts "I'm printing! With puts so there is a line break"
  print "I'm printing with print"
  print "so there is no line break"

# Variables
x = 25 #=> 25
x #=> 25

# Note that assignment returns the value assigned
# This means you can do multiple assignment:

x = y = 10 #=> 10
x #=> 10
y #=> 10

# By convention, use snake_case for variable names
snake_case = true

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
  
  
  
# Symbols (are objects)
# Symbols are immutable, reusable constants represented internally by an
# integer value. They're often used instead of strings to efficiently convey
# specific, meaningful values

:pending.class #=> Symbol

status = :pending

status == :pending #=> true

status == 'pending' #=> false

status == :approved #=> false
  
# Arrays

# This is an array
array = [1, 2, 3, 4, 5] #=> [1, 2, 3, 4, 5]
  
# A shortcut for making an array of strings is %w
string_array = %w[1 2 3 4 5] #=> ["1", "2", "3", "4", "5"]

# Arrays can contain different types of items

[1, "hello", false, string_array] #=> => [1, "hello", false, ["1", "2", "3", "4", "5"]] 

# Arrays can be indexed
# From the front
array[0] #=> 1
array[12] #=> nil

# Like arithmetic, [var] access
# is just syntactic sugar
# for calling a method [] on an object
array.[] 0 #=> 1
array.[] 12 #=> nil

# From the end
array[-1] #=> 5

# With a start and end index
array[2, 4] #=> [3, 4, 5]

# Or with a range including the last integer with ..
array[0..3] #=> [1, 2, 3, 4]

# Or excluding it with ...:
array[0...3] #=> [1, 2, 3]
  
# Add to an array like this
array << 6 #=> [1, 2, 3, 4, 5, 6]

# Delete items with a method
array.delete(6) #=> [1, 2, 3, 4, 5]

# Hashes are Ruby's primary dictionary with keys/value pairs.
# Hashes are denoted with curly braces:
hash = {'color' => 'green', 'number' => 5}

hash.keys #=> ['color', 'number']

# Hashes can be quickly looked up by key:
hash['color'] #=> 'green'
hash['number'] #=> 5

# Asking a hash for a key that doesn't exist returns nil:
hash['nothing here'] #=> nil

# Since Ruby 1.9, there's a special syntax when using symbols as keys:

new_hash = { defcon: 3, action: true}

new_hash.keys #=> [:defcon, :action]
  
# Most hashes you will see use symbols for the keys, even if they don't use this new method