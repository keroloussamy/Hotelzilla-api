class CreateRoomTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :room_types do |t|
      t.string :type
      t.string :description
      t.integer :price

      t.timestamps
    end
  end
end
