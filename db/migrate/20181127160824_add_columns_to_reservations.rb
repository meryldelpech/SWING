class AddColumnsToReservations < ActiveRecord::Migration[5.2]
  def change
    add_column :reservations, :begin_date, :datetime
    add_column :reservations, :end_date, :datetime
    add_column :reservations, :status, :integer
    add_column :reservations, :total_price, :float
    add_column :reservations, :fees, :float
  end
end
