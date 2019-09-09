class CreateAirlineConnections < ActiveRecord::Migration[6.0]
  def change
    create_table :airline_connections do |t|
      t.references :connection
      t.references :airline
      t.float :price

      t.timestamps
    end
  end
end
