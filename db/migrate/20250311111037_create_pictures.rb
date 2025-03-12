class CreatePictures < ActiveRecord::Migration[8.0]
  def change
    create_table :pictures do |t|
      t.string :name
      t.integer :age
      t.string :breed
      t.string :image

      t.timestamps
    end
  end
end
