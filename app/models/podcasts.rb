class Podcasts < ActiveRecord::Base
  has_and_belongs_to_many :categories
  belongs_to :file
end
