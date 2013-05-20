# -*- encoding: utf-8 -*-

module MarkdownHelper

  # Render markdown to html
  #
  # content - String in markdown to render in html.
  #
  # Returns a html String.
  def markdown(content)
    @@markdown ||= Redcarpet::Markdown.new(Redcarpet::Render::HTML)
    @@markdown.render(content).html_safe
  end
end

