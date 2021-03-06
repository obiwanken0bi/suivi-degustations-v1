class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :tastings, dependent: :destroy
  has_many :beer_tastings, dependent: :destroy
  has_many :wine_tastings, dependent: :destroy

  validates :username, presence: true
end
