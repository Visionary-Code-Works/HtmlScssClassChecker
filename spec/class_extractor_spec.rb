require 'spec_helper'
require 'html_scss_class_checker/class_extractor'

RSpec.describe HtmlScssClassChecker::ClassExtractor do
  describe '.extract_from_html' do
    it 'extracts class names from HTML content' do
      html_content = '<div class="class1 class2"></div><span class="class3"></span>'
      expected_classes = Set.new(['class1', 'class2', 'class3'])
      expect(described_class.extract_from_html(html_content)).to eq(expected_classes)
    end
  end

  describe '.extract_from_scss' do
    it 'extracts class names from SCSS content' do
      scss_content = '.class1 { color: red; } .class2 { color: blue; }'
      expected_classes = Set.new(['class1', 'class2'])
      expect(described_class.extract_from_scss(scss_content)).to eq(expected_classes)
    end
  end
end
