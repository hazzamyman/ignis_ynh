## Authentication

Ignis has **no authentication of its own**. Access is controlled entirely by YunoHost's SSO. The app's permission must never be opened to **visitors** — anyone who can reach the URL could read and write your vault files. Keep it restricted to logged-in YunoHost users (or a subset, via the Permissions panel).

Because YunoHost terminates HTTPS in front of the app, Ignis runs in a secure browser context, so the crypto and clipboard features Obsidian needs (graph view, outline, Sync, etc.) all work.

## Where your data lives

- Vaults: `__DATA_DIR__/vaults` — each sub-directory is a separate vault. Drop an existing Obsidian vault directory here to import it.
- Ignis state (plugin config, sync state): `__DATA_DIR__/data`
- Downloaded Obsidian assets: `__DATA_DIR__/obsidian-app`

The app code and its build output live in `__INSTALL_DIR__`.

## Obsidian downloads

Obsidian is not shipped with this package. On install — and on upgrades that change the pinned Obsidian version — the server downloads Obsidian from its official source. This needs outbound internet access and takes a minute or two.

## Upgrading Obsidian

Each Ignis release is pinned to a known-working Obsidian version. The recommended path is to wait for a package upgrade that bumps it, rather than changing the version manually, since a newer Obsidian may not work cleanly with the compatibility shim.

## Limitations

- Community plugins that rely on Node native modules or `child_process` won't load.
- Server-side "Obsidian Headless" sync is not enabled in this package. Obsidian Sync still works from a logged-in browser tab.
