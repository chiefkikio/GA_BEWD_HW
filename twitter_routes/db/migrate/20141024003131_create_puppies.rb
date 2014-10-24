class CreatePuppies < ActiveRecord::Migration
  def change
    create_table :puppies do |t|
      t.text :name
      t.text :breed
      t.text :size
      t.integer :num_legs
      t.integer :age

      t.timestamps
    end
  end
end
