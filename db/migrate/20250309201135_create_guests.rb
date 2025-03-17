class CreateGuests < ActiveRecord::Migration[7.1]
  def change
    create_table :guests do |t|
      t.string :name
      t.string :last_name
      t.string :email
      t.references :table, null: false, foreign_key: true

      t.timestamps
    end
  end
end
