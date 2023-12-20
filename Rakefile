require "bundler/gem_tasks"
require "rake/testtask"

# Define a task for running tests (if you're using RSpec)
Rake::TestTask.new(:spec) do |t|
  t.libs.push "spec"
  t.ruby_opts = ["-W0"]  # Suppresses Ruby warnings
  t.pattern = "spec/**/*_spec.rb"  # Location of spec files
end

# Set the default task to run tests
task default: :spec
