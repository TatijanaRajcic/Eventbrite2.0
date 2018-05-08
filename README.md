Hello!

Pour ce projet, il fallait retravailler notre rendu précédent pour y ajouter la gem Devise qui permet de simplifier l'authentification de nos Users.

Avant tout:
- Git clone ou download ce dossier
- Fais bundle install --without production

Tips: 
- Quand tu essaieras Stripe, il faudra pour que cela marche, utiliser soit 1) tes clés ou 2) les clés tests fournies directement par le site et accessibles au public, que voici:

STRIPE_PUBLISHABLE_KEY="pk_test_6pRNASCoBOKtIshFeQd4XMUh"
STRIPE_SECRET_KEY="sk_test_BQokikJOvBiI2HlWgH4olfQ2"

- Quand tu rentres un numéro de carte bancaire, tu peux utiliser le numéro de carte fictif fourni par Stripe, à savoir:
4242 4242 4242 4242

Voici le lien de mon app Heroku: https://mysterious-falls-62710.herokuapp.com/
