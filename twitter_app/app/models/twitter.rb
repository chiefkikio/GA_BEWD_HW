class Tweet < ActiveRecord::Base
	belongs_to :user
	#validates :user => true
	validates_presence_of :user_id, :message => "must be provided"

end
