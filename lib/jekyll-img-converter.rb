require 'jekyll'
require 'redcarpet'

module Jekyll

  class ImgConverter < Redcarpet::Render::HTML

    def image(link, title, content)
      # content &&= content
      pattern = /({)(.+)(})/
      matchData = pattern.match(content)
      stripContent = content.gsub(matchData[0],'')

      imgTag = "<img src=\"#{link}\""
      if (matchData)
        imgTag = imgTag + " alt=\"#{stripContent}\" style=\"#{matchData[0]}\""
      else
        imgTag = imgTag + " alt=\"#{content}\""
      end

      if(title)
        imgTag = imgTag = " title=\"#{title}\""
      end

      imgTag = imgTag + "/>"
    end

  end

  class SFMarkdownConverter < Converter
    safe true
    priority :high

    def matches(ext)
      ext =~ /^.md(own)?$/i
    end

    def output_ext(ext)
      ".html"
    end

    def convert(content)
      # @renderer.send :include, Redcarpet::Render::SmartyPants if @redcarpet_extensions[:smart]
      # markdown = Redcarpet::Markdown.new(@renderer.new(@extensions), @extensions)
      markdown = Redcarpet::Markdown.new(ImgConverter.new(@extensions), @extensions)
      markdown.render(content)
    end

    def initialize(config)
      super
      @extensions = {}
      @config['redcarpet']['extensions'].each { |e| @extensions[e.to_sym] = true}
      @extensions = @config['redcarpet']['extensions'].each_with_object({}) do |e, hash|
        hash[e.to_sym] = true
      end
    end
  end
end
