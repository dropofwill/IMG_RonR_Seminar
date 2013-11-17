#Examples of how to create functions

#Everything can go on one line, but it probably shouldn't
def hello_semicolons a_string; puts "hello" + a_string; end

#Whitespace, parenthesises are not necessary
#String concatentation can work a number of ways
def hello_newline string_1, string_2
puts "hello" << string_1
puts "or " + string_2
end

#String interpolation is a really handy way of sticking variables into strings
def hello_the_typical_way (string_1, string_2)
  puts "hello, #{string_1} #{string_2}"
end

hello_semicolons " from one line sepearated by semicolons"
hello_newline " concatenate with this << operator", "with the + operator"

#escape special characters with \
hello_the_typical_way "parenthesis are optional", " and you can interpolate with this \#\{\}"