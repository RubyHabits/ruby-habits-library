class Book < ApplicationRecord
  validates :title, :author, :publishing_date, presence: true
end
