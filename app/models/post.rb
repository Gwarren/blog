class Post < ActiveRecord::Base
  include MarkdownHelper
  attr_accessible :content, :title, :tag_ids
  has_and_belongs_to_many :tags

  validates :title, presence: true, length: { maximum: 255 }
  validates :content, presence: true

  # Get the 30 first words of the post's content, taking care of HTML_Truncator
  # tags.
  #
  # Returns a String, the truncated post content.
  def truncated_content
    HTML_Truncator.truncate(markdown(content), 30).html_safe
  end
end
