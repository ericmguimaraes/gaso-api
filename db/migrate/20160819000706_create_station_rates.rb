class CreateStationRates < ActiveRecord::Migration[5.0]
  def change
    create_table :station_rates do |t|
      t.integer :station_id, unique: true
      t.decimal :rate

      t.timestamps
    end
  end
end
