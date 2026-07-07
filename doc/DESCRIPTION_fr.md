Ignis vous permet d'utiliser votre propre Obsidian dans un navigateur web tout en gardant votre coffre sur le serveur YunoHost — sans VNC ni bureau à distance. C'est une couche de compatibilité qui fournit des implémentations navigateur des API Electron dont Obsidian a besoin, offrant une expérience Obsidian proche du natif depuis n'importe quel navigateur.

Obsidian lui-même n'est **pas** distribué avec ce paquet : lors de la première installation, le serveur télécharge Obsidian directement depuis sa source officielle.

### Fonctionnalités

- Toutes les fonctions principales de l'éditeur Obsidian : Markdown, canvas, bases et palette de commandes
- Prise en charge multi-coffres — créer, ouvrir, basculer, renommer et supprimer des coffres, chacun ouvrable dans son propre onglet
- Téléversement de fichiers (icône du ruban, clic droit ou glisser-déposer) et téléchargement de fichiers/dossiers, y compris un dossier en ZIP
- Synchronisation en direct entre les onglets du navigateur via WebSocket
- Espaces de travail enregistrés ouvrables dans des onglets séparés via un paramètre d'URL `?workspace=`
- Thèmes, extraits CSS et la plupart des plugins communautaires basés sur l'API de plugins d'Obsidian
