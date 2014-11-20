class Org < ActiveRecord::Base
  belongs_to :user
  belongs_to :inst
  has_many :events
end
