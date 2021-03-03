class CreateVhs < ActiveRecord::Migration[6.1]
  def change
    create_table :vhs do |t|
      t.string :serial_number
      t.belongs_to :movie, null: false, foreign_key: true

      t.timestamps
    end
  end
end
