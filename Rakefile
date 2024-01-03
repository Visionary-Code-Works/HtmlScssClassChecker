require "bundler/gem_tasks"
require "rake/testtask"
require 'simplecov'  # Add SimpleCov for test coverage

# Rake task for building the gem.
# This task uses Bundler to build the gem based on the specifications
# defined in your gemspec file.
require "bundler/gem_tasks"

# Define a task for running tests using RSpec.
# This sets up RSpec to run all spec files located in the 'spec' directory.
Rake::TestTask.new(:spec) do |t|
  t.libs.push "spec"
  t.ruby_opts = ["-W0"]  # Suppresses Ruby warnings
  t.pattern = "spec/**/*_spec.rb"  # Location of spec files

  # SimpleCov start must be at the very top to capture all files
  SimpleCov.start do
    add_filter '/spec/'  # Exclude spec directory from coverage
  end
end

# Task for running RuboCop for code linting
desc "Run RuboCop on the lib and spec directories"
task :rubocop do
  sh "rubocop lib spec"
end

# Task for generating documentation using YARD or another documentation tool
desc "Generate documentation"
task :document do
  sh "yard doc"  # or replace with your preferred documentation tool
end

# Set the default task for Rake.
# When running 'rake' without arguments, it will run the 'spec' task.
task default: :spec

# Add a task for checking test coverage after running tests
desc "Run specs with coverage"
task :coverage do
  ENV['COVERAGE'] = 'true'
  Rake::Task["spec"].invoke
end
