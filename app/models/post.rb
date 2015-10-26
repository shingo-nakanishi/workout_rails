class Post < ActiveRecord::Base
  has_many :post_categories, inverse_of: :post
  accepts_nested_attributes_for :post_categories,
                                allow_destroy: true,
                                reject_if: :is_reject

  private

  def is_reject(attributes)
    is_exist = attributes[:id].present?
    is_empty = attributes[:post_category_id].blank?
    attributes.merge!(_destroy: 1) if is_exist and is_empty
    !is_exist and is_empty
  end
end
