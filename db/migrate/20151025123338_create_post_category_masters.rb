class CreatePostCategoryMasters < ActiveRecord::Migration
  def change
    create_table :post_category_masters do |t|
      t.string :name, null: false

      t.timestamps null: false
    end
  end
end
