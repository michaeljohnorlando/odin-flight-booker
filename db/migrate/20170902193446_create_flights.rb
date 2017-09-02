class CreateFlights < ActiveRecord::Migration[5.1]
  def change
    create_table :flights do |t|
      t.references :departure, foreign_key: true
      t.references :arrival, foreign_key: true
      t.datetime :departure_time
      t.datetime :arrival_time
      t.references :ticket, foreign_key: true
    end
  end
end
