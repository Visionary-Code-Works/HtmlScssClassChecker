require 'json'
require 'set'

module HtmlScssClassChecker
  class ClassExtractor
    def self.extract_from_html(content)
      content.scan(/class="([^"]+)"/).flatten.map { |cls| cls.split }.flatten.to_set
    end

    def self.extract_from_scss(content)
      content.scan(/\.[\w-]+/).flatten.map { |cls| cls.delete_prefix('.') }.to_set
    end
  end
end
