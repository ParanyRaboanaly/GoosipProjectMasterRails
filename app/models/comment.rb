class Comment < ApplicationRecord
	belongs_to :gossips
	belongs_to :user
	has_and_belongs_to_many :comments, polymorphic: true
	has_many :likes
end
