class Author < ActiveRecord::Base
  has_many :books, inverse_of: :author
  accepts_nested_attributes_for :books, reject_if: lambda { |attributes| attributes[:title].blank? }
end
