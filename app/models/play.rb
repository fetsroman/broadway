class Play < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :reviews, dependent: :destroy

  validates_presence_of :title, :description, :image

  mount_uploader :image, ImageUploader
end
