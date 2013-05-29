class Comment < ActiveRecord::Base
  belongs_to :post
  attr_accessible :body, :commenter, :post_id
  validates :body, :length => { :maximum => 250 }
end
