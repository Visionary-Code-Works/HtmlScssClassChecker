# Development Guide for HtmlScssClassChecker

This document provides guidelines and instructions for developers who wish to contribute to the development of the `HtmlScssClassChecker` gem. This guide covers setting up a development environment, making changes, and submitting contributions.

## Setting Up a Development Environment

1. **Clone the Repository**:
   First, clone the repository to your local machine. Use the following command, replacing `REPO_URL` with the actual URL of the repository:

   ```bash
   git clone REPO_URL
   cd html_scss_class_checker
   ```

2. **Install Dependencies**:
   Make sure you have Bundler installed, then run:

   ```bash
   bundle install
   ```

   This will install all the necessary dependencies for the gem.

3. **Create a Feature Branch**:
   When working on a new feature or bug fix, create a new branch:

   ```bash
   git checkout -b feature/my-new-feature
   ```

   or

   ```bash
   git checkout -b bugfix/my-bug-fix
   ```

## Making Changes

1. **Code Changes**:
   Make your code changes, ensuring to follow the coding standards and guidelines of the project. Add or modify tests as appropriate for your changes.

2. **Running Tests**:
   Run the test suite to ensure your changes haven't introduced any regressions:

   ```bash
   rake spec
   ```

3. **Update Documentation**:
   If your changes introduce new features or modify existing behavior, update the documentation accordingly.

4. **Commit Your Changes**:
   Once you're satisfied with your changes and all tests pass, commit your changes:

   ```bash
   git add .
   git commit -m "Add my new feature"
   ```

## Submitting Contributions

1. **Push Your Branch**:
   Push the feature or bugfix branch to your fork:

   ```bash
   git push origin feature/my-new-feature
   ```

2. **Create a Pull Request**:
   Go to the original `HtmlScssClassChecker` repository on GitHub and create a new pull request. Provide a clear description of the changes and any relevant issue numbers.

3. **Code Review**:
   Once your pull request is opened, it will be reviewed by the maintainers. Engage in the code review process, addressing any feedback or comments.

4. **Merging**:
   After your pull request has been approved, it will be merged into the main branch.

## Additional Resources

- **Ruby Style Guide**: Familiarize yourself with the [Ruby Style Guide](https://github.com/rubocop/ruby-style-guide) to maintain consistency in code.
- **Testing with RSpec**: Learn more about testing Ruby applications with [RSpec](https://rspec.info/).

## Questions and Support

If you have any questions or need help with setting up your development environment, feel free to open an issue in the repository for assistance.

Thank you for contributing to `HtmlScssClassChecker`!
