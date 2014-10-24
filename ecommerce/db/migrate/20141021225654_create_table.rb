class CreateTable < ActiveRecord::Migration
  def change
    create_table :stores do |t|
    	t.text :name

    	t.timestamps
    end

    #add_column :users, :password, :text 
    add_column :stores, :location, :text



  end
end


# If you have already done db:migrate but you want to make a change, you need to run 
# a method such as 
#rails g migration add_field_to_table newfield:type
#rails g migration add_email_to_users email:string 

# This is what you put in the modified database thingy 
# create_table :stores do |t|
#	t.text :usernmae
#	t.timestamps
#end


# This is what the schema looks like when it is created
# create_table "users", force: true do |t|
# 		t.text "username"
# 		t.datetime "created_at"
# 		t.datetime "updated_at"
# 	end