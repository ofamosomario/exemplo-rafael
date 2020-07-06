class CreateAppoiments < ActiveRecord::Migration
  def change
    create_table :appoiments do |t|
      t.integer :physician_id
      t.integer :patient_id
      t.string :appoiment

      t.timestamps null: false
    end
  end
end
