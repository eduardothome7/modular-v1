class CreateTables < ActiveRecord::Migration[6.0]
  def change
    create_table :tables do |t|
      t.string :title
      t.text :fields

      t.timestamps
    end
  end
end
