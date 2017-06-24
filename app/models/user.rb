class User < ActiveRecord::Base
	has_many :tweets, dependent: :destroy
	has_many :comments, through: :tweets
	has_many :likes, dependent: :destroy
	validates :email, presence: true,length: {minimum: 7}

	
end
