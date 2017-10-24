class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
    	t.integer :base_fare
    	t.integer :area
    	t.integer :aggrement_amount
      	t.timestamps
    end
  end
end
