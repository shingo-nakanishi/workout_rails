class Post < ActiveRecord::Base
  has_many :post_categories, inverse_of: :post
  accepts_nested_attributes_for :post_categories,
                                allow_destroy: true,
                                reject_if: :is_reject

  private

  def is_reject(attributes)
    attributes[:post_category_id].blank?
  end
end
