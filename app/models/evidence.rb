class Evidence < ActiveRecord::Base
  belongs_to :review
  belongs_to :user
  validates_formatting_of :image_url, using: :url
end
