class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  mount_uploader :avatar, AvatarUploader
  has_many :posts, dependent: :destroy
  has_many :likes
  has_many :comments
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,:omniauthable
  validates :name, presence: true
  end
#      def self.find_for_oauth(auth)
#     user = User.where(uid: auth.uid, provider: auth.provider).first

#     unless user
#        user = User.create(
#         uid: auth.uid,
#         provider: auth.provider,
#         email:    User.dummy_email(auth),
#         password: Devise.friendly_token[0, 20],
#       )
#     end
#  　　　# user.skip_confirmation!
#     user
#   end

#   private

#   def self.dummy_email(auth)
#     "#{auth.uid}-#{auth.provider}@example.com"
#   end
