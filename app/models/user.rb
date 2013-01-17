class User < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader
  attr_accessible :email, :name, :password, :avatar, :avatar_cache
  has_many :posts
end
