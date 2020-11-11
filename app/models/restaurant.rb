class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :category, :name, :address, presence: true
  validates :category, inclusion: { in: %w[chinese italian japanese french belgian] }
end
