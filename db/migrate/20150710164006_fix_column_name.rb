class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :foods, :foodlist, :name
    rename_column :foods, :quantity, :qty
  end
end
