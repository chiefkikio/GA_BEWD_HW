# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(username:"Lanya", password: "123")
User.create(username:"Mary", password: "123")
User.create(username:"Lanya", password: "123")
puppy_names = ["Alphonz", "Jackson", "Wilfred", "Booboo"]
breeds = ["mutt"]
size = ["small", "medium", "large", "grande", "obese"]
101.times do 
	Puppy.create(name: puppy_names.sample, 
		breed: breeds.sample,
		size: size.sample,
		num_legs: rand(0..14),
		age: rand(0..4))
end

