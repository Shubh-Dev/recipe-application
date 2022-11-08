class RecipeFood < ApplicationRecord
  belongs_to :recipe
  belongs_to :food

  validates :recipe, presence: true
  validates :food, presence: true
end
