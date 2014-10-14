# @author: Lanya Butler
# GA BEWD Octoer 2014
# exercise05

$session = nil

class User
	@@userlist = []

	attr_accessor :username, :password, :tweetlist

	def initialize(username, pass)
		if username == nil || pass == nil
			puts "Error, missing argument to initialize user"
			return
		end

		@username = username
		@password = pass
		@tweetlist = []
		@followers = []
		@follows = []
		@@userlist.push(self)
	end

	def self.sign_up
		puts "====== sign up ======"
		puts "What is your username?"
		username = gets.chomp

		puts "What is your email?"
		email = gets.chomp

		puts "What is your password?"
		pass = gets.chomp

		user = User.new(username, pass)
		@@userlist.push(user)
	end

	def sign_in
		if @@userlist.include?(self)
			puts "please sign in"
			puts "what is your username?"
			username = gets.chomp

			puts "What is your password?"
			pass = gets.chomp 

			if @username == username && @password == pass
				$session = self
			else
				puts "You have the incorrect username or password. try again"
			end 
		else
			puts "This user doesn't exist. Please sign up"
		end
	end

	def sign_out
		puts "Do you want to sign out (y/n)?"
		answer = gets.chomp
		if answer == "y"
			@session = nil
			puts "You have been signed out!"
		end
	end

	def tweet
		if $session == self
			puts "What is the title of your tweet?"
			title = gets.chomp
			puts "What do you want to tweet?"
			tweetcontent = gets.chomp

			time = Time.now
			tweet = Tweet.new(title, tweetcontent, @username, time)
		else
			puts "Sorry, no one is signed in"
		end
	end

	def follow
		puts "Who do you want to follow?"
		
	end
end	

