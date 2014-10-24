require_relative 'food'

class Fridge
	def initialize
		@contents = []
		@size = 0
	end

	def add_food(food)
		@contents.push(food)
		@size += 1
	end

	def remove_food(foodname)
		if @size == 0
			puts "sorry, the fridge is empty"
			return
		end
		itemidx = @contents.index { |item| item.get_name == foodname } 
		if itemidx != nil
			return @contents.slice!(itemidx)
			@size -= 1
		else
			puts "sorry, can't find that item"
			return
		end
	end

	def get_contents()
		@contents.each { |item| print "#{item.get_name} "}
	end

	def get_size()
		return @size
	end

end

def main()
	fridge = Fridge.new
	apple = Food.new("apple", "crunch", false)
	banana = Food.new("banana", "squish", false)
	fridge.add_food(apple)
	fridge.add_food(banana)
	fridge.remove_food("banana")
	fridge.get_contents()
end

main()