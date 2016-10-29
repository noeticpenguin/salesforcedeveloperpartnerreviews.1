class Partner < ActiveRecord::Base
  validates_formatting_of :website, using: :url
end
