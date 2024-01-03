# spec_helper.rb

require 'rspec'
require 'set'

# Require the gem
require 'html_scss_class_checker'

# Configure RSpec
RSpec.configure do |config|
  # Use the specified formatter
  config.formatter = :documentation

  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  # Randomize test order
  config.order = :random
  Kernel.srand config.seed

  # Mocking File reads for consistent test inputs
  config.before(:each) do
    allow(File).to receive(:read) { |file_path|
      if file_path.end_with?('.html')
        '<div class="shared-class unique-html-class"></div>'
      elsif file_path.end_with?('.scss')
        '.shared-class { color: red; } .unique-scss-class { color: blue; }'
      else
        ''
      end
    }
  end
end
