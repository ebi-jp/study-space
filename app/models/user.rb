class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts
  validates :name, presence: true
  validates :email, presence: true
  validates :image, presence: true

  mount_uploader :image, ImageUploader
end
