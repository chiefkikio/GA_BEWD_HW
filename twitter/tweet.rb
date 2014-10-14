# @author: Lanya Butler
# GA BEWD October 2014
# exercise05

class Tweet
	@@tweetlist = []

	attr_accessor :title, :content, :username, :time
	def initialize(title, content, username, time)
		@title = title
		@content = content
		@username = username
		@time = time
		@@tweetlist.push(self)
	end

	def self.all
		@@tweetlist.each{|tweet| puts tweet.title}
	end
end
