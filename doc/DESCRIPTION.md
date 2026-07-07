Ignis lets you run your own Obsidian in a web browser while your vault stays on the YunoHost server — no VNC or remote desktop. It is a compatibility shim that provides browser implementations of the Electron APIs Obsidian relies on, giving a close-to-native Obsidian experience from any browser.

Obsidian itself is **not** distributed with this package: on first install, the server downloads Obsidian directly from its official source.

### Features

- All core Obsidian editor features: Markdown, canvas, bases, and the command palette
- Multi-vault support — create, open, switch, rename, and delete vaults, each openable in its own browser tab
- File upload (ribbon icon, right-click, or drag-and-drop) and file/folder download, including folder-as-ZIP
- Live sync between browser tabs over WebSocket
- Saved workspaces openable in separate tabs via a `?workspace=` URL parameter
- Themes, CSS snippets, and most community plugins built on Obsidian's plugin API
