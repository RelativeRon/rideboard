class Post < ActiveRecord::Base
  belongs_to :poster, :class_name => 'User'
  validates_associated :poster
  validates_presence_of :poster, :title, :origin, :message

  default_scope :order => 'created_at DESC'

  def owned_by?(user)
    poster == user
  end
end
