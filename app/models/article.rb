################################################################
class Article < ApplicationRecord

  has_many :comments, dependent: :destroy 

  validates_presence_of :title, :body
  validates_length_of :title, maximum: 32 
  validates_length_of :body, in: 8..1024

end
################################################################
