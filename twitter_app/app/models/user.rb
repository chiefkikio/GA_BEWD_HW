class User < ActiveRecord::Base
	def tweet
		Tweet.new("some_stuff", self.id)
	end

end
