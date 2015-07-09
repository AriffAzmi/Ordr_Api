class CreateDrinks < ActiveRecord::Migration
  def change
    create_table :drinks do |t|
      
      t.text :drinks
      t.integer :qty

      t.timestamps null: false
      
    end
  end
end
