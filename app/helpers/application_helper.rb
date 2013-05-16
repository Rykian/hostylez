module ApplicationHelper
  def markdown(text)
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::XHTML,
      :autolink => true,
      :space_after_headers => true,
      :filter_html => false
    )
    raw markdown.render(text)
    # RedcarpetCompat.new(text, :fenced_code, :gh_blockcode).to_html.html_safe
  end
end
