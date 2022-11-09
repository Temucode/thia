class Dessin < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :description, presence: true
  validates :description, uniqueness: true
  has_many :reviews, dependent: :destroy
  has_one_attached :image
  validates :image, presence: true

end
