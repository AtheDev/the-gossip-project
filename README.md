# The Gossip Project en Sinatra

The Hacking Project est une chouette formation, où la communauté est reine. Il se passe plein de choses à Paris, Lyon, Montpellier, Bordeaux et c'est dur de connaître tous les ragots. Nous allons donc créer une application où tout le monde va pouvoir ajouter des potins sur ses camarades moussaillons.

## Fonctionnalités principales de l'application web :

	1. La page d'accueil du site affiche tous les potins que nous avons en base.
	2. Cette page d'accueil donne un lien vers un formulaire où quiconque pourra ajouter un potin en base.
	3. Chaque potin a une page dédiée.

## 0. Mode d'emploi

	1. Cloner le repo
	2. Faire un `$ bundle install`
	3. Taper la commande `$ shotgun -p 4567`
	4. Aller sur <link>http://localhost:4567/</link>

## 1. Page d'acceuil
	Cette page (`lib/views/index.erb`) affiche tous les potins qui se trouvent dans la base `db/gossip.csv`.
	Chaque potin affiché contient un lien vers la page d'affichage du potin.
	En bas de page, il y a un lien qui mène vers la page de création d'un nouveau potin.

## 2. Page de création d'un nouveau potin
	Cette page (`lib/views/new_gossip.erb`) contient un formulaire qui permet de créer un nouveau potin dans la base `db/gossip.csv`.

## 3. Page d'affichage d'un potin
	Cette page (`lib/views/show.erb`) affiche le contenu et l'auteur du potin.
	Elle contient un lien vers une page de modification d'un potin.
	En bas de page, on affiche tous les commentaires sur le potin de la page. Ces commentaires se trouvent dans la base `db/gossip_comment.csv`.
	Il est également possible d'ajouter en base un nouveau commentaire sur ce potin	en remplissant le formulaire "Ajouter un nouveau commentaire".

## 4. Page de modification d'un potin
	Cette page (`lib/views/edit.rb`) permet de modifier le contenu en base du potin indiqué.

## 5. Base de données de potins
	Les potins sont enregistrés dans la base `db/gossip.csv`
	Chaque potin a deux attributs : l'auteur et le contenu du potin.

## 6. Base de données de commentaires
	Les commentaires pour les potins sont enregistrés dans la base `db/gossip_comment.csv`.
	Chaque commentaire a deux attributs : l'id du potin concerné et le contenu du commentaire.

## 7. Mise en page
	Utilisation du thème "Journal" de Bootswatch.




