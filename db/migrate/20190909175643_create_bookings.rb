class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.date :date
      t.references :airline
      t.references :traveler

      t.timestamps
    end
  end
end
