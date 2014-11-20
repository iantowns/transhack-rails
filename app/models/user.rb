class User < ActiveRecord::Base
  belongs_to :insts
  belongs_to :orgs
end
