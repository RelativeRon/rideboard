class User < ActiveRecord::Base
  include Clearance::User
  
  has_many :posts, :foreign_key => 'poster_id'
  
  attr_accessible :name
  validates_presence_of :name
end
