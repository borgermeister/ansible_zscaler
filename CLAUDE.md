# CLAUDE.md

Behavioral instructions for Claude when working in this project.

## What this project is

Ansible playbooks and roles for automating Zscaler Internet Access (ZIA) and Zscaler Private Access (ZPA) configuration and management (URL categories, SSL inspection rules, cloud firewall rules, ZPA application/server/segment groups, ZPA access policies, BA certificates, etc.). See [README.md](README.md) for setup (DevBox/UV virtual environment, Zscaler OneAPI credentials, secrets management via Pass/Gopass) and [taskfile.yaml](taskfile.yaml) for the available tasks.

## Session startup

At the start of every conversation:

1. Read `CHANGELOG.md` (if present) and `README.md`
2. Skim `git log --oneline -10` and `git status` to see what's in flight
3. Give a brief summary of what's been done recently and what's pending

## Behavioral guidelines

- Never move, rename, or delete files without explicit permission
- Ask before making structural changes to the repo layout (e.g. reorganizing `roles/` or `playbooks/` directories)
- Technical and concise — no fluff
- **Never commit secrets**: real Zscaler OneAPI/Legacy API `client_id`, `client_secret`, `vanity_domain`, `customer_id` values, Pass/Gopass store contents, or any `host_vars` file that replaces the `community.general.passwordstore`/environment-variable lookups in `inventory/host_vars/localhost/zscaler_provider.yaml` with literal credentials. Verify `.gitignore` covers new sensitive files before they're added.
- Treat destructive or environment-affecting Ansible runs (anything that changes live ZIA/ZPA config, especially `zia_activate_changes` which pushes pending changes live, or any rule/category/policy deletion) as requiring explicit confirmation before running
- Use relative markdown links in docs — no wikilinks
- In chat, match the language the user writes in

## Changelog

Append an entry to `CHANGELOG.md` after any change worth remembering across sessions (new/changed roles or playbooks, URL category/SSL inspection/firewall rule changes, ZPA policy or segment changes, structural changes).

- Skip it for small clarifications or notes that don't change any recorded fact or figure (e.g. adding context without altering data)
- Format: `## [YYYY-MM-DD] <verb> | <short description>` — verb is one of `add`, `update`, `upgrade`, `fix`, `remove`, `reorganise`, `config`, etc.
- Follow the heading with a short detailed description (a few sentences or bullets): what changed, why, and anything a future session would need to know (affected roles/playbooks/rules, follow-up steps). The heading is a scannable index, not the whole entry.
- Whenever `CHANGELOG.md` is updated, commit it (bundled with the change it documents, not as a separate follow-up commit) using `git commit -S` with a meaningful commit message — confirm with the user before committing, per the Git Safety Protocol.
