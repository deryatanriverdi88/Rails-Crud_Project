class CreateConnections < ActiveRecord::Migration[6.0]
  def change
    create_table :connections do |t|
      t.string :location_1
      t.string :location_2

      t.timestamps
    end
  end
end
