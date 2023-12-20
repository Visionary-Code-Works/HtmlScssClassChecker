# Testing Guide for HtmlScssClassChecker

This document provides guidelines and best practices for writing and running tests for the `HtmlScssClassChecker` gem. Effective testing is crucial to ensure the reliability and stability of the gem.

## Setting Up for Testing

Before running the tests, ensure that you have set up your development environment as described in [DEVELOPMENT.md](/DEVELOPMENT.md). This setup includes cloning the repository and installing all required dependencies.

## Running Tests

To run the test suite, use the following command:

```bash
rake spec
```

This command will execute all tests written in the `spec` directory. Make sure that all tests pass before submitting any changes or pull requests.

## Writing Tests

When adding new features or fixing bugs, it's essential to write corresponding tests. The `HtmlScssClassChecker` gem uses RSpec for testing. Here are some guidelines for writing tests:

1. **Descriptive Test Cases**: Write clear and descriptive test cases. Each test case should express the intended functionality or the specific condition it's testing.

2. **Small and Focused**: Keep tests small and focused on one aspect of the code. Each test should only test one behavior.

3. **Use Contexts**: Group related tests using `context` blocks in RSpec. This helps to organize tests and makes the test file easier to read.

4. **Test Edge Cases**: Consider edge cases and error conditions, not just the happy path.

5. **DRY (Don't Repeat Yourself)**: Reuse test setup code where possible, but avoid complex dependencies between tests.

6. **Mocks and Stubs**: Use mocks and stubs to isolate tests from dependencies, particularly for external services or file access.

## Example Test Structure

Here’s an example structure for an RSpec test in `HtmlScssClassChecker`:

```ruby
RSpec.describe HtmlScssClassChecker::SomeClass do
  describe '#some_method' do
    context 'when some condition is met' do
      it 'behaves in a certain way' do
        # Setup
        # Exercise
        # Verify
      end
    end

    context 'when another condition is met' do
      it 'behaves in a different way' do
        # Setup
        # Exercise
        # Verify
      end
    end
  end
end
```

## Testing Best Practices

- **Independence**: Tests should not rely on the state produced by other tests.
- **Reproducibility**: Tests should produce the same results regardless of the environment in which they are run.
- **Automated**: Automate tests as part of your build or CI/CD pipeline.

## Continuous Integration

Consider setting up a Continuous Integration (CI) service like Travis CI, GitHub Actions, or CircleCI to automatically run tests on every commit or pull request. This ensures that all changes are tested before they are merged.

---

For more information on RSpec and testing in Ruby, refer to the [RSpec documentation](https://relishapp.com/rspec/). If you encounter any issues or have questions about testing `HtmlScssClassChecker`, feel free to open an issue in the repository.
