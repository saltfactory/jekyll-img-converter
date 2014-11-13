require 'jekyll'

module Jekyll
  module Converters    
    class Markdown < Converter

      class RedcarpetParser
          module CommonMethods
            # def postprocess(full_document)
            #       Regexp.new(/\A<p>(.*)<\/p>\Z/m).match(full_document)[1] rescue full_document
            # end
            
            def image(link, title, content)
              pattern = /({)(.+)(})/
              matchData = pattern.match(content)
            
              imgTag = "<img src=\"#{link}\""
            
              if (matchData)        
                style = matchData[2]
                stripContent = content.gsub(matchData.to_s,'').rstrip
              
                imgTag += " alt=\"#{stripContent}\" style=\"#{style}\""
              else
                imgTag += " alt=\"#{content}\""
              end
      
              if(title)
                imgTag += " title=\"#{title}\""
              end
      
              imgTag += "/>"
            end
          end        
      end
      
    end
  end
end

