class Tweet < ActiveRecord::Base
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :comments, dependent: :destroy

  validates :user,presence: true
  validates :content,presence: true,length: {maximum: 140}
end
