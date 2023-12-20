# HtmlScssClassChecker Usage Guide

This document provides detailed instructions on how to use the `HtmlScssClassChecker` gem. This gem is designed to help front-end developers identify unused or unmatched HTML and SCSS classes, improving the maintainability and efficiency of their codebases.

## Installation

Before using the gem, ensure it is installed in your Ruby environment:

```bash
gem install html_scss_class_checker
```

Or, if you are using Bundler, add it to your Gemfile and run `bundle install`:

```ruby
gem 'html_scss_class_checker'
```

## Configuration

Create a configuration file named `config.json` in your project root (or another location of your choosing) with the following structure:

```json
{
  "known_classes": ["list", "of", "known", "classes"],
  "html_directories": ["path/to/html/files"],
  "scss_directories": ["path/to/scss/files"]
}
```

- `known_classes`: An array of class names that you expect to find in your HTML and SCSS files.
- `html_directories`: An array of directories where your HTML files are located.
- `scss_directories`: An array of directories where your SCSS files are located.

## Basic Usage

To run the class checker, use the following Ruby script:

```ruby
require 'html_scss_class_checker'

# Load configuration
config_file = 'config.json'  # Replace with your config file path
config = JSON.parse(File.read(config_file))

# Initialize and run checker
checker = HtmlScssClassChecker::ClassChecker.new(config)
checker.check

# Output unmatched classes
puts "Unmatched Classes:"
puts checker.unmatched_classes.to_a

# Output class mapping in each file
puts "\nClasses in each file:"
checker.file_class_mapping.each do |file, classes|
  puts "#{file}: #{classes.to_a}"
end
```

This script will read the configuration from `config.json`, initialize the class checker, and then output any unmatched classes along with a mapping of classes to files.

## Advanced Usage

### Custom Configurations

You can modify the `config.json` to suit your project's structure and requirements. For instance, you may have multiple HTML and SCSS directories or a specific set of known classes you want to validate against.

### Integrating with Build Tools

You can integrate `HtmlScssClassChecker` into your build process by creating a Rake task or a script that is run as part of your build or deployment pipeline. This can help in catching class inconsistencies before they reach production.

## Troubleshooting

If you encounter issues while using the gem, consider the following:

- Ensure all paths in your `config.json` are correct and accessible.
- Check if all necessary dependencies are installed.
- Validate the format of your `config.json`.

## Contributions and Feedback

Contributions to the `HtmlScssClassChecker` gem are welcome! If you have suggestions for improvement or encounter any issues, please feel free to open an issue or submit a pull request on the repository.

---

For further details, refer to the [README.md](/README.md) and the [API Documentation](/docs/api.md) (if available).

This guide assumes a basic understanding of Ruby and gem management. For more information on these topics, visit the [official Ruby documentation](https://www.ruby-lang.org/en/documentation/).
