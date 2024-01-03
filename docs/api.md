# API Documentation for HtmlScssClassChecker Gem

The `HtmlScssClassChecker` gem provides a Ruby API for identifying unused or unmatched HTML and SCSS classes in your web projects. This document outlines how to use the gem's API.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'html_scss_class_checker'
```

And then execute:

```bash
bundle install
```

Or install it yourself as:

```bash
gem install html_scss_class_checker
```

## Usage

### Class Extraction

The gem provides methods to extract class names from HTML and SCSS files.

#### HTML Class Extraction

```ruby
require 'html_scss_class_checker'

html_content = "<div class='test-class another-class'></div>"
html_classes = HtmlScssClassChecker::ClassExtractor.extract_from_html(html_content)

puts html_classes
# Output: Set['test-class', 'another-class']
```

#### SCSS Class Extraction

```ruby
scss_content = ".test-class { color: red; } .another-class { color: blue; }"
scss_classes = HtmlScssClassChecker::ClassExtractor.extract_from_scss(scss_content)

puts scss_classes
# Output: Set['test-class', 'another-class']
```

### File Processing

You can process individual files to list the classes used in them.

```ruby
html_file_processor = HtmlScssClassChecker::FileProcessor.new('path/to/file.html', 'html')
html_classes = html_file_processor.list_classes

scss_file_processor = HtmlScssClassChecker::FileProcessor.new('path/to/style.scss', 'scss')
scss_classes = scss_file_processor.list_classes
```

### Class Checking

The main functionality of the gem is to check for unmatched classes between HTML and SCSS files.

```ruby
config = {
  'known_classes' => ['known-class1', 'known-class2'],
  'html_directories' => ['path/to/html/files'],
  'scss_directories' => ['path/to/scss/files']
}

checker = HtmlScssClassChecker::ClassChecker.new(config)
checker.check

puts "Unmatched Classes: #{checker.unmatched_classes.to_a}"
puts "Classes in each file: #{checker.file_class_mapping}"
```

## Configuration

The `ClassChecker` requires a configuration hash with the following keys:

- `known_classes`: An array of class names that are known and should not be reported as unmatched.
- `html_directories`: An array of directories to search for HTML files.
- `scss_directories`: An array of directories to search for SCSS files.

## Contributing

Contributions are welcome, and they are greatly appreciated! Every little bit helps, and credit will always be given. Please see [CONTRIBUTING.md](/CONTRIBUTING.md) for details.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
