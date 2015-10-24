class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.references :authors, null: false
      t.string :title

      t.timestamps null: false
    end
  end
end
