# Patch français pour Cave Story+

Ceci mettra le jeu Cave Story+ en français en seulement deux clics. Désormais, la traduction est disponible en opensource !

## Installation
### Windows

Télécharger `cspfrpatch.exe` et lancez-le. Par défaut, l'installateur choisira l'installation de Cave Story+ par Steam. Si vous vez eu le jeu autrement (par Epic Games par exemple), indiquez dans quel dossier se trouve le jeu. (là où se trouve `CaveStory+.exe`)

### Linux

Télécharger `cspfr-patch-linux.zip`, le décompresser et mettez le dossier `data` dans le dossier du jeu. Et cliquez "oui" pour remplacer les fichiers. (Il y a aussi un script bash expérimental pour l'installation)

---

## Avancé

Etant moi-même sur Linux, l'installateur est conçu pour lui et il y a des chances qu'il ne marche pas sur Windows. Le mieux, pour tester l'installateur, est de fork ce dépot et utiliser les actions github pour générer le fichier. Un workflow pour le test est disponible en plus du workflow pour les release.

Notez qu'il doit avoir un tag pour les release. Pour ce faire, taper les commandes comme ceci, par exemple, pour une version 1.0.0

```
git add .
git commit -m "Add release workflow"
git tag v1.0.0
git push origin main --tags
```
