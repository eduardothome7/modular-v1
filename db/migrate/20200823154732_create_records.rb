class CreateRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :records do |t|
      t.integer :table_id
      t.text :values
      t.integer :user_id

      t.timestamps
    end
  end
end
