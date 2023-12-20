# Define directories and files to create
$gemName = "html_scss_class_checker"
$directories = @(
    "$gemName/bin",
    "$gemName/lib/$gemName",
    "$gemName/spec"
)

$files = @(
    "$gemName/bin/console",
    "$gemName/bin/setup",
    "$gemName/lib/$gemName/class_extractor.rb",
    "$gemName/lib/$gemName/file_processor.rb",
    "$gemName/lib/$gemName/class_checker.rb",
    "$gemName/lib/$gemName.rb",
    "$gemName/spec/class_extractor_spec.rb",
    "$gemName/spec/file_processor_spec.rb",
    "$gemName/spec/class_checker_spec.rb",
    "$gemName/spec/spec_helper.rb",
    "$gemName/$gemName.gemspec",
    "$gemName/Gemfile",
    "$gemName/Rakefile",
    "$gemName/LICENSE.txt",
    "$gemName/README.md",
    "$gemName/.gitignore"
)

# Create directories
foreach ($dir in $directories) {
    New-Item -Path $dir -ItemType Directory -Force
}

# Create files
foreach ($file in $files) {
    New-Item -Path $file -ItemType File -Force
}

Write-Host "Gem structure for '$gemName' created successfully."
