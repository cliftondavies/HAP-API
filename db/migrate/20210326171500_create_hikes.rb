class CreateHikes < ActiveRecord::Migration[5.2]
  def change
    create_table :hikes do |t|
      t.string :name, null: false
      t.string :main_image, null: false
      t.string :thumbnail_image, null: false
      t.index :name, unique: true
      t.timestamps
    end
  end
end
