class User < ApplicationRecord
	belongs_to :citie
	has_many :gossips
	has_many :comments
	has_many :likes
	has_many :private_messages
end
