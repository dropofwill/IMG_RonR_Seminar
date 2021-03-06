# Tip: Both Arrays and Hashes are Enumerable
# They share a lot of useful methods such as each, map, count, and more

for counter in 1..5
  puts "iteration #{counter}"
end
#=> iteration 1
#=> iteration 2
#=> iteration 3
#=> iteration 4
#=> iteration 5

# HOWEVER, No-one uses for loops.
# Instead you should use the "each" method and pass it a block.
# A block is a bunch of code that you can pass to a method like "each".
# It is analogous to lambdas, anonymous functions or closures in other
# programming languages.
#
# The "each" method of a range runs the block once for each element of the range.
# The block is passed a counter as a parameter.
# Calling the "each" method with a block looks like this:

puts "Loop through a range"
(1..5).each do |counter|
  puts "iteration #{counter}"
end
#=> iteration 1
#=> iteration 2
#=> iteration 3
#=> iteration 4
#=> iteration 5

puts "Loop through a range with a block"
# You can also surround blocks in curly brackets:
(1..5).each {|counter| puts "iteration #{counter}"}



# The contents of data structures can also be iterated using each.
array = [1, 2, 3, 4, 5]

puts "Loop through array"
array.each do |element|
  puts "#{element} is part of the array"
end

# If you want the index as well use each_with_index
puts "Loop through array with an index"
array.each_with_index do |element, index|
  puts "#{element} is in the #{index} slot of the array"
end

puts "Loop through Hash:"
hash = { color: 'green', number: 5}

hash.each do |key, value|
  puts "#{key} is #{value}"
end

# There are while loops too

puts "While loop:"
counter = 1
while counter <= 5 do
  puts "iteration #{counter}"
  counter += 1
end
#=> iteration 1
#=> iteration 2
#=> iteration 3
#=> iteration 4
#=> iteration 5