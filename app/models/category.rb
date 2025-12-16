class Category < ApplicationRecord
  validates :name, presence: true, uniqueness: true, length: { minimum: 4, maximum: 15 }
end
