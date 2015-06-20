class Post < ActiveRecord::Base
  validates :title, :body, presence: true
  validates_uniqueness_of :title
  
  has_many :comments
end
