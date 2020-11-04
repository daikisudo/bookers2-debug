class Book < ApplicationRecord
	
	validates :title, presence: true
	validates :body, presence: true
	
 	belongs_to :user, optional: true
 	has_many :favorites
def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
end
end