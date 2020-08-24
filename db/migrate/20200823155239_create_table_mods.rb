class CreateTableMods < ActiveRecord::Migration[6.0]
  def change
    create_table :table_mods do |t|
      t.integer :table_id
      t.integer :mod_integer

      t.timestamps
    end
  end
end
