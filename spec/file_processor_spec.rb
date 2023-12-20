require 'spec_helper'
require 'html_scss_class_checker/file_processor'

RSpec.describe HtmlScssClassChecker::FileProcessor do
  describe '#list_classes' do
    context 'when processing an HTML file' do
      it 'lists classes from the HTML content' do
        # Mock file content for testing
        file_content = '<div class="html-class1 html-class2"></div>'
        allow(File).to receive(:read).and_return(file_content)

        processor = described_class.new('dummy.html', 'html')
        expected_classes = Set.new(['html-class1', 'html-class2'])
        expect(processor.list_classes).to eq(expected_classes)
      end
    end

    context 'when processing an SCSS file' do
      it 'lists classes from the SCSS content' do
        # Mock file content for testing
        file_content = '.scss-class1 { color: red; } .scss-class2 { color: blue; }'
        allow(File).to receive(:read).and_return(file_content)

        processor = described_class.new('dummy.scss', 'scss')
        expected_classes = Set.new(['scss-class1', 'scss-class2'])
        expect(processor.list_classes).to eq(expected_classes)
      end
    end
  end
end
