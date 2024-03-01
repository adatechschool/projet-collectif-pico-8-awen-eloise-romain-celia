Brainstorm

Objectifs pédagogiques
Gestion de la boucle de jeu,
Affichage de sprites,
Gestion des inputs clavier,
Collisions 2D.
Camera 2D,
Gestion des ressources graphiques et sonores.

Choix du projet
Labyrinthe
Mécaniques de jeu
• déplacement
• collision
• on récupère des chatons
• chatons récupérés goes en ligne derrière la maman
• si un chaton se fait attraper 
-> soit il reste bloqué là où il s'est fait attraper et il faut partir le récupérer
-> soit il se déplace random dans la map
• scroll map
• changement de map
• objets interactifs dans la map 
 > gain de vie
 > perte de vie
• points de vie
• clés/chatons pour passer au lvl suivant
• portes

On pourrait le qualifier de "jeu d'aventure en vue du dessus" ou "jeu d'action-aventure top-down". Ces termes devraient vous aider dans vos recherches de tutoriels et de ressources spécifiques à la conception de jeux de ce type. Vous pouvez également inclure des mots-clés tels que "mécaniques de déplacement", "collecte d'objets", "collisions" et "carte interactive" pour affiner davantage vos résultats de recherche.

~ in english ~ 
top-view adventure game
top-down action-adventure game
motion mechanics
item collection
collisions
interactive map

Style
• musique ambient ? 
• maman chat perdu ses chatons dans une forêt


