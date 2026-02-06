# Contributing to Telnyx Agent Skills

Thank you for your interest in contributing to Telnyx Agent Skills! We welcome contributions from the community.

## How Skills Are Generated

These skills are **automatically generated** from Telnyx OpenAPI specifications. The code examples in each skill come directly from our API documentation to ensure accuracy.

This means:
- **Do not modify code examples directly** - they will be overwritten on the next generation
- If you find an error in a code example, it needs to be fixed in the upstream OpenAPI spec

## How to Contribute

### Reporting Issues

If you find a problem with a skill:

1. **Incorrect code example**: Open an issue describing the error. Include the skill name, the problematic code block, and what you expected instead.
2. **Missing skill or operation**: Open an issue requesting the addition.
3. **Documentation improvements**: Open a PR with your suggested changes to non-code sections.

### Submitting Pull Requests

1. Fork this repository
2. Create a branch for your changes (`git checkout -b fix/description`)
3. Make your changes
4. Test that the skill still works as expected
5. Submit a pull request

#### What PRs are welcome:

- Fixes to skill descriptions or metadata
- Improvements to installation instructions
- Documentation clarifications
- New skills for products not yet covered (requires coordination with maintainers)

#### What PRs will be declined:

- Direct modifications to code examples (these come from OpenAPI specs)
- Changes that conflict with the Agent Skills specification

### Code of Conduct

- Be respectful and constructive
- Provide context and examples when reporting issues
- Be patient - all PRs are reviewed by maintainers

## Questions?

- For skill-related questions, open an issue in this repository
- For Telnyx API questions, visit [support.telnyx.com](https://support.telnyx.com)
- For Agent Skills specification questions, see [agentskills.io](https://agentskills.io)

## License

By contributing, you agree that your contributions will be licensed under the MIT License.
