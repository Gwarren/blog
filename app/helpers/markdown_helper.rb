# -*- encoding: utf-8 -*-

module MarkdownHelper
  def markdown(content)
    @@markdown ||= Redcarpet::Markdown.new(Redcarpet::Render::HTML)
    @@markdown.render(content).html_safe
  end
end

