setup:
	uv sync

config-check:
	python3 -c 'import json,sys; json.load(open(".mcp/config.json")); print("[OK] .mcp/config.json is valid JSON")'

show-config:
	python3 -c 'import os,sys,json; p=".mcp/config.json"; raw=open(p,"r",encoding="utf-8").read(); print(os.path.expandvars(raw))'

home-env:
	cp .env ~/.env
	@echo "[OK] Copied .env to ~/.env (edit as needed)"

# MCP env sanity check
mcp-env-check:
	@ if [ -z "$$DEEPWRITER_API_KEY" ]; then \
		echo "[WARN] DEEPWRITER_API_KEY is not set"; \
	else \
		echo "[OK] DEEPWRITER_API_KEY is set"; \
	fi

# CC-SDD (Strap Spec Driven Development)
cc-sdd-help:
	scripts/cc-sdd --help

# Pass args via: make cc-sdd ARGS="--cursor --lang en --dry-run"
cc-sdd:
	scripts/cc-sdd $(ARGS)
