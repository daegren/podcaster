class Episode < ActiveRecord::Base
  has_and_belongs_to_many :category
  belongs_to :file
end
