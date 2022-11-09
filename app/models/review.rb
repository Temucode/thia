class Review < ApplicationRecord
  belongs_to :dessin

  validates :content, presence: true
end
