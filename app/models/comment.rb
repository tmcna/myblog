class Comment < ActiveRecord::Base
  belongs_to :post
  belongs_to :user
  attr_accessible :body, :commenter, :user_id
  
  validates :commenter, :presence => true
  validates :body, :presence => true,
                      :length => { :minimum => 5 }  
  
  
end
