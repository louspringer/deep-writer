setup:
	uv sync

config-check:
	python - << PY
import json,sys; json.load(open(.mcp/config.json)); print([OK]

home-env:
	cp .env ~/.env
	@echo "[OK] Copied .env to ~/.env (edit as needed)"

# CC-SDD (Strap Spec Driven Development)
cc-sdd-help:
	scripts/cc-sdd --help

# Pass args via: make cc-sdd ARGS="--cursor --lang en --dry-run"
cc-sdd:
	scripts/cc-sdd $(ARGS)
