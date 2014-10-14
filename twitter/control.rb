# author: Lanya Butler
# GA BEWD October 2014
# exercise05

load "user.rb"
load "tweet.rb"

def control(user)
	while 1 > 0
		puts "Give me a command ('signup', 'signin', 'signout', 'tweet', 'alltweets', exit)"
		command = gets.chomp
		if command == "signup"
			user.sign_up
		elsif command == "signin"
			user.sign_in
		elsif command == "signout"
			user.sign_out
		elsif command == "tweet"
			user.tweet
		elsif command == "alltweets"
			Tweet.all
		elsif command == "exit"
			put "exiting program"
			break
		end
	end
end

derek = User.new('a','b')
control(derek)

