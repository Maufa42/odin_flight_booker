class CreateFlights < ActiveRecord::Migration[6.1]
  def change
    create_table :flights do |t|
      t.integer :arrival_id
      t.integer :departure_id
      t.datetime :arrival_time
      t.datetime :departure_time

      t.timestamps
    end
  end
end
