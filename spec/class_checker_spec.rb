require 'spec_helper'
require 'html_scss_class_checker/class_checker'

RSpec.describe HtmlScssClassChecker::ClassChecker do
  let(:config) do
    {
      'known_classes' => ['shared-class', 'another-shared-class'],
      'html_directories' => ['spec/fixtures/html'],
      'scss_directories' => ['spec/fixtures/scss']
    }
  end
  let(:checker) { described_class.new(config) }

  before do
    # Mock file content for testing
    allow(File).to receive(:read) { |file_path|
      if file_path.include?('.html')
        '<div class="shared-class unique-html-class"></div>'
      elsif file_path.include?('.scss')
        '.shared-class { color: red; } .unique-scss-class { color: blue; }'
      else
        ''
      end
    }
  end

  describe '#check' do
    it 'finds unmatched classes and maintains a file-class mapping' do
      checker.check

      expect(checker.unmatched_classes).to contain_exactly('unique-html-class', 'unique-scss-class')

      expect(checker.file_class_mapping.keys.grep(/\.html$/).any?).to be true
      expect(checker.file_class_mapping.keys.grep(/\.scss$/).any?).to be true
      expect(checker.file_class_mapping.values.flatten).to include('shared-class', 'unique-html-class', 'unique-scss-class')
    end
  end
end
