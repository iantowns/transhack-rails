class Inst < ActiveRecord::Base
  has_many :orgs
  validates :name, presence: true,
                      length: { minimum: 3 }
  
end
