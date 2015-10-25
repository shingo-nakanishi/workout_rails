class CreatePostCategories < ActiveRecord::Migration
  def change
    create_table :post_categories do |t|
      t.references :post, null: false
      t.references :post_category, null: false

      t.timestamps null: false
    end
  end
end
