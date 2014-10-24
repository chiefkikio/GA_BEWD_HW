class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.text, :name
      t.text, :color
      t.integer :price

      t.timestamps
    end
  end
end