TO-DO
/ déplacements + collisions mur
/ collision maman/méchant -> retour case départ (3 vies si on a le temps)
/ collision chaton/méchant -> chaton reste sur place
/ création d'une map (plusieurs si on a le temps)
/ création des sprites
/ fluidification mvt chat + camera (cf https://www.youtube.com/watch?v=z2A-Cr4ESZ4&t=2268s)
/ collision maman/chaton
/ écran d'accueil 
/ chaton qui suit
/ animation sprites
/ préparer fin = maison avec 2 chiens
/ générique de fin

items : 
    - maman/gris
    - chaton/blanc
    - méchant/rouge
    - mur/vert
    - porte/marron

Répartition des tâches

1 : maman chat - déplacement - collision - déplacement vers une autre partie de la map -- Romain / Célia
2 : ennemi - mouvement ennemi - collision retour case départ -- Awen / Éloïse
3: ajouter chaton -> collision maman/chaton -> le chaton suit
4: collision chaton/méchant

Rétroplanning
mardi 20/02
matin: tutos
awen: tuto gamedevalliance shooter
collision - faire apparaître un ennemi - le déplacer - mettre à jour les vies
éloïse: même tuto
collision (utiliser collision pour coller chaton au chat) - déplacements ennemis - son/action
romain: tuto devalliance jeu d'aventure, tuto snake
camera - dialogue/animation - fonction de suivi
celia- tuto dylan bennet top-down adventure game
sprite (environnement: herbe, de l'eau, des buissons, des rochers, un pont et un chat), découper carte, - déplacements

apm: 

mercredi 21/02
matin: masterclass
apm: tryhard collision ennemi

jeudi 22/02
matin: relecture du code + collision ennemi 
apm: 

lundi 26/02
matin: 
    awen - romain : mettre en commun les codes
    célia : snake + sprite maison
    romain : clés
awen : 2 chiens
éloïse : animation
    
    
apm:
    suite matin (caler anim patounes)

mardi 27/02
matin: 
    romain: anim
    awen: 
        ajouter porte map
        lvl design (couloir qui guide le joueur, ajouter ennemis, portes)
    éloise: réparer chatons
    célia: 
        //écran de fin
        faire sprite chat de dos
     
apm: 

mercredi 28/02
matin:
apm:

jeudi 29/02
matin: IMPREVU
apm: IMPREVU

> points réguliers
> session tuto

Tutos / Ressources
Pico-8 Top-Down Adventure Games : https://www.youtube.com/watch?v=J1wvvbVQ5zo&list=PLdLmU93eWisKpyk1WZywUSYAq5dkCPFIv
Programmer un jeu d'aventure à la Zelda https://www.youtube.com/watch?v=opj-iZG1m94
// ep.2 : caméra et items https://www.youtube.com/watch?v=WXgVVhqUyEU

Jeux du Snake :https://youtu.be/EBflnUJM7Jk

Code
*votre code commenté ici*

fonction collision avec enemies
function (collision(a,b)
        return not (a.x>b.x+8
                            or a.y>b.y+8
                            or a.x+8<b.x
or a.y+8<b.y)
end




Journal de bord
20/02
Matinée tuto en solo : tout le monde a réussi à partir dans des directions diff = compétences diff pour démarrer le projet l'aprem
Aprem : 
    binômes Eloïse/Awen -> collision méchant = reste à mettre en commun le jeu +  le code d'Awen
Romain/Célia -> mvt caméra + collision caillou = fait sur le le jeu
travail en binôme = même pb pas le même code pr awen eloise = compliqué d'avancer et mettre en commun
awen suggère travailler en binôme le matin
romain/célia = même code, même pb, même tuto, chance= tout collait donc ça a marché complémentaire ++ giga cool
journée/10 r=7.5 e=7.5 a=6.5 c=8

21/02
Frustration -> chacun bosse un peu dans son coin et a l'impression de pas avancer

22/02
On a commencé la journée avec la collision de mobs qui fonctionnait pas, frustrés de la veille. Ça a été débloqué l'aprem = grande joie mais ça a demandé quelques réajustements sur la map et la caméra. Nous avons désormais 2 mini-map ok, une avec chaton qui suit et une avec mob. 
Éloise a commencé à essayer de rajouter de nouveaux chatons et Awen de nouveaux mobs. Célia a avancé un peu sur le son mais sans succès.
La suite: réussir à ajouter nouveaux mob et nouveaux chatons, faire que la maman chat ne peut pas changer de mini map sans avoir récup le chaton, fluidifier transition caméra, animation patounes, 

23/02
chatons ok

26/02
La caméra marche Romain content, les chatons marchent presque Éloïse contente, les doggos, le compteur de chat et les portes marchent Awen content, écran d'accueil et jolie maison Célia contente.

27/02
Objectifs atteints sur le planning = point de vie qui marchent, chatons aggro, portes ok, map smooth, musique vénère, déplacement chill, écran accueil+gameover+credits ♥✿☺
La suite : ☆ présentation ☆
tous petits détails : petit bruit victoire/gameover
porte 4 mauvais sens
serpent et requins 

*****************************************************************************************************************************************************************


1. Je débute
Dans un premier temps, nous vous invitons à :

Enrichir les fonctions principales du moteur : _init(), _update() et _draw() ;
Dessiner un tileset puis une carte et l'afficher dans le jeu ;
Dessiner un sprite et le faire apparaître dans le jeu aux coordonnées voulues ;
Déplacer votre sprite avec les touches du clavier ;
Faire en sorte que votre personnage ne sorte pas des bords de la carte et ne puisse pas aller partout, en gérant les collisions grâce aux flags ;
Faire en sorte que la camera suive votre personnage ;
Jouer des sons.

****************************************************************************************************************************************************************
- répartition temps de parole
1. comment on a démarré le projet, déterminé ce qu'on voulait faire (brainstorm), comment on a hiérarchisé les taches.
2. répartition des taches
- début binôme tutos
- s'appuyer sur le journal (sprint)

organisation thématique
1 idée globale 
2 chronologie (organisation)
3 technique
4 design

4 slide
1. cahier des charges, résultat brainstorm
2. hiérarchie et répartition des taches
3. problèmes rencontrés
4. remerciements


☆ Retroplanning ☆




