class Story < ActiveRecord::Base
  validates :headline, :content, :presence => true
  
  belongs_to :user
  has_many :comments
end
