class Post < ActiveRecord::Base
  belongs_to :poster, :class_name => 'User'
  validates_presence_of :title, :origin, :message

  default_scope :order => 'created_at DESC'
end
