# HtmlScssClassChecker

HtmlScssClassChecker is a Ruby gem for extracting and comparing class names from HTML and SCSS files. It helps in identifying unmatched or unused classes, enhancing the maintainability of front-end codebases.

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

To use HtmlScssClassChecker, you need to set up a configuration JSON file (`config.json`) specifying known classes and directories to be checked:

```json
{
  "known_classes": ["class1", "class2"],
  "html_directories": ["_includes", "_layouts"],
  "scss_directories": ["_sass"]
}
```

Run the checker with:

```ruby
require 'html_scss_class_checker'

checker = HtmlScssClassChecker::ClassChecker.new(config)
checker.check

puts "Unmatched Classes:"
puts checker.unmatched_classes.to_a
```

More detailed usage instructions will be provided in the [Usage Documentation](/docs/usage.md).

## Contributing

Contributions are welcome! For major changes, please open an issue first to discuss what you would like to change. Please ensure to update tests as appropriate.

See [CONTRIBUTING.md](/CONTRIBUTING.md) for detailed guidelines.

## Documentation

For full documentation, visit [our documentation page](/docs).

## License

Distributed under the MIT License. See [LICENSE](/LICENSE) for more information.

## Additional Resources

- [Changelog](/CHANGELOG.md): Detailed list of changes in each version.
- [Code of Conduct](/CODE_OF_CONDUCT.md): Guidelines for participation in the community.
- [Development Guide](/docs/development.md): Instructions for setting up a development environment and working on the gem.
- [Testing Guide](/docs/testing.md): Information on how to run and write tests for the gem.
- [Usage Documentation](`/docs/usage.md`): Provide detailed instructions on how to use the gem, including various configurations and options.
- [Contributing Guidelines](`/CONTRIBUTING.md`):** Outline how others can contribute to your project. Include information on coding standards, pull request processes, and issue reporting guidelines.
# HtmlScssClassChecker
