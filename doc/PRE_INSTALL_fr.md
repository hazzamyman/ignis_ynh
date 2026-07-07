Ignis n'a **aucune authentification intégrée** — il repose entièrement sur le SSO de YunoHost. Lors de l'installation, **n'accordez pas** l'accès aux *visiteurs* ; gardez-le restreint aux utilisateurs YunoHost. Quiconque peut atteindre l'URL peut lire et écrire le coffre.

À la première installation, le serveur **télécharge Obsidian depuis sa source officielle** (Obsidian n'est pas distribué avec ce paquet), la machine a donc besoin d'un accès Internet sortant. L'installation compile aussi l'app depuis les sources (esbuild/Svelte) et peut prendre quelques minutes.

Ignis est conçu pour fonctionner à la **racine d'un domaine** ; l'installation dans un sous-chemin n'est pas prise en charge.
