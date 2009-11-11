class User < ActiveRecord::Base
  include Clearance::User
  attr_accessible :name
  validates_presence_of :name

  has_many :posts, :foreign_key => :poster_id
end
