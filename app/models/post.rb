class Post < ApplicationRecord
  belongs_to :user

  validates :content, presence: true, unless: :image?
  validates :title, presence: true
  validates :content, presence: true

  mount_uploader :image, ImageUploader
end
