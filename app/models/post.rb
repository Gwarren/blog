class Post < ActiveRecord::Base
  attr_accessible :content, :title, :tag_ids
  has_and_belongs_to_many :tags

  validates :title, presence: true, length: { maximum: 255 }
  validates :content, presence: true
end
