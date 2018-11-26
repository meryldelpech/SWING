class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.integer :duration
      t.string :location
      t.string :title
      t.references :user, foreign_key: true
      t.references :talent, foreign_key: true

      t.timestamps
    end
  end
end
