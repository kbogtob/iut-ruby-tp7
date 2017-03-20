---
layout: post
title: "TP7, Codex !"
categories: ruby-2a
---

# Codex

Dans ce TP, on va partir d'un code existant que vous trouverez ici: https://github.com/kbogtob/iut-ruby-tp7

Le but du TP est d'écrire une application qui permet de journaliser ses aventures de développeurs.

## 0. Pré-requis

Pour ce projet, on aura besoin de l'application bundle, qui est fournie avec la gem bundler. Vous devriez donc commencer par installer la gem bundler en local !

### Installer des gems

* [Introduction](https://www.ruby-lang.org/en/libraries/).
* [Doc officielle de référence](http://guides.rubygems.org/command-reference/)
* Bien faire une installation locale (faut chercher un peu :).
* Aide: Il vous faut apprendre à votre système comment accéder à l'extérieur
(dans le cadre de l'IUT, un proxy web).

```sh
export HTTPS_PROXY=193.49.118.36:8080
export HTTP_PROXY=193.49.118.36:8080
```

* Regarder l'option `--user-install`

## 1. Consulter le code existant

* Essayez de comprendre comment les classes existantes fonctionnent :
  * Entry : Classe qui modélise une entrée dans le journal
  * Loader : Classe qui charge des entries depuis un format de fichier spécifique
  * Serializer : Classe qui sérialise des entries vers un format de fichier spécifique
* Lisez les commentaires et les specs.
* Essayez la commande suivante :
```sh
rspec
```
Que se passe-t-il ? Pourquoi ?

Comment résoudre le problème ? [Bundler](http://bundler.io/v1.12/#getting-started)
* Exceptionnellement, j'ai ajouté dans le dépôt un fichier .rspec pour les avoir des options rspec par défaut. Prenez connaissance de son contenu.

## 2. Tâches préliminaires

### 2.1 Vérification
* Pour être sûr que vous avez bien compris, comment pourrait-on casser le fonctionnement de la classe Loader sans casser les tests unitaires ? (indice: Tout est une histoire de cardinalité).

* Remettez le code comme il était

```sh
# SI BESOIN
git checkout .
```

### 2.2 Petite amélioration
* Ecrivez les specs pour que la classe Entry recoive un paramètre _date_ au format string (ou DateTime, bien entendu) et qu'elle le convertisse bien en DateTime. (indice: Consulter la documentation de DateTime ou les specs du Loader)

* Vérifiez que les specs ne passent pas.

* Ecrivez l'implémentation de la classe Entry pour que les specs passent.

* Vérifiez que les specs passent.

Félicitations, vous avez développé votre première fonctionnalité en TDD !

>It has long been asserted that Test Driven Development (TDD) is the equivalent of double-entry bookkeeping. There are some undeniable parallels. Under the discipline of TDD every desired behavior is written twice; once in test code that verifies the behavior, and once in production code that exhibits that behavior. The two streams of code are written concurrently, and follow complimentary, yet separate execution pathways until they converge in the count of defects - a count that must be zero.
- Oncle Bob (http://blog.cleancoder.com/uncle-bob/2017/03/07/SymmetryBreaking.html)

## 3. Au boulot !

### 3.1 Implémentez une classe _Journal_ en TDD.
Indications :
* A : Ecrivez une classe vide
* B : Ajoutez les specs d'une méthode
* C : Ecrivez la
* D : Une fois tout au vert, goto B

Méthodes :
* #initialize: Constructeur prenant en paramètre des entries
* #entries: Getter sur les entries
* .load: Méthode de classe qui fait appelle à la classe Loader pour charger des entries depuis un fichier et initialiser un journal. Le premier bougre qui lit réellement le fichier ici aura le droit aux orties ! On mock !
* #count: Renvoie le nombre d'entries dans le journal
* #add_entry(entry): Ajouter une entry dans le journal
* #remove_entry(entry_id): Supprime une entry via son champ id

### 3.2 Implémentez un client Thor!
[THOOOOR](http://i.imgur.com/YmGKkqs.gif)

* Lisez rapidement la documentation de [Thor](http://whatisthor.com/)
* Ajoutez la gem 'thor' au projet (via le Gemfile)
* Ecrivez un client thor et testez manuellement votre programme.

## 4. Bonus for those delicious bonus points

* Ecrivez les tests unitaires de la classe Serializer !

