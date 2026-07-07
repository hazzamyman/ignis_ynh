## Authentification

Ignis n'a **aucune authentification propre**. L'accès est entièrement contrôlé par le SSO de YunoHost. La permission de l'app ne doit jamais être ouverte aux **visiteurs** — quiconque peut atteindre l'URL pourrait lire et écrire les fichiers de votre coffre. Gardez-la restreinte aux utilisateurs YunoHost connectés (ou à un sous-ensemble, via le panneau Permissions).

Comme YunoHost termine le HTTPS devant l'app, Ignis s'exécute dans un contexte navigateur sécurisé : les fonctions de cryptographie et de presse-papiers dont Obsidian a besoin (vue graphe, plan, Sync, etc.) fonctionnent toutes.

## Où sont vos données

- Coffres : `__DATA_DIR__/vaults` — chaque sous-dossier est un coffre distinct. Déposez-y un dossier de coffre Obsidian existant pour l'importer.
- État d'Ignis (config des plugins, état de sync) : `__DATA_DIR__/data`
- Fichiers Obsidian téléchargés : `__DATA_DIR__/obsidian-app`

Le code de l'app et sa build se trouvent dans `__INSTALL_DIR__`.

## Téléchargements d'Obsidian

Obsidian n'est pas fourni avec ce paquet. À l'installation — et lors des mises à jour qui changent la version d'Obsidian épinglée — le serveur télécharge Obsidian depuis sa source officielle. Cela nécessite un accès Internet sortant et prend une à deux minutes.

## Mise à jour d'Obsidian

Chaque version d'Ignis est épinglée à une version d'Obsidian connue pour fonctionner. Il est recommandé d'attendre une mise à jour du paquet qui la fait évoluer plutôt que de changer la version manuellement, car une version plus récente d'Obsidian peut ne pas fonctionner correctement avec la couche de compatibilité.

## Limitations

- Les plugins communautaires qui dépendent de modules natifs Node ou de `child_process` ne se chargeront pas.
- La synchronisation « Obsidian Headless » côté serveur n'est pas activée dans ce paquet. Obsidian Sync fonctionne toujours depuis un onglet de navigateur connecté.
