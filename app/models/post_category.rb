class PostCategory < ActiveRecord::Base
  belongs_to :post, inverse_of: :post_categories
  belongs_to :post_category_master
end
