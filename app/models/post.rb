class Post < ActiveRecord::Base
  include MarkdownHelper
  attr_accessible :content, :title, :tag_ids
  has_and_belongs_to_many :tags

  validates :title, presence: true, length: { maximum: 255 }
  validates :content, presence: true

  def truncated_content
    HTML_Truncator.truncate(markdown(content), 30).html_safe
  end
end
