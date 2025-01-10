################################################################
class Comment < ApplicationRecord
    include Visible
    belongs_to :article

    validates_presence_of :commenter, :body
    validates_length_of :commenter, maximum: 32 
    validates_length_of :body, in: 2..64
end
################################################################
