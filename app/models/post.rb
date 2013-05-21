class Post < ActiveRecord::Base
  include MarkdownHelper
  attr_accessible :content, :title, :tag_ids
  has_and_belongs_to_many :tags

  validates :title, presence: true, length: { maximum: 255 }
  validates :content, presence: true

  # Public: Get the 30 first words of the post's content, taking care of
  # html tags.
  #
  # Returns a String, the truncated post content.
  def truncated_content
    HTML_Truncator.truncate(markdown(content), 30).html_safe
  end

  # Public: Get the tags of this post ready to be display in html.
  #
  # Returns a html formatted String.
  def labeled_tags
    tags.map{|t| "<span class='label'>#{t.label}</span>"}.join(' ').html_safe
  end
end
