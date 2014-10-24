class CreateTweetTable < ActiveRecord::Migration
  def change
    create_table :tweet_tables do |t|
    	t.text :content
    	t.integer :user_id
    end
    
  end
end
