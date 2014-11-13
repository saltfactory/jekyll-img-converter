require 'helper'

class TestImgConverter < Minitest::Test
  include ImgConverterTestHelpers
  
  def setup
    @site = fixture_site
    @site.read
    
    @config = {
      # 'redcarpet' => { 'extensions' => ['smart', 'strikethrough', 'filter_html'] },
      'redcarpet' => {'extensions' => ["no_intra_emphasis", "fenced_code_blocks", "autolink", "strikethrough", "superscript", "with_toc_data", "tables"]},
      'markdown' => 'redcarpet'
    }
    @markdown = Jekyll::Converters::Markdown.new @config

  end
  
  should "convert content" do
    # page = page_with_name(@site, "index.md")
    # puts @markdown.convert(page.content)
    assert_equal "<p><img src=\"./images/test.png\" alt=\"test_alt\" style=\"max-width:300px;\" title=\"test_title\"/></p>\n", 
    @markdown.convert('![test_alt {max-width:300px;}](./images/test.png "test_title")')
  end
end
