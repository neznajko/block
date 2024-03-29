class Comment < ApplicationRecord

  belongs_to :article

  # add validations here
  validates_presence_of :commenter, :body
  validates_length_of :commenter, maximum: 32 
  validates_length_of :body, in: 2..64

end
