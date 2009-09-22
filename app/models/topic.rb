class Topic < ActiveRecord::Base
  has_many :votes
end
