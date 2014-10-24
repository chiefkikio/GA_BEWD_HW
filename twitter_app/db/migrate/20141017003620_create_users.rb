class CreateUsers < ActiveRecord::Migration
  # overwriting change from ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.text :username
      t.text :password

      t.timestamps
    end

    #add_column :tablename, :columntoadd, :type
    add_column :users, :password, :text
  end
end

# If you have already done db:migrate but you want to make a change, you need to run 
# a method such as 
#rails g migration add_field_to_table newfield:type
#rails g migration add_email_to_users email:string 
# then run rake db:migrate

# Don't put anything in the scheme, it gets updated when you modify the generated file 
# with rails g migratio tablename 
# then when you run rake db:migrate it works and this will get filled 