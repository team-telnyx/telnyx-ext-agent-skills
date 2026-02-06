# Telnyx Agent Skills

Official skills for AI coding agents to integrate Telnyx APIs using the native SDKs.

These skills follow the [Agent Skills specification](https://agentskills.io/specification) and can be installed in AI coding assistants like [Claude Code](https://docs.anthropic.com/en/docs/claude-code), Cursor, Windsurf, and other compatible agents.

## Available Skills

Skills are organized by product and language. Each skill teaches an AI agent how to use Telnyx SDKs correctly with production-ready code examples.

### Products

| Product | Description |
|---------|-------------|
| `telnyx-messaging-*` | SMS/MMS messaging, short codes, toll-free |
| `telnyx-voice-*` | Programmable voice, call control, TeXML |
| `telnyx-verify-*` | Phone verification and 2FA |
| `telnyx-number-lookup-*` | Phone number information lookup |
| `telnyx-10dlc-*` | 10DLC campaign registration |
| `telnyx-fax-*` | Programmable fax |
| `telnyx-wireless-*` | IoT SIM management |
| `telnyx-storage-*` | Cloud storage |
| `telnyx-networking-*` | Private networking |
| `telnyx-inference-*` | AI inference APIs |

### Languages

Each product is available for:
- **JavaScript** (`-javascript`)
- **Python** (`-python`)
- **Go** (`-go`)
- **Java** (`-java`)
- **Ruby** (`-ruby`)

## Installation

### Claude Code

```bash
# Install a specific skill
claude mcp add-skill telnyx-messaging-python

# Or install from this repository
claude mcp add-skill ./telnyx-messaging-python
```

### Manual Installation

Copy the desired skill directory to your agent's skills location, or reference the `SKILL.md` file directly.

## Skill Structure

Each skill contains a single `SKILL.md` file with:
- YAML frontmatter (name, description, version)
- Installation instructions for the SDK
- Code examples for every API operation
- Webhook handling examples where applicable

All code examples are extracted directly from Telnyx OpenAPI specifications and are guaranteed to work with the latest SDK versions.

## Example Usage

After installing `telnyx-messaging-python`, your AI agent will know how to:

```python
import telnyx

telnyx.api_key = "YOUR_API_KEY"

# Send an SMS
telnyx.Message.create(
    from_="+15551234567",
    to="+15559876543",
    text="Hello from Telnyx!"
)
```

## Documentation

- [Telnyx Developer Docs](https://developers.telnyx.com)
- [Telnyx API Reference](https://developers.telnyx.com/api)
- [Agent Skills Specification](https://agentskills.io/specification)

## Contributing

We welcome contributions! Please see [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

**Note:** Code examples are auto-generated from Telnyx OpenAPI specs. To fix a code example, please open an issue describing the problem rather than editing the code directly.

## Support

For issues with these skills, please [open an issue](https://github.com/team-telnyx/telnyx-ext-agent-skills/issues) in this repository.

For Telnyx API support, visit [support.telnyx.com](https://support.telnyx.com).

## License

MIT License - see [LICENSE](LICENSE) for details.
