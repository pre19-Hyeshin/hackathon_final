class Post < ApplicationRecord
    has_one_attached :profile
    belongs_to :user
    
    
    has_many :likes
    has_many :liked_users, through: :likes, source: :user
end
