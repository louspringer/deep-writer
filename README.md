# Deep Writer — MCP Evaluation (nkllon/deep-writer)

Evaluation repo for DeepWriter’s MCP integration and requisite metadata/config.

Docs reference: https://docs.deepwriter.com/ (see “DeepWriter MCP”).

## Goals
- Capture MCP client config for DeepWriter (no key required to view config)
- Provide local setup via uv
- Prepare env var for API key if required: `DEEPWRITER_API_KEY`

## Quickstart
1) Install uv: `curl -LsSf https://astral.sh/uv/install.sh | sh`
2) From repo root:
```bash
uv sync
cp .env.example .env   # add your key if/when available
make config-check
```

## MCP Configuration
- File: `.mcp/config.json`
- Server name: `deepwriter`
- Auth: Bearer token via env `DEEPWRITER_API_KEY` (placeholder until key is provisioned)

## Commands
```bash
make config-check     # validate JSON structure
make show-config      # print resolved MCP config with env placeholders
```

## Notes
- If DeepWriter MCP requires a specific base URL or CLI command, replace placeholders in `.mcp/config.json` once confirmed from docs or API onboarding email.
- GitHub: repository intended at `nkllon/deep-writer`.

## References
- DeepWriter Docs: https://docs.deepwriter.com/

## License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
