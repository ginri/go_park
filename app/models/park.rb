class Park < ApplicationRecord
  belongs_to :prefecture
  belongs_to :user
  has_many :favorites, dependent: :destroy
  has_one_attached :image

  def favorited_by?(user)
    favorites.exists?(user_id: user.id)
  end

  validates :name, presence: true
  validates :address, presence: true
  validates :description, presence: true
  validates :image, presence: true



end
