class CreateCars < ActiveRecord::Migration[5.0]
  def change
    create_table :cars do |t|
      t.references :user, foreign_key: true
      t.string :brand
      t.string :model, null: false
      t.string :model_year

      t.timestamps
    end
  end
end
