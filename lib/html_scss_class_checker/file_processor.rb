require 'json'
require 'set'

module HtmlScssClassChecker
  class FileProcessor
    def initialize(file_path, file_type)
      @file_path = file_path
      @file_type = file_type
    end

    def list_classes
      content = File.read(@file_path)
      case @file_type
      when 'html'
        ClassExtractor.extract_from_html(content)
      when 'scss'
        ClassExtractor.extract_from_scss(content)
      else
        Set.new
      end
    end
  end
end
