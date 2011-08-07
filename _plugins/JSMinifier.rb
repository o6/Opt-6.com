require 'jsmin'

module Jekyll
  class JSMinifier < Converter
    safe true

    priority :low

    def matches(ext)
      ext =~ /js/i
    end 

    def output_ext(ext)
      ".js"
    end

    def convert(content)
      JSMin.minify(content)
    end
  end
end