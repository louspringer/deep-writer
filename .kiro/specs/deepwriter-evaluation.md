# DeepWriter Evaluation Spec

## Purpose
Establish an evaluation framework for DeepWriter’s MCP integration and long-form authoring capabilities in an engineering workflow.

## Scope
- MCP client configuration and auth flow
- Long-form document generation pipelines
- Integration with IDE/agents and CC-SDD workflows
- Export formats (LaTeX/PDF), visuals (charts, tables, diagrams)

## Stakeholders
- CIO/CTO/Chief Architect (IT strategy, governance)
- Enterprise Architect (standards, integration)
- DevOps/SRE (reliability, CI/CD fit)
- AI Researcher (capabilities, limits)
- Technical Writer (docs pipeline, formatting)
- Product Manager (requirements, outcomes)
- Security/Compliance (data handling, audit)
- Data Engineer/Analyst (data sources, reproducibility)
- LinkedIn Audience (executive+practitioner communications)

## Requirements
- Configure MCP client with optional `DEEPWRITER_API_KEY`
- Generate a 25–50 page sample doc with visuals
- Editable LaTeX and PDF exports without lock-in
- Support 100–150M-token processing per generation (as claimed)
- Non-interactive/CI friendly operation

## Constraints
- Python >= 3.11, Node >= 18
- Local dev with SSH-based Git
- CC-SDD available from sibling `../cc-sdd` or KIRO_CLI override

## Success Criteria
- One-click setup (`make setup && make cc-sdd-help`)
- End-to-end doc produced with correct structure and visuals
- No proprietary lock-in; all artifacts editable in repo
- Clear runtime logs and reproducible results

## Milestones
1. MCP config validated and committed
2. CC-SDD integration verified (wrapper + Make)
3. Draft spec artifacts created
4. Long-form demo document generated and exported

## References
- DeepWriter Docs: https://docs.deepwriter.com/
- CC-SDD Templates (sibling checkout)

