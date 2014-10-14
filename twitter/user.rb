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
		@following = []
		@@userlist.push(self)
	end

	def self.sign_up
		# def sign_up(username, password)
		# user = User.new(username, password)
		# @@users.push(user)

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
		# sign_in(username, password)
		# @@userlist.each do |user|
		# if user.username == username && user.password == password
		#   $session = user

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
		user_to_follow = gets.chomp
		idx = @@userlist.each{|user| user.username == user_to_follow}
		if idx != nil
			following.push(@@userlist[idx])
			puts "successfully followed!"
			# is this correct? want to add this user to the follower list of the user they just followed
			@@userlist[idx].followers.push(self)
		else
			puts "sorry, can't find that user"
		end
	end

	def unfollow
		puts "Who do you want to unfollow?"
		user_to_unfollow = gets.chomp
		idx = @@userlist.each{|user| user.username == user_to_unfollow}
		if idx != nil
			following.delete_at(idx)
			puts "successfully unfollowed!"
		else
			puts "Sorry, can't find that user"
		end
	end
end	

