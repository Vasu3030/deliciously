Toutes les fonctionnalités ne sont pas présentes. L'application va jusqu'au Task 2.

# Task 1

## Ouvrir le dossier FrontSwiftTaks1

J'ai créer deux boutons qui redirigent à leur ViewController spécifique. Il y a donc deux ViewController.

J'ai ensuite utilisé une CollectionView pour afficher les photos du restaurant. C'est ici que j'ai eu des difficultés sur le Task 1. On peut faire défiler les images sans problème, seul l'indicateur de la slide ne fonctionne pas (PageView), il affiche bien le nombre d'image dans la collection mais ne bouge pas.

Pour les icones des tags, je l'ai prise sur internet et les ai rajouté directement dans les assets.

# Task 2

## Base de données

Création d'une base de données MySQL nommé Deliciously, avec une table Restaurant contenant tout sauf les images et les tags. Les images et tags sont dans les tables Image et Tag avec une foreign key vers l'id du restaurant. J'ai fais cela car un restaurant peut avoir plusieurs images et tags, une seule colonne dans la Restaurant n'aurait pas suffit. De plus je stock dans la table Image, l'url de l'image.

## Api Express

Première utilisation de NodeJs et ce fut très intuitive et simple. J'ai créer quelques routes permettant de récupérer depuis la Bdd, tous les restaurants, un seul restaurant par rapport à son id, toutes les images d'un restaurant par rapport à son id et de même pour récupérer tous ses tags

## Ouvrir le dossier FrontSwiftTaks2

L'application ne se présente pas sous le même format que dans le Task 1, elle est beaucoup plus basique, cependant les données sont dynamiques. 
J'ai un fichier "Api.swift" qui contient toutes les fonctions effectuant les requêtes, elles fonctionnent toutes même si certaines ne sont pas utilisées.
Il y a une première vue, "ViewController", avec un bouton "enter", cette vue me permet en fait d'appeler mon Api afin de stocker tous les restaurants dans une variable. Le bouton "enter" nous mène vers la vue "AllRestaurantsViewController" en passant les données de la variable.
Dans la vue "AllRestaurantsViewController", je récupère les données de la variable passé et les stock dans une autre variable "restaurant", j'utilise ensuite une "TableView" pour afficher un bouton pour chaque restaurant dans la variable "restaurant" avec pour titre le nom du restaurant. Ce bouton, affiche ensuite le popup contenant les données du restaurant spécifique à ce boutton (et ici j'ai eu mal avec tout ce qui est delegate).
Le popup n'affiche que le nom, la description et l'addresse. Les images et tags n'y sont pas, je comptais faire une CollectionView encore pour afficher les images et cette fois les avoir depuis leur url et pour les tags faire une sorte de TableView.
J'ai eu du mal à afficher les données sur l'application, sauf si j'ai mal recherché, on ne peut pas faire de ForEach comme dans SwiftUI et créer dedans, un `Text("\(restaurant.name)")` par exemple, ce qui ferait une liste de tous les restaurants. Au lieu de celà j'ai du avoir recours à TableView.
