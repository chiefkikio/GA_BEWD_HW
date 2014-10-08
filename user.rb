# Lanya Butler 
class User
	def initialize(firstname, lastname, email, age)
		if firstname == nil || lastname == nil || email == nil || age == nil
			puts "error message because your parameter is nil"
			return
		end
		@first_name = firstname
		@last_name = lastname
		@email = email
		@age = age
		@meals = 0
		@lastmeal = nil
	end

	def full_name 
		return "#{@first_name} #{@last_name}"
	end

	def eat(foodname)
		puts food.noise
		food.eaten = true
		@meals+= 1
		@lastmeal = food.get_name()
	end

	def get_last_meal_eaten()
		return @lastmeal
	end

end

def main
	lanya = User.new("Lanya", "Butler", "lanya@localpickins.com", 22)
	puts lanya.full_name
	eat("banana")
end

main()
