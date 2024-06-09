class Region < ApplicationRecord
  has_many :prefectures, dependent: :destroy

  validates :name, uniqueness: true
  validates :slug, uniqueness: true
end
