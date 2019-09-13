class CreateTravellers < ActiveRecord::Migration[6.0]
  def change
    create_table :travellers do |t|
      t.string :name
      t.string :username
      t.string :password_digest
      t.timestamps
    end
  end
end
