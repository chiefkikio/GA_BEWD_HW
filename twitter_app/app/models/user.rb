class User < ActiveRecord::Base
	has_many :tweets
	validates :username, presence: true

	def tweet
		Tweet.new("some_stuff", self.id)
	end


end

# Tweet class needs a has_many