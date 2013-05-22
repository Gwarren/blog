# == Schema Information
#
# Table name: posts
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  content     :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  description :string(255)
#

class Post < ActiveRecord::Base
  include MarkdownHelper
  attr_accessible :content, :title, :tag_ids, :description
  has_and_belongs_to_many :tags

  validates :title, presence: true, length: { maximum: 255 }
  validates :description, length: { maximum: 255 }
  validates :content, presence: true

  # Public: Get the 30 first words of the post's content, taking care of
  # html tags.
  #
  # Returns a String, the truncated post content.
  def truncated_content link = ""
    HTML_Truncator.truncate(
      markdown(content),
      30,
      ellipsis: link.blank? ? "..." : "... #{link}"
    ).html_safe
  end

end
