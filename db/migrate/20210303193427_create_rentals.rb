class CreateRentals < ActiveRecord::Migration[6.1]
  def change
    create_table :rentals do |t|
      t.boolean :current
      t.belongs_to :client, null: false, foreign_key: true
      t.belongs_to :vhs, null: false, foreign_key: true

      t.timestamps
    end
  end
end
