class Article < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
#    validates :title, length: { in: 1..32 }
#    validates :body, length: { in: 8..120 } 
end
