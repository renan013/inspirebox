class Quote < ApplicationRecord
  validates :content, :author, presence: true
  validates :content, length: { minimum: 10, maximum: 500 }
end
