class Book < ActiveRecord::Base
  belongs_to :author, inverse_of: :books
  validates :author_id, presence: true
end
