class Tag < ActiveRecord::Base
  attr_accessible :label
  has_and_belongs_to_many :posts

  validates :label, presence: true, length: { maximum: 40 }

  def to_s ; label ; end
end