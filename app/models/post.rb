class Post < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :user
  has_many :likes, -> { order(created_at: :desc) }, dependent: :destroy


  validates :image, presence: true
  validates :caption, presence: true,length: { maximum: 30 }
  validates :description, presence: true,length: { maximum: 15 }
   def liked_by(user)
    # user_idとpost_idが一致するlikeを検索する
    Like.find_by(user_id: user.id, post_id: id)
  end
end
