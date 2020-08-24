class CreateMods < ActiveRecord::Migration[6.0]
  def change
    create_table :mods do |t|
      t.string :name
      t.string :title
      t.string :icon
      t.string :bgcolor
      t.integer :table_id

      t.timestamps
    end
  end
end
