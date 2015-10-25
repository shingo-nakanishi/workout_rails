class Post < ActiveRecord::Base
  has_many :post_categories, inverse_of: :post
  accepts_nested_attributes_for :post_categories
end
