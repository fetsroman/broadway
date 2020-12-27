class Review < ApplicationRecord
  belongs_to :play
  belongs_to :user

  validates_presence_of :comment, :rating
end
