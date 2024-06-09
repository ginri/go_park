class Prefecture < ApplicationRecord
  belongs_to :region
  has_many :parks, dependent: :destroy

  validates :name, uniqueness: true
  validates :slug, uniqueness: true
end
