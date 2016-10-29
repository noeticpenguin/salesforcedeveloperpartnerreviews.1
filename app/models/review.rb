class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :partner
  acts_as_votable 
end
