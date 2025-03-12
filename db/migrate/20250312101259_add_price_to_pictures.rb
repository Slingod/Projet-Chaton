class AddPriceToPictures < ActiveRecord::Migration[8.0]
  def change
    add_column :pictures, :price, :decimal
  end
end
