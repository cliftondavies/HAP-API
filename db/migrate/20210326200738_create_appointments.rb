class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.date :date, null: false
      t.string :city, null: false
      t.references :hiker, index: false, foreign_key: { to_table: :users }
      t.references :hike, index: false, foreign_key: true
      t.timestamps
    end
  end
end
