require 'helper'

class TestImgConverter < Minitest::Test
  include ImgConverterTestHelpers
  
  def setup
    @site = fixture_site
    @site.read
    @markdown = Redcarpet::Markdown.new(Jekyll::ImgConverter.new())
  end
  
  should "convert content" do
    page = page_with_name(@site, "index.md")
    puts @markdown.render(page.content)
  end
end