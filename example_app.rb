class Inventory
	attr_reader :items_array

	def initialize(*items) #pass in items which are then converted into an array via the splat * operator
		@items_array = items
	end

	def add_item(name, author)
		temp_item = Item.new(name,author)
		@items_array << temp_item
	end

	def display_inventory
		@items_array.each do |item|
			puts "Item named: #{item.name} \t Made by: #{item.author}" 
		end
    puts @items_array.length
	end

	def display_item_by(attribute, value)
		i = find_item_by(attribute, value)
		item = @items_array[i]
		puts "Item named: #{item.name} \t Made by: #{item.author}" 
	end

	def remove_item_by(attribute, value)
		removable_item = find_item_by(attribute, value)

	end

	def find_item_by(attribute, value)
		case attribute
		when 'name'
			find_item_by_name(value)
		when 'author'
			find_item_by_author(value)
		else
			puts "Not a valid query type, please select either: name or author"
		end

		# if attribute ==  "name"
		# 	find_item_by_name(value)
		# elsif attribute == "author"
		# 	find_item_by_author(value)
		# else
		# 	puts "Not a valid query type, please select either: name or author"
		# end
	end

	def find_item_by_name(value)
		@items_array.each_with_index do |item, index|
			if item.name == value
				return index
			end
		end
		puts "No matches found please check your spelling"
	end

	def find_item_by_author(value)
		@items_array.each_with_index do |item, index|
			if item.author == value
				return index
			end
		end
		puts "No matches found please check your spelling"
	end
end

class Item
	attr_accessor :name, :author

	def initialize(name, author)
		@name = name.to_s.upcase!
		@author = author.to_s.upcase!
	end

	# Instead of using attr_accessor, attr_reader, or attr_writer
	# we could just write the methods ourselves.
	# 
	# However using attr_accessor and the like is much faster 
	# computationally due to the use of symbols.
	# 
	# def name=(name)
	# 	@name = name
	# end
	# 
	# def name
	# 	@name
	# end
	# 
	# def author=(author)
	# 	@author = author
	# end
	# 
	# def author
	# 	@author
	# end
end
		

my_inventory = Inventory.new
my_inventory.add_item("Yolo", "Steinbeck")
my_inventory.display_inventory
my_inventory.add_item("Green", "Bluish")
my_inventory.display_inventory
#user_input(my_inventory)