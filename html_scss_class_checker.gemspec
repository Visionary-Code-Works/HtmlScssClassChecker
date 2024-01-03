Gem::Specification.new do |spec|
  spec.name          = "html_scss_class_checker"
  spec.version       = "0.2.1"
  spec.authors       = ["Thaddeus Thomas"]
  spec.email         = ["thaddeus@vcwtech.com"]

  spec.summary       = %q{A Ruby gem for identifying unused or unmatched HTML and SCSS classes.}
  spec.description   = %q{HtmlScssClassChecker is designed to streamline the process of frontend development by scanning HTML and SCSS files and identifying classes that are either undefined or unused. This gem aims to facilitate cleaner, more maintainable, and efficient codebases by providing developers with the tools to easily audit and synchronize their HTML and SCSS class definitions. Its an essential tool for web developers looking to optimize their front-end code and ensure consistency across their stylesheets and markup.}
  spec.homepage      = "https://github.com/Visionary-Code-Works/HtmlScssClassChecker"
  spec.license       = "MIT"

  # Specify which files should be included in the gem
  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Add runtime dependency
  spec.add_runtime_dependency "json"

  # Add development dependencies
  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "simplecov"
  spec.add_development_dependency "rubocop"
  spec.add_development_dependency "yard"
  # Add other development dependencies here
end
