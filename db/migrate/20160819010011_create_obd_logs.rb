class CreateObdLogs < ActiveRecord::Migration[5.0]
  def change
    create_table :obd_logs do |t|
      t.references :obd_log_group, foreign_key: true, null: false
      t.string :pid, null: false
      t.string :mode, null: false
      t.string :status, null: false
      t.string :data
      t.boolean :parsed

      t.timestamps
    end
  end
end
