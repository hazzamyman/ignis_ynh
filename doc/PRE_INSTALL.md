Ignis has **no built-in authentication** — it relies entirely on YunoHost's SSO. During install, **do not** grant access to *visitors*; keep it restricted to YunoHost users. Anyone who can reach the URL can read and write the vault.

On first install the server **downloads Obsidian from its official source** (Obsidian is not distributed with this package), so the machine needs outbound internet access. Installation also builds the app from source (esbuild/Svelte) and can take a few minutes.

Ignis is designed to run at a **domain root**; subpath installation is not supported.
