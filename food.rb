# Lanya Butler
# BEWD GA October 2014
# Exercise 05 

class Food
	def initialize(name, noise)
		@name = name
		@noise = noise
		@eaten = false
		@days_till_rotten = rand(0..10)
	end

	# mutator methods
	def set_name(name)
		@name = name
	end

	def set_noise(noise)
		@noise = noise
	end

	def set_eaten(eaten)
		@eaten = eaten
	end

	# accessors 
	def get_name()
		return @name
	end

	def get_noise()
		return @noise
	end

	def get_eaten()
		return @eaten
	end

	def get_days_till_rotten()
		return @days_till_rotten
	end
end

def main
	apple = Food.new("apple", "crunch")
	puts apple.get_days_till_rotten()
	puts apple.get_noise()
end

main()