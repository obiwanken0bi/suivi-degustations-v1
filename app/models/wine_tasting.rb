class WineTasting < ApplicationRecord
  belongs_to :user

  has_one_attached :photo

  validates :name, presence: true,
                   length: { maximum: 30 }
  validates :producer, presence: true,
                       length: { maximum: 30 }
  validates :color, presence: true
  validates :vintage, presence: true
  validates :rating, presence: true,
                     numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 10 }
  validates :comment, presence: true,
                      length: { in: 2..100 }
end
