# Bienvenue sur mon super concurrent de EventBrite !

## La marche à suivre pour récupérer et tester l'application :

### Récupérer le projet en local
```
git clone https://github.com/fr3d100/eventbrite-v1
```
### Charger les gem du Gemfile
```
bundle install
```
### Créer les bases de données
```
rails db:create
```
### Charger le modèle de donnée en base
```
rails db:migrate
```
### Charger des données
```
rails db:seed
```

## La marche à suivre pour lancer les tests de l'application
```
rspec
```
## La marche à suivre pour vérifier que les mails fonctionnent correctement

### Lancer la console
```
rails console
```
### Créer un utilisateur
```
u = User.create(first_name: "John", last_name: "Doe", email: "TONEMAILVALIDE@MAILVALIDE.COM", description: "La super desc de l'utilisateur que tu viens de créer", encrypted_password: "azerty")
```
### Créer un événement
```
e = 
```

### Créer un attendance
```
a = Attendance.create(event: e, user: u, stripe_customer_id: "123")
```

Fait avec :hearts: par @Fred

