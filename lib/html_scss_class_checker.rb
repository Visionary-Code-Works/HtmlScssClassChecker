require 'html_scss_class_checker/class_extractor'
require 'html_scss_class_checker/file_processor'
require 'html_scss_class_checker/class_checker'

# Read configuration from JSON file
config_file = 'config.json'  # Update this path as needed
config = JSON.parse(File.read(config_file))

checker = HtmlScssClassChecker::ClassChecker.new(config)
checker.check

puts "Unmatched Classes:"
puts checker.unmatched_classes.to_a

puts "\nClasses in each file:"
checker.file_class_mapping.each do |file, classes|
  puts "#{file}: #{classes.to_a}"
end
