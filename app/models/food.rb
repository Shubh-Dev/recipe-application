class Food < ApplicationRecord
  belongs_to :user
  has_many :recipe_foods, dependent: :destroy

  validates :name, presence: true
  # validates :price, presence: true, numericality: { greater_than: 0 }
  # validates :quantity, presence: true, numericality: { greater_than: 0 }
end
