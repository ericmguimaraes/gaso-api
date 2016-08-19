class CreateObdLogGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :obd_log_groups do |t|
      t.references :car, foreign_key: true, null: false

      t.timestamps
    end
  end
end
