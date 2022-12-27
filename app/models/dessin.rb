class Dessin < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :description, presence: true
  validates :description, uniqueness: true
  has_many :reviews, dependent: :destroy

  has_many_attached :image
  # has_one_attached :image
end
