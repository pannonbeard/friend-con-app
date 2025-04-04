require 'redcarpet'

module HomeHelper
  def render_md(text)
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML.new, extensions = {})
    markdown.render(text).html_safe
  end
end
