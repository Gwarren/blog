module TagsHelper
  # Public: Get the tags of this post ready to be display in html.
  #
  # Returns a html formatted String.
  def labeled_tags tags
    tags.map do |t|
      link_to content_tag(:span, t, class: "label"), tag_path(t)
    end.join(' ').html_safe
  end
end
