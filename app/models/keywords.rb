class Keywords < ActiveRecord::Base
  has_and_belongs_to_many :podcasts
end
