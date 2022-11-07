class RecipeFood < ApplicationRecord
  belongs_to :recipe
  belongs_to :food

  validates :quantity, presence: true, numerically: { greater_than: 0 }
  validates :recipe, presence: true
  validates :food, presence: true
end
