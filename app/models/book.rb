class Book < ActiveRecord::Base
  belongs_to :author, inverse_of: :books
end
