class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments, :dependent => :destroy
  attr_accessible :body, :title, :user_id
  validates :title, :length => { :maximum => 200 }
end
