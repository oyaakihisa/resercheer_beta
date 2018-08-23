class Tweet < ActiveRecord::Base

  belongs_to :user
  has_many :comments 
  has_many :adds
  has_many :cheers
end
