class Post < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :user

  validates :image, presence: true
  validates :caption, presence: true,length: { maximum: 30 }
  validates :description, presence: true,length: { maximum: 15 }

end
