class BeerTasting < ApplicationRecord
  belongs_to :user

  has_one_attached :photo

  validates :name, presence: true,
                   length: { maximum: 30 }
  validates :producer, presence: true,
                       length: { maximum: 30 }
  validates :color, presence: true
  validates :family, presence: true,
                     length: { maximum: 30 }
  validates :alcohol, presence: true,
                      numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 100 }
  validates :rating, presence: true,
                     numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 10 }
  validates :comment, presence: true,
                      length: { in: 2..100 }
end
