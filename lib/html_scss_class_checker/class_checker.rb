require 'json'
require 'set'

module HtmlScssClassChecker
  class ClassChecker
    attr_reader :unmatched_classes, :file_class_mapping

    def initialize(config)
      @known_classes = Set.new(config['known_classes'])
      @html_directories = config['html_directories']
      @scss_directories = config['scss_directories']
      @unmatched_classes = Set.new
      @file_class_mapping = {}
    end

    def check
      process_directories(@html_directories, 'html')
      process_directories(@scss_directories, 'scss')
    end

    private

    def process_directories(directories, file_type)
      directories.each do |directory|
        Dir.glob("#{directory}/**/*.#{file_type}").each do |file|
          classes = FileProcessor.new(file, file_type).list_classes
          @unmatched_classes.merge(classes - @known_classes)
          @file_class_mapping[file] = classes
        end
      end
    end
  end
end
