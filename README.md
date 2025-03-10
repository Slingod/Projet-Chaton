# Project Kitten

## Description du projet

Ce projet est une plateforme e-commerce développée avec **Ruby on Rails 8.0.1** permettant aux utilisateurs de s'inscrire, se connecter, parcourir des produits, gérer leur panier et effectuer des paiements. Un panneau d'administration est également disponible pour gérer les utilisateurs, les produits et les paiements.

## Technologies utilisées

- **Ruby on Rails 8.0.1** : Framework principal
- **Devise** : Gestion de l'authentification des utilisateurs
- **SQLite** : Base de données par défaut de Ruby on Rails
- **Stripe** : Gestion des paiements
- **Active Storage** : Gestion des fichiers et images
- **Bootstrap/TailwindCSS** : Interface utilisateur

---

## Maquette du projet

Vous pouvez consulter la maquette du projet en suivant ce lien :  
[Overflow Whimsical](https://whimsical.com/kiten-project-AHHzuD6TwMHcV5BFaD4gUu)
[Maquette Whimsical](https://whimsical.com/kitten2wireframe-WPbpQbpewkZgZv5faFrJUY)
[Projet Site Web.pptx](https://github.com/user-attachments/files/19105674/Projet.Site.Web.pptx)

---

## Fonctionnalités

### 1. Frontend (Utilisateurs)

#### Accueil

- **À propos** : Présente une description du site.
- **Contact** : Formulaire permettant d'envoyer un message au support.

#### Inscription & Connexion

- **Inscription** :
  - Formulaire d'inscription via Devise.
  - Confirmation d'inscription avec email de validation.
- **Connexion** :
  - Formulaire de connexion sécurisé.
  - Gestion des sessions et mots de passe.

#### Boutique

- **Affichage de la liste des produits** :
  - Vue des produits disponibles avec images et descriptions.
  - Ajout des produits au panier.

#### Panier & Paiement

- **Gestion du panier** :
  - Liste des produits ajoutés.
  - Suppression/modification des quantités.
- **Passer une commande** :
  - Formulaire de paiement avec Stripe.
  - Validation et confirmation de paiement.

---

### 2. Backend (Administration)

#### Gestion des Utilisateurs

- **Liste des utilisateurs**
- **Profils des utilisateurs**
- **Modification des profils**
- **Suppression des comptes**

#### Gestion des Produits

- **Ajout d'un produit** (CRUD : Create)
- **Modification des produits** (CRUD : Update)
- **Suppression des produits** (CRUD : Delete)

#### Gestion des APIs

- **Intégration de Stripe** : Gestion des paiements
- **Gestion des transactions et statuts de paiement**

---

## Installation & Configuration

1. **Cloner le projet** :
   ```sh
   git clone https://github.com/votre-repo/ecommerce-rails.git
   cd ecommerce-rails
   ```
2. **Installer les dépendances** :
   ```sh
   bundle install
   ```
3. **Configurer la base de données** :
   ```sh
   rails db:create db:migrate
   ```
4. **Lancer le serveur** :
   ```sh
   rails server
   ```
5. **Accéder à l'application** :
   - Frontend : `http://localhost:3000`
   - Backend : `http://localhost:3000/admin`

---

## Déploiement avec Kamal

Le projet est déployé via **Kamal**, un outil de déploiement léger et performant pour Ruby on Rails.

1. **Installer Kamal** :
   ```sh
   gem install kamal
   ```
2. **Configurer le déploiement** :
   Modifier le fichier `kamal.yml` avec les informations de votre serveur.
3. **Lancer le déploiement** :
   ```sh
   kamal deploy
   ```

---

## API et Webhooks

L'intégration de Stripe permet de gérer les paiements sécurisés. Voici les principales routes utilisées :

- `POST /checkout` : Créer une session de paiement
- `POST /webhooks/stripe` : Recevoir les événements de paiement

---

## Sécurité et Authentification

- Utilisation de **Devise** pour la gestion des utilisateurs
- **JWT Token** pour l’API (optionnel)
- Gestion des rôles (Admin, Utilisateur)
- CSRF protection

---

## Améliorations futures

- Ajout d'un moteur de recherche
- Système de recommandations de produits
- Gestion des avis et commentaires

---

## Membres du projet

Ce projet est développé par :

- [Houdheyfa Kaddouri](https://github.com/houdheyfakaddouri)
- [Slingod](https://github.com/Slingod)

## Licence

Projet sous licence MIT.
