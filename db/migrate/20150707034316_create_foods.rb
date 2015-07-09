class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.text :foodlist
      t.integer :quantity

      t.timestamps null: false
    end
  end
end
